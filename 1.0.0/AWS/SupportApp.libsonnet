local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccountAlias: {
    '#': d.pkg(
      name='AccountAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SupportApp.libsonnet',
      help='An AWS Support App resource that creates, updates, reads, and deletes a customers account alias.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SupportApp::AccountAlias Resource
        * AccountAlias An account alias associated with a customers account.
      |||,
      args=[
        d.arg('AccountAlias', 'd.T.string'),
      ]
    ),
    new(
      AccountAlias,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccountAlias) : 'AccountAlias must be a string',
        AccountAlias: AccountAlias,
      },
      DependsOn:: [],
      Type: 'AWS::SupportApp::AccountAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountAliasResourceId': d.fn('`withAccountAliasResourceId` AccountAliasResourceId ', [d.arg('AccountAliasResourceId', d.T.string)]),
    withAccountAliasResourceId(AccountAliasResourceId): {
      assert std.isString(AccountAliasResourceId) : 'AccountAliasResourceId must be a string',
      Properties+::: { AccountAliasResourceId: AccountAliasResourceId },
    },
  },
  SlackChannelConfiguration: {
    '#': d.pkg(
      name='SlackChannelConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SupportApp.libsonnet',
      help='An AWS Support App resource that creates, updates, lists and deletes Slack channel configurations.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SupportApp::SlackChannelConfiguration Resource
        * TeamId The team ID in Slack, which uniquely identifies a workspace.
        * ChannelId The channel ID in Slack, which identifies a channel within a workspace.
        * NotifyOnCaseSeverity The severity level of a support case that a customer wants to get notified for.
        * ChannelRoleArn The Amazon Resource Name (ARN) of an IAM role that grants the AWS Support App access to perform operations for AWS services.
      |||,
      args=[
        d.arg('TeamId', 'd.T.string'),
        d.arg('ChannelId', 'd.T.string'),
        d.arg('NotifyOnCaseSeverity', 'd.T.string'),
        d.arg('ChannelRoleArn', 'd.T.string'),
      ]
    ),
    new(
      TeamId,
      ChannelId,
      NotifyOnCaseSeverity,
      ChannelRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TeamId) : 'TeamId must be a string',
        TeamId: TeamId,
        assert std.isString(ChannelId) : 'ChannelId must be a string',
        ChannelId: ChannelId,
        assert std.isString(NotifyOnCaseSeverity) : 'NotifyOnCaseSeverity must be a string',
        assert NotifyOnCaseSeverity == 'none' || NotifyOnCaseSeverity == 'all' || NotifyOnCaseSeverity == 'high' : "NotifyOnCaseSeverity must be either 'none' or 'all' or 'high'",
        NotifyOnCaseSeverity: NotifyOnCaseSeverity,
        assert std.isString(ChannelRoleArn) : 'ChannelRoleArn must be a string',
        ChannelRoleArn: ChannelRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SupportApp::SlackChannelConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withChannelName': d.fn('`withChannelName` ChannelName ', [d.arg('ChannelName', d.T.string)]),
    withChannelName(ChannelName): {
      assert std.isString(ChannelName) : 'ChannelName must be a string',
      Properties+::: { ChannelName: ChannelName },
    },
    '#withNotifyOnCreateOrReopenCase': d.fn('`withNotifyOnCreateOrReopenCase` NotifyOnCreateOrReopenCase ', [d.arg('NotifyOnCreateOrReopenCase', d.T.boolean)]),
    withNotifyOnCreateOrReopenCase(NotifyOnCreateOrReopenCase): {
      assert std.isBoolean(NotifyOnCreateOrReopenCase) : 'NotifyOnCreateOrReopenCase must be a boolean',
      Properties+::: { NotifyOnCreateOrReopenCase: NotifyOnCreateOrReopenCase },
    },
    '#withNotifyOnAddCorrespondenceToCase': d.fn('`withNotifyOnAddCorrespondenceToCase` NotifyOnAddCorrespondenceToCase ', [d.arg('NotifyOnAddCorrespondenceToCase', d.T.boolean)]),
    withNotifyOnAddCorrespondenceToCase(NotifyOnAddCorrespondenceToCase): {
      assert std.isBoolean(NotifyOnAddCorrespondenceToCase) : 'NotifyOnAddCorrespondenceToCase must be a boolean',
      Properties+::: { NotifyOnAddCorrespondenceToCase: NotifyOnAddCorrespondenceToCase },
    },
    '#withNotifyOnResolveCase': d.fn('`withNotifyOnResolveCase` NotifyOnResolveCase ', [d.arg('NotifyOnResolveCase', d.T.boolean)]),
    withNotifyOnResolveCase(NotifyOnResolveCase): {
      assert std.isBoolean(NotifyOnResolveCase) : 'NotifyOnResolveCase must be a boolean',
      Properties+::: { NotifyOnResolveCase: NotifyOnResolveCase },
    },
  },
  SlackWorkspaceConfiguration: {
    '#': d.pkg(
      name='SlackWorkspaceConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SupportApp.libsonnet',
      help='An AWS Support App resource that creates, updates, lists, and deletes Slack workspace configurations.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SupportApp::SlackWorkspaceConfiguration Resource
        * TeamId The team ID in Slack, which uniquely identifies a workspace.
      |||,
      args=[
        d.arg('TeamId', 'd.T.string'),
      ]
    ),
    new(
      TeamId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TeamId) : 'TeamId must be a string',
        TeamId: TeamId,
      },
      DependsOn:: [],
      Type: 'AWS::SupportApp::SlackWorkspaceConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
  },
}
