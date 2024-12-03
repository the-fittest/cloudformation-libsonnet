local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  LogAnomalyDetectionIntegration: {
    '#': d.pkg(
      name='LogAnomalyDetectionIntegration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DevOpsGuru.libsonnet',
      help='This resource schema represents the LogAnomalyDetectionIntegration resource in the Amazon DevOps Guru.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DevOpsGuru::LogAnomalyDetectionIntegration Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::DevOpsGuru::LogAnomalyDetectionIntegration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
  },
  NotificationChannel: {
    '#': d.pkg(
      name='NotificationChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DevOpsGuru.libsonnet',
      help='This resource schema represents the NotificationChannel resource in the Amazon DevOps Guru.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DevOpsGuru::NotificationChannel Resource
        * Config 
      |||,
      args=[
        d.arg('Config', 'd.T.object'),
      ]
    ),
    new(
      Config,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Config) : 'Config must be a object',
        Config: Config,
      },
      DependsOn:: [],
      Type: 'AWS::DevOpsGuru::NotificationChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ResourceCollection: {
    '#': d.pkg(
      name='ResourceCollection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DevOpsGuru.libsonnet',
      help='This resource schema represents the ResourceCollection resource in the Amazon DevOps Guru.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DevOpsGuru::ResourceCollection Resource
        * ResourceCollectionFilter 
      |||,
      args=[
        d.arg('ResourceCollectionFilter', 'd.T.object'),
      ]
    ),
    new(
      ResourceCollectionFilter,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ResourceCollectionFilter) : 'ResourceCollectionFilter must be a object',
        ResourceCollectionFilter: ResourceCollectionFilter,
      },
      DependsOn:: [],
      Type: 'AWS::DevOpsGuru::ResourceCollection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResourceCollectionType': d.fn('`withResourceCollectionType` ResourceCollectionType ', [d.arg('ResourceCollectionType', d.T.string)]),
    withResourceCollectionType(ResourceCollectionType): {
      assert std.isString(ResourceCollectionType) : 'ResourceCollectionType must be a string',
      assert ResourceCollectionType == 'AWS_CLOUD_FORMATION' || ResourceCollectionType == 'AWS_TAGS' : "ResourceCollectionType must be either 'AWS_CLOUD_FORMATION' or 'AWS_TAGS'",
      Properties+::: { ResourceCollectionType: ResourceCollectionType },
    },
  },
}
