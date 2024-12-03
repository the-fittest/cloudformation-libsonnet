local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ConnectionAlias: {
    '#': d.pkg(
      name='ConnectionAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpaces.libsonnet',
      help='Resource Type definition for AWS::WorkSpaces::ConnectionAlias',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpaces::ConnectionAlias Resource
        * ConnectionString 
      |||,
      args=[
        d.arg('ConnectionString', 'd.T.string'),
      ]
    ),
    new(
      ConnectionString,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectionString) : 'ConnectionString must be a string',
        ConnectionString: ConnectionString,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpaces::ConnectionAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociations': d.fn('`withAssociations` Associations ', [d.arg('Associations', d.T.array)]),
    withAssociations(Associations): {
      assert std.isArray(Associations) : 'Associations must be a array',
      Properties+::: { Associations: Associations },
    },
    '#withAliasId': d.fn('`withAliasId` AliasId ', [d.arg('AliasId', d.T.string)]),
    withAliasId(AliasId): {
      assert std.isString(AliasId) : 'AliasId must be a string',
      Properties+::: { AliasId: AliasId },
    },
    '#withConnectionAliasState': d.fn('`withConnectionAliasState` ConnectionAliasState ', [d.arg('ConnectionAliasState', d.T.string)]),
    withConnectionAliasState(ConnectionAliasState): {
      assert std.isString(ConnectionAliasState) : 'ConnectionAliasState must be a string',
      assert ConnectionAliasState == 'CREATING' || ConnectionAliasState == 'CREATED' || ConnectionAliasState == 'DELETING' : "ConnectionAliasState must be either 'CREATING' or 'CREATED' or 'DELETING'",
      Properties+::: { ConnectionAliasState: ConnectionAliasState },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Workspace: {
    '#': d.pkg(
      name='Workspace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpaces.libsonnet',
      help='Resource Type definition for AWS::WorkSpaces::Workspace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpaces::Workspace Resource
        * BundleId 
        * DirectoryId 
        * UserName 
      |||,
      args=[
        d.arg('BundleId', 'd.T.string'),
        d.arg('DirectoryId', 'd.T.string'),
        d.arg('UserName', 'd.T.string'),
      ]
    ),
    new(
      BundleId,
      DirectoryId,
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BundleId) : 'BundleId must be a string',
        BundleId: BundleId,
        assert std.isString(DirectoryId) : 'DirectoryId must be a string',
        DirectoryId: DirectoryId,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpaces::Workspace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRootVolumeEncryptionEnabled': d.fn('`withRootVolumeEncryptionEnabled` RootVolumeEncryptionEnabled ', [d.arg('RootVolumeEncryptionEnabled', d.T.boolean)]),
    withRootVolumeEncryptionEnabled(RootVolumeEncryptionEnabled): {
      assert std.isBoolean(RootVolumeEncryptionEnabled) : 'RootVolumeEncryptionEnabled must be a boolean',
      Properties+::: { RootVolumeEncryptionEnabled: RootVolumeEncryptionEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserVolumeEncryptionEnabled': d.fn('`withUserVolumeEncryptionEnabled` UserVolumeEncryptionEnabled ', [d.arg('UserVolumeEncryptionEnabled', d.T.boolean)]),
    withUserVolumeEncryptionEnabled(UserVolumeEncryptionEnabled): {
      assert std.isBoolean(UserVolumeEncryptionEnabled) : 'UserVolumeEncryptionEnabled must be a boolean',
      Properties+::: { UserVolumeEncryptionEnabled: UserVolumeEncryptionEnabled },
    },
    '#withVolumeEncryptionKey': d.fn('`withVolumeEncryptionKey` VolumeEncryptionKey ', [d.arg('VolumeEncryptionKey', d.T.string)]),
    withVolumeEncryptionKey(VolumeEncryptionKey): {
      assert std.isString(VolumeEncryptionKey) : 'VolumeEncryptionKey must be a string',
      Properties+::: { VolumeEncryptionKey: VolumeEncryptionKey },
    },
    '#withWorkspaceProperties': d.fn('`withWorkspaceProperties` WorkspaceProperties ', [d.arg('WorkspaceProperties', d.T.object)]),
    withWorkspaceProperties(WorkspaceProperties): {
      assert std.isObject(WorkspaceProperties) : 'WorkspaceProperties must be a object',
      Properties+::: { WorkspaceProperties: WorkspaceProperties },
    },
  },
  WorkspacesPool: {
    '#': d.pkg(
      name='WorkspacesPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpaces.libsonnet',
      help='Resource Type definition for AWS::WorkSpaces::WorkspacesPool',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpaces::WorkspacesPool Resource
        * PoolName 
        * BundleId 
        * DirectoryId 
        * Capacity 
      |||,
      args=[
        d.arg('PoolName', 'd.T.string'),
        d.arg('BundleId', 'd.T.string'),
        d.arg('DirectoryId', 'd.T.string'),
        d.arg('Capacity', 'd.T.object'),
      ]
    ),
    new(
      PoolName,
      BundleId,
      DirectoryId,
      Capacity,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PoolName) : 'PoolName must be a string',
        PoolName: PoolName,
        assert std.isString(BundleId) : 'BundleId must be a string',
        BundleId: BundleId,
        assert std.isString(DirectoryId) : 'DirectoryId must be a string',
        DirectoryId: DirectoryId,
        assert std.isObject(Capacity) : 'Capacity must be a object',
        Capacity: Capacity,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpaces::WorkspacesPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPoolId': d.fn('`withPoolId` PoolId ', [d.arg('PoolId', d.T.string)]),
    withPoolId(PoolId): {
      assert std.isString(PoolId) : 'PoolId must be a string',
      Properties+::: { PoolId: PoolId },
    },
    '#withPoolArn': d.fn('`withPoolArn` PoolArn ', [d.arg('PoolArn', d.T.string)]),
    withPoolArn(PoolArn): {
      assert std.isString(PoolArn) : 'PoolArn must be a string',
      Properties+::: { PoolArn: PoolArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withApplicationSettings': d.fn('`withApplicationSettings` ApplicationSettings ', [d.arg('ApplicationSettings', d.T.object)]),
    withApplicationSettings(ApplicationSettings): {
      assert std.isObject(ApplicationSettings) : 'ApplicationSettings must be a object',
      Properties+::: { ApplicationSettings: ApplicationSettings },
    },
    '#withTimeoutSettings': d.fn('`withTimeoutSettings` TimeoutSettings ', [d.arg('TimeoutSettings', d.T.object)]),
    withTimeoutSettings(TimeoutSettings): {
      assert std.isObject(TimeoutSettings) : 'TimeoutSettings must be a object',
      Properties+::: { TimeoutSettings: TimeoutSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
