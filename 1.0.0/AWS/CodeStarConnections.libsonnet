local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Connection: {
    '#': d.pkg(
      name='Connection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeStarConnections.libsonnet',
      help='Schema for AWS::CodeStarConnections::Connection resource which can be used to connect external source providers with AWS CodePipeline',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeStarConnections::Connection Resource
        * ConnectionName The name of the connection. Connection names must be unique in an AWS user account.
      |||,
      args=[
        d.arg('ConnectionName', 'd.T.string'),
      ]
    ),
    new(
      ConnectionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectionName) : 'ConnectionName must be a string',
        ConnectionName: ConnectionName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeStarConnections::Connection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectionArn': d.fn('`withConnectionArn` ConnectionArn ', [d.arg('ConnectionArn', d.T.string)]),
    withConnectionArn(ConnectionArn): {
      assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
      Properties+::: { ConnectionArn: ConnectionArn },
    },
    '#withConnectionStatus': d.fn('`withConnectionStatus` ConnectionStatus ', [d.arg('ConnectionStatus', d.T.string)]),
    withConnectionStatus(ConnectionStatus): {
      assert std.isString(ConnectionStatus) : 'ConnectionStatus must be a string',
      Properties+::: { ConnectionStatus: ConnectionStatus },
    },
    '#withOwnerAccountId': d.fn('`withOwnerAccountId` OwnerAccountId ', [d.arg('OwnerAccountId', d.T.string)]),
    withOwnerAccountId(OwnerAccountId): {
      assert std.isString(OwnerAccountId) : 'OwnerAccountId must be a string',
      Properties+::: { OwnerAccountId: OwnerAccountId },
    },
    '#withProviderType': d.fn('`withProviderType` ProviderType ', [d.arg('ProviderType', d.T.string)]),
    withProviderType(ProviderType): {
      assert std.isString(ProviderType) : 'ProviderType must be a string',
      Properties+::: { ProviderType: ProviderType },
    },
    '#withHostArn': d.fn('`withHostArn` HostArn ', [d.arg('HostArn', d.T.string)]),
    withHostArn(HostArn): {
      assert std.isString(HostArn) : 'HostArn must be a string',
      Properties+::: { HostArn: HostArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  RepositoryLink: {
    '#': d.pkg(
      name='RepositoryLink',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeStarConnections.libsonnet',
      help='Schema for AWS::CodeStarConnections::RepositoryLink resource which is used to aggregate repository metadata relevant to synchronizing source provider content to AWS Resources.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeStarConnections::RepositoryLink Resource
        * RepositoryName The repository for which the link is being created.
        * ConnectionArn The Amazon Resource Name (ARN) of the CodeStarConnection. The ARN is used as the connection reference when the connection is shared between AWS services.
        * OwnerId the ID of the entity that owns the repository.
      |||,
      args=[
        d.arg('RepositoryName', 'd.T.string'),
        d.arg('ConnectionArn', 'd.T.string'),
        d.arg('OwnerId', 'd.T.string'),
      ]
    ),
    new(
      RepositoryName,
      ConnectionArn,
      OwnerId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RepositoryName) : 'RepositoryName must be a string',
        RepositoryName: RepositoryName,
        assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
        ConnectionArn: ConnectionArn,
        assert std.isString(OwnerId) : 'OwnerId must be a string',
        OwnerId: OwnerId,
      },
      DependsOn:: [],
      Type: 'AWS::CodeStarConnections::RepositoryLink',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProviderType': d.fn('`withProviderType` ProviderType ', [d.arg('ProviderType', d.T.string)]),
    withProviderType(ProviderType): {
      assert std.isString(ProviderType) : 'ProviderType must be a string',
      assert ProviderType == 'GitHub' || ProviderType == 'Bitbucket' || ProviderType == 'GitHubEnterprise' || ProviderType == 'GitLab' || ProviderType == 'GitLabSelfManaged' : "ProviderType must be either 'GitHub' or 'Bitbucket' or 'GitHubEnterprise' or 'GitLab' or 'GitLabSelfManaged'",
      Properties+::: { ProviderType: ProviderType },
    },
    '#withEncryptionKeyArn': d.fn('`withEncryptionKeyArn` EncryptionKeyArn ', [d.arg('EncryptionKeyArn', d.T.string)]),
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: { EncryptionKeyArn: EncryptionKeyArn },
    },
    '#withRepositoryLinkId': d.fn('`withRepositoryLinkId` RepositoryLinkId ', [d.arg('RepositoryLinkId', d.T.string)]),
    withRepositoryLinkId(RepositoryLinkId): {
      assert std.isString(RepositoryLinkId) : 'RepositoryLinkId must be a string',
      Properties+::: { RepositoryLinkId: RepositoryLinkId },
    },
    '#withRepositoryLinkArn': d.fn('`withRepositoryLinkArn` RepositoryLinkArn ', [d.arg('RepositoryLinkArn', d.T.string)]),
    withRepositoryLinkArn(RepositoryLinkArn): {
      assert std.isString(RepositoryLinkArn) : 'RepositoryLinkArn must be a string',
      Properties+::: { RepositoryLinkArn: RepositoryLinkArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SyncConfiguration: {
    '#': d.pkg(
      name='SyncConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeStarConnections.libsonnet',
      help='Schema for AWS::CodeStarConnections::SyncConfiguration resource which is used to enables an AWS resource to be synchronized from a source-provider.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeStarConnections::SyncConfiguration Resource
        * Branch The name of the branch of the repository from which resources are to be synchronized,
        * ConfigFile The source provider repository path of the sync configuration file of the respective SyncType.
        * RepositoryLinkId A UUID that uniquely identifies the RepositoryLink that the SyncConfig is associated with.
        * ResourceName The name of the resource that is being synchronized to the repository.
        * SyncType The type of resource synchronization service that is to be configured, for example, CFN_STACK_SYNC.
        * RoleArn The IAM Role that allows AWS to update CloudFormation stacks based on content in the specified repository.
      |||,
      args=[
        d.arg('Branch', 'd.T.string'),
        d.arg('ConfigFile', 'd.T.string'),
        d.arg('RepositoryLinkId', 'd.T.string'),
        d.arg('ResourceName', 'd.T.string'),
        d.arg('SyncType', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      Branch,
      ConfigFile,
      RepositoryLinkId,
      ResourceName,
      SyncType,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Branch) : 'Branch must be a string',
        Branch: Branch,
        assert std.isString(ConfigFile) : 'ConfigFile must be a string',
        ConfigFile: ConfigFile,
        assert std.isString(RepositoryLinkId) : 'RepositoryLinkId must be a string',
        RepositoryLinkId: RepositoryLinkId,
        assert std.isString(ResourceName) : 'ResourceName must be a string',
        ResourceName: ResourceName,
        assert std.isString(SyncType) : 'SyncType must be a string',
        SyncType: SyncType,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::CodeStarConnections::SyncConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOwnerId': d.fn('`withOwnerId` OwnerId ', [d.arg('OwnerId', d.T.string)]),
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: { OwnerId: OwnerId },
    },
    '#withRepositoryName': d.fn('`withRepositoryName` RepositoryName ', [d.arg('RepositoryName', d.T.string)]),
    withRepositoryName(RepositoryName): {
      assert std.isString(RepositoryName) : 'RepositoryName must be a string',
      Properties+::: { RepositoryName: RepositoryName },
    },
    '#withProviderType': d.fn('`withProviderType` ProviderType ', [d.arg('ProviderType', d.T.string)]),
    withProviderType(ProviderType): {
      assert std.isString(ProviderType) : 'ProviderType must be a string',
      assert ProviderType == 'GitHub' || ProviderType == 'Bitbucket' || ProviderType == 'GitHubEnterprise' || ProviderType == 'GitLab' || ProviderType == 'GitLabSelfManaged' : "ProviderType must be either 'GitHub' or 'Bitbucket' or 'GitHubEnterprise' or 'GitLab' or 'GitLabSelfManaged'",
      Properties+::: { ProviderType: ProviderType },
    },
    '#withPublishDeploymentStatus': d.fn('`withPublishDeploymentStatus` PublishDeploymentStatus ', [d.arg('PublishDeploymentStatus', d.T.string)]),
    withPublishDeploymentStatus(PublishDeploymentStatus): {
      assert std.isString(PublishDeploymentStatus) : 'PublishDeploymentStatus must be a string',
      assert PublishDeploymentStatus == 'ENABLED' || PublishDeploymentStatus == 'DISABLED' : "PublishDeploymentStatus must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { PublishDeploymentStatus: PublishDeploymentStatus },
    },
    '#withTriggerResourceUpdateOn': d.fn('`withTriggerResourceUpdateOn` TriggerResourceUpdateOn ', [d.arg('TriggerResourceUpdateOn', d.T.string)]),
    withTriggerResourceUpdateOn(TriggerResourceUpdateOn): {
      assert std.isString(TriggerResourceUpdateOn) : 'TriggerResourceUpdateOn must be a string',
      assert TriggerResourceUpdateOn == 'ANY_CHANGE' || TriggerResourceUpdateOn == 'FILE_CHANGE' : "TriggerResourceUpdateOn must be either 'ANY_CHANGE' or 'FILE_CHANGE'",
      Properties+::: { TriggerResourceUpdateOn: TriggerResourceUpdateOn },
    },
  },
}
