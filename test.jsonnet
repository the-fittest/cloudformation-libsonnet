local AWS = import '1.0.0/AWS/main.libsonnet';

local LogGroup = AWS.Logs.LogGroup;
local Role = AWS.IAM.Role;
local Parameter = AWS.SSM.Parameter;

local StateMachineId = 'Tadaaa';

{
  AWSTemplateFormatVersion: '2010-09-09',
  Transform: 'AWS::Serverless-2016-10-31',
  Resources: {
    [StateMachineId + 'LogGroup']:
      LogGroup.new()
      + LogGroup.withLogGroupName('/aws/vendedlogs/states/TadaaStateMachine')
      + LogGroup.withRetentionInDays(1)
    ,
    [StateMachineId + 'Parameter']:
      Parameter.new(
        Value='12345',
        Type='Beany')
      + Parameter.withName('/dev/nasd')
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
      + Role.withPolicies([
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