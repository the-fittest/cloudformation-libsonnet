local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SystemsManagerSAP.libsonnet',
      help='Resource schema for AWS::SystemsManagerSAP::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SystemsManagerSAP::Application Resource
        * ApplicationId 
        * ApplicationType 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('ApplicationType', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
      ApplicationType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(ApplicationType) : 'ApplicationType must be a string',
        assert ApplicationType == 'HANA' || ApplicationType == 'SAP_ABAP' : "ApplicationType must be either 'HANA' or 'SAP_ABAP'",
        ApplicationType: ApplicationType,
      },
      DependsOn:: [],
      Type: 'AWS::SystemsManagerSAP::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCredentials': d.fn('`withCredentials` Credentials ', [d.arg('Credentials', d.T.array)]),
    withCredentials(Credentials): {
      assert std.isArray(Credentials) : 'Credentials must be a array',
      Properties+::: { Credentials: Credentials },
    },
    '#withInstances': d.fn('`withInstances` Instances ', [d.arg('Instances', d.T.array)]),
    withInstances(Instances): {
      assert std.isArray(Instances) : 'Instances must be a array',
      Properties+::: { Instances: Instances },
    },
    '#withSapInstanceNumber': d.fn('`withSapInstanceNumber` SapInstanceNumber ', [d.arg('SapInstanceNumber', d.T.string)]),
    withSapInstanceNumber(SapInstanceNumber): {
      assert std.isString(SapInstanceNumber) : 'SapInstanceNumber must be a string',
      Properties+::: { SapInstanceNumber: SapInstanceNumber },
    },
    '#withSid': d.fn('`withSid` Sid ', [d.arg('Sid', d.T.string)]),
    withSid(Sid): {
      assert std.isString(Sid) : 'Sid must be a string',
      Properties+::: { Sid: Sid },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDatabaseArn': d.fn('`withDatabaseArn` DatabaseArn ', [d.arg('DatabaseArn', d.T.string)]),
    withDatabaseArn(DatabaseArn): {
      assert std.isString(DatabaseArn) : 'DatabaseArn must be a string',
      Properties+::: { DatabaseArn: DatabaseArn },
    },
  },
}
