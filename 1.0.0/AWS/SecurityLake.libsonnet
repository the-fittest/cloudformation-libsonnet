local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AwsLogSource: {
    '#': d.pkg(
      name='AwsLogSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityLake.libsonnet',
      help='Resource Type definition for AWS::SecurityLake::AwsLogSource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityLake::AwsLogSource Resource
        * DataLakeArn The ARN for the data lake.
        * SourceVersion The version for a AWS source. This must be a Regionally unique value.
        * SourceName The name for a AWS source. This must be a Regionally unique value.
      |||,
      args=[
        d.arg('DataLakeArn', 'd.T.string'),
        d.arg('SourceVersion', 'd.T.string'),
        d.arg('SourceName', 'd.T.string'),
      ]
    ),
    new(
      DataLakeArn,
      SourceVersion,
      SourceName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DataLakeArn) : 'DataLakeArn must be a string',
        DataLakeArn: DataLakeArn,
        assert std.isString(SourceVersion) : 'SourceVersion must be a string',
        SourceVersion: SourceVersion,
        assert std.isString(SourceName) : 'SourceName must be a string',
        SourceName: SourceName,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityLake::AwsLogSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccounts': d.fn('`withAccounts` Accounts ', [d.arg('Accounts', d.T.array)]),
    withAccounts(Accounts): {
      assert std.isArray(Accounts) : 'Accounts must be a array',
      Properties+::: { Accounts: Accounts },
    },
  },
  DataLake: {
    '#': d.pkg(
      name='DataLake',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityLake.libsonnet',
      help='Resource Type definition for AWS::SecurityLake::DataLake',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityLake::DataLake Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SecurityLake::DataLake',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEncryptionConfiguration': d.fn('`withEncryptionConfiguration` EncryptionConfiguration ', [d.arg('EncryptionConfiguration', d.T.object)]),
    withEncryptionConfiguration(EncryptionConfiguration): {
      assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
      Properties+::: { EncryptionConfiguration: EncryptionConfiguration },
    },
    '#withLifecycleConfiguration': d.fn('`withLifecycleConfiguration` LifecycleConfiguration ', [d.arg('LifecycleConfiguration', d.T.object)]),
    withLifecycleConfiguration(LifecycleConfiguration): {
      assert std.isObject(LifecycleConfiguration) : 'LifecycleConfiguration must be a object',
      Properties+::: { LifecycleConfiguration: LifecycleConfiguration },
    },
    '#withReplicationConfiguration': d.fn('`withReplicationConfiguration` ReplicationConfiguration ', [d.arg('ReplicationConfiguration', d.T.object)]),
    withReplicationConfiguration(ReplicationConfiguration): {
      assert std.isObject(ReplicationConfiguration) : 'ReplicationConfiguration must be a object',
      Properties+::: { ReplicationConfiguration: ReplicationConfiguration },
    },
    '#withMetaStoreManagerRoleArn': d.fn('`withMetaStoreManagerRoleArn` MetaStoreManagerRoleArn ', [d.arg('MetaStoreManagerRoleArn', d.T.string)]),
    withMetaStoreManagerRoleArn(MetaStoreManagerRoleArn): {
      assert std.isString(MetaStoreManagerRoleArn) : 'MetaStoreManagerRoleArn must be a string',
      Properties+::: { MetaStoreManagerRoleArn: MetaStoreManagerRoleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withS3BucketArn': d.fn('`withS3BucketArn` S3BucketArn ', [d.arg('S3BucketArn', d.T.string)]),
    withS3BucketArn(S3BucketArn): {
      assert std.isString(S3BucketArn) : 'S3BucketArn must be a string',
      Properties+::: { S3BucketArn: S3BucketArn },
    },
  },
  Subscriber: {
    '#': d.pkg(
      name='Subscriber',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityLake.libsonnet',
      help='Resource Type definition for AWS::SecurityLake::Subscriber',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityLake::Subscriber Resource
        * AccessTypes 
        * DataLakeArn The ARN for the data lake.
        * Sources The supported AWS services from which logs and events are collected.
        * SubscriberIdentity The AWS identity used to access your data.
        * SubscriberName The name of your Security Lake subscriber account.
      |||,
      args=[
        d.arg('AccessTypes', 'd.T.array'),
        d.arg('DataLakeArn', 'd.T.string'),
        d.arg('Sources', 'd.T.array'),
        d.arg('SubscriberIdentity', 'd.T.object'),
        d.arg('SubscriberName', 'd.T.string'),
      ]
    ),
    new(
      AccessTypes,
      DataLakeArn,
      Sources,
      SubscriberIdentity,
      SubscriberName,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(AccessTypes) : 'AccessTypes must be a array',
        AccessTypes: AccessTypes,
        assert std.isString(DataLakeArn) : 'DataLakeArn must be a string',
        DataLakeArn: DataLakeArn,
        assert std.isArray(Sources) : 'Sources must be a array',
        Sources: Sources,
        assert std.isObject(SubscriberIdentity) : 'SubscriberIdentity must be a object',
        SubscriberIdentity: SubscriberIdentity,
        assert std.isString(SubscriberName) : 'SubscriberName must be a string',
        SubscriberName: SubscriberName,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityLake::Subscriber',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSubscriberDescription': d.fn('`withSubscriberDescription` SubscriberDescription ', [d.arg('SubscriberDescription', d.T.string)]),
    withSubscriberDescription(SubscriberDescription): {
      assert std.isString(SubscriberDescription) : 'SubscriberDescription must be a string',
      Properties+::: { SubscriberDescription: SubscriberDescription },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withResourceShareArn': d.fn('`withResourceShareArn` ResourceShareArn ', [d.arg('ResourceShareArn', d.T.string)]),
    withResourceShareArn(ResourceShareArn): {
      assert std.isString(ResourceShareArn) : 'ResourceShareArn must be a string',
      Properties+::: { ResourceShareArn: ResourceShareArn },
    },
    '#withResourceShareName': d.fn('`withResourceShareName` ResourceShareName ', [d.arg('ResourceShareName', d.T.string)]),
    withResourceShareName(ResourceShareName): {
      assert std.isString(ResourceShareName) : 'ResourceShareName must be a string',
      Properties+::: { ResourceShareName: ResourceShareName },
    },
    '#withSubscriberRoleArn': d.fn('`withSubscriberRoleArn` SubscriberRoleArn ', [d.arg('SubscriberRoleArn', d.T.string)]),
    withSubscriberRoleArn(SubscriberRoleArn): {
      assert std.isString(SubscriberRoleArn) : 'SubscriberRoleArn must be a string',
      Properties+::: { SubscriberRoleArn: SubscriberRoleArn },
    },
    '#withS3BucketArn': d.fn('`withS3BucketArn` S3BucketArn ', [d.arg('S3BucketArn', d.T.string)]),
    withS3BucketArn(S3BucketArn): {
      assert std.isString(S3BucketArn) : 'S3BucketArn must be a string',
      Properties+::: { S3BucketArn: S3BucketArn },
    },
    '#withSubscriberArn': d.fn('`withSubscriberArn` SubscriberArn ', [d.arg('SubscriberArn', d.T.string)]),
    withSubscriberArn(SubscriberArn): {
      assert std.isString(SubscriberArn) : 'SubscriberArn must be a string',
      Properties+::: { SubscriberArn: SubscriberArn },
    },
  },
  SubscriberNotification: {
    '#': d.pkg(
      name='SubscriberNotification',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityLake.libsonnet',
      help='Resource Type definition for AWS::SecurityLake::SubscriberNotification',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityLake::SubscriberNotification Resource
        * SubscriberArn The ARN for the subscriber
        * NotificationConfiguration 
      |||,
      args=[
        d.arg('SubscriberArn', 'd.T.string'),
        d.arg('NotificationConfiguration', 'd.T.object'),
      ]
    ),
    new(
      SubscriberArn,
      NotificationConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubscriberArn) : 'SubscriberArn must be a string',
        SubscriberArn: SubscriberArn,
        assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
        NotificationConfiguration: NotificationConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityLake::SubscriberNotification',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSubscriberEndpoint': d.fn('`withSubscriberEndpoint` SubscriberEndpoint ', [d.arg('SubscriberEndpoint', d.T.string)]),
    withSubscriberEndpoint(SubscriberEndpoint): {
      assert std.isString(SubscriberEndpoint) : 'SubscriberEndpoint must be a string',
      Properties+::: { SubscriberEndpoint: SubscriberEndpoint },
    },
  },
}
