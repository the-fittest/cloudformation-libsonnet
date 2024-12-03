local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Ledger: {
    '#': d.pkg(
      name='Ledger',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QLDB.libsonnet',
      help='Resource Type definition for AWS::QLDB::Ledger',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QLDB::Ledger Resource
        * PermissionsMode 
      |||,
      args=[
        d.arg('PermissionsMode', 'd.T.string'),
      ]
    ),
    new(
      PermissionsMode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PermissionsMode) : 'PermissionsMode must be a string',
        PermissionsMode: PermissionsMode,
      },
      DependsOn:: [],
      Type: 'AWS::QLDB::Ledger',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeletionProtection': d.fn('`withDeletionProtection` DeletionProtection ', [d.arg('DeletionProtection', d.T.boolean)]),
    withDeletionProtection(DeletionProtection): {
      assert std.isBoolean(DeletionProtection) : 'DeletionProtection must be a boolean',
      Properties+::: { DeletionProtection: DeletionProtection },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withKmsKey': d.fn('`withKmsKey` KmsKey ', [d.arg('KmsKey', d.T.string)]),
    withKmsKey(KmsKey): {
      assert std.isString(KmsKey) : 'KmsKey must be a string',
      Properties+::: { KmsKey: KmsKey },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Stream: {
    '#': d.pkg(
      name='Stream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/QLDB.libsonnet',
      help='Resource schema for AWS::QLDB::Stream.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::QLDB::Stream Resource
        * LedgerName 
        * StreamName 
        * RoleArn 
        * KinesisConfiguration 
        * InclusiveStartTime 
      |||,
      args=[
        d.arg('LedgerName', 'd.T.string'),
        d.arg('StreamName', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('KinesisConfiguration', 'd.T.object'),
        d.arg('InclusiveStartTime', 'd.T.string'),
      ]
    ),
    new(
      LedgerName,
      StreamName,
      RoleArn,
      KinesisConfiguration,
      InclusiveStartTime,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LedgerName) : 'LedgerName must be a string',
        LedgerName: LedgerName,
        assert std.isString(StreamName) : 'StreamName must be a string',
        StreamName: StreamName,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(KinesisConfiguration) : 'KinesisConfiguration must be a object',
        KinesisConfiguration: KinesisConfiguration,
        assert std.isString(InclusiveStartTime) : 'InclusiveStartTime must be a string',
        InclusiveStartTime: InclusiveStartTime,
      },
      DependsOn:: [],
      Type: 'AWS::QLDB::Stream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withExclusiveEndTime': d.fn('`withExclusiveEndTime` ExclusiveEndTime ', [d.arg('ExclusiveEndTime', d.T.string)]),
    withExclusiveEndTime(ExclusiveEndTime): {
      assert std.isString(ExclusiveEndTime) : 'ExclusiveEndTime must be a string',
      Properties+::: { ExclusiveEndTime: ExclusiveEndTime },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
