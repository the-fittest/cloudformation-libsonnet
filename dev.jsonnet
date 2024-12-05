local AWS = import '1.0.0/AWS/main.libsonnet';

local LogGroup = AWS.Logs.LogGroup;
local Role = AWS.IAM.Role;
local Parameter = AWS.SSM.Parameter;
local Bucket = AWS.S3.Bucket;
local Bot = AWS.Lex.Bot;

local StateMachineId = 'FooBar';

{
  AWSTemplateFormatVersion: '2010-09-09',
  Transform: 'AWS::Serverless-2016-10-31',
  Resources: {
    [StateMachineId + 'LogGroup']:
      LogGroup.new()
      + LogGroup.setLogGroupName('/aws/vendedlogs/states/' + StateMachineId + 'StateMachine')
      + LogGroup.setRetentionInDays(1)
    ,
    [StateMachineId + 'Parameter']:
      Parameter.new(
        Value='12345',
        Type='String'
      )
      + Parameter.setName('/dev/nasd')
    ,
    [StateMachineId + 'StateMachineRole']:
      Role.new(
        AssumeRolePolicyDocument={
          Version: '2012-10-17',
          Statement: [
            {
              Effect: 'Allow',
              Principal: {
                Service: 'states.amazonaws.com',
              },
              Action: 'sts:AssumeRole',
            },
          ],
        }
      )
      + Role.setPolicies([
        {
          PolicyName: 'CloudWatchLogsDeliveryFullAccessPolicy',
          PolicyDocument: {
            Statement: [
              {
                Effect: 'Allow',
                Action: [
                  'logs:CreateLogDelivery',
                  'logs:DeleteLogDelivery',
                  'logs:DescribeLogGroups',
                  'logs:DescribeResourcePolicies',
                  'logs:GetLogDelivery',
                  'logs:ListLogDeliveries',
                  'logs:PutResourcePolicy',
                  'logs:UpdateLogDelivery',
                ],
                Resource: [
                  '*',
                ],
              },
            ],
          },
        },
      ]),
  },
}
