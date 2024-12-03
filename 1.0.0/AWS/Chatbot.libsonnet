local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CustomAction: {
    '#': d.pkg(
      name='CustomAction',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Chatbot.libsonnet',
      help='Definition of AWS::Chatbot::CustomAction Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Chatbot::CustomAction Resource
        * ActionName 
        * Definition 
      |||,
      args=[
        d.arg('ActionName', 'd.T.string'),
        d.arg('Definition', 'd.T.object'),
      ]
    ),
    new(
      ActionName,
      Definition,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ActionName) : 'ActionName must be a string',
        ActionName: ActionName,
        assert std.isObject(Definition) : 'Definition must be a object',
        Definition: Definition,
      },
      DependsOn:: [],
      Type: 'AWS::Chatbot::CustomAction',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAliasName': d.fn('`withAliasName` AliasName ', [d.arg('AliasName', d.T.string)]),
    withAliasName(AliasName): {
      assert std.isString(AliasName) : 'AliasName must be a string',
      Properties+::: { AliasName: AliasName },
    },
    '#withAttachments': d.fn('`withAttachments` Attachments ', [d.arg('Attachments', d.T.array)]),
    withAttachments(Attachments): {
      assert std.isArray(Attachments) : 'Attachments must be a array',
      Properties+::: { Attachments: Attachments },
    },
    '#withCustomActionArn': d.fn('`withCustomActionArn` CustomActionArn ', [d.arg('CustomActionArn', d.T.string)]),
    withCustomActionArn(CustomActionArn): {
      assert std.isString(CustomActionArn) : 'CustomActionArn must be a string',
      Properties+::: { CustomActionArn: CustomActionArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MicrosoftTeamsChannelConfiguration: {
    '#': d.pkg(
      name='MicrosoftTeamsChannelConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Chatbot.libsonnet',
      help='Resource schema for AWS::Chatbot::MicrosoftTeamsChannelConfiguration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Chatbot::MicrosoftTeamsChannelConfiguration Resource
        * TeamId The id of the Microsoft Teams team
        * TeamsChannelId The id of the Microsoft Teams channel
        * TeamsTenantId The id of the Microsoft Teams tenant
        * ConfigurationName The name of the configuration
        * IamRoleArn The ARN of the IAM role that defines the permissions for AWS Chatbot
      |||,
      args=[
        d.arg('TeamId', 'd.T.string'),
        d.arg('TeamsChannelId', 'd.T.string'),
        d.arg('TeamsTenantId', 'd.T.string'),
        d.arg('ConfigurationName', 'd.T.string'),
        d.arg('IamRoleArn', 'd.T.string'),
      ]
    ),
    new(
      TeamId,
      TeamsChannelId,
      TeamsTenantId,
      ConfigurationName,
      IamRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TeamId) : 'TeamId must be a string',
        TeamId: TeamId,
        assert std.isString(TeamsChannelId) : 'TeamsChannelId must be a string',
        TeamsChannelId: TeamsChannelId,
        assert std.isString(TeamsTenantId) : 'TeamsTenantId must be a string',
        TeamsTenantId: TeamsTenantId,
        assert std.isString(ConfigurationName) : 'ConfigurationName must be a string',
        ConfigurationName: ConfigurationName,
        assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
        IamRoleArn: IamRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Chatbot::MicrosoftTeamsChannelConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSnsTopicArns': d.fn('`withSnsTopicArns` SnsTopicArns ', [d.arg('SnsTopicArns', d.T.array)]),
    withSnsTopicArns(SnsTopicArns): {
      assert std.isArray(SnsTopicArns) : 'SnsTopicArns must be a array',
      Properties+::: { SnsTopicArns: SnsTopicArns },
    },
    '#withLoggingLevel': d.fn('`withLoggingLevel` LoggingLevel ', [d.arg('LoggingLevel', d.T.string)]),
    withLoggingLevel(LoggingLevel): {
      assert std.isString(LoggingLevel) : 'LoggingLevel must be a string',
      Properties+::: { LoggingLevel: LoggingLevel },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withGuardrailPolicies': d.fn('`withGuardrailPolicies` GuardrailPolicies ', [d.arg('GuardrailPolicies', d.T.array)]),
    withGuardrailPolicies(GuardrailPolicies): {
      assert std.isArray(GuardrailPolicies) : 'GuardrailPolicies must be a array',
      Properties+::: { GuardrailPolicies: GuardrailPolicies },
    },
    '#withUserRoleRequired': d.fn('`withUserRoleRequired` UserRoleRequired ', [d.arg('UserRoleRequired', d.T.boolean)]),
    withUserRoleRequired(UserRoleRequired): {
      assert std.isBoolean(UserRoleRequired) : 'UserRoleRequired must be a boolean',
      Properties+::: { UserRoleRequired: UserRoleRequired },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCustomizationResourceArns': d.fn('`withCustomizationResourceArns` CustomizationResourceArns ', [d.arg('CustomizationResourceArns', d.T.array)]),
    withCustomizationResourceArns(CustomizationResourceArns): {
      assert std.isArray(CustomizationResourceArns) : 'CustomizationResourceArns must be a array',
      Properties+::: { CustomizationResourceArns: CustomizationResourceArns },
    },
  },
  SlackChannelConfiguration: {
    '#': d.pkg(
      name='SlackChannelConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Chatbot.libsonnet',
      help='Resource schema for AWS::Chatbot::SlackChannelConfiguration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Chatbot::SlackChannelConfiguration Resource
        * SlackWorkspaceId The id of the Slack workspace
        * SlackChannelId The id of the Slack channel
        * ConfigurationName The name of the configuration
        * IamRoleArn The ARN of the IAM role that defines the permissions for AWS Chatbot
      |||,
      args=[
        d.arg('SlackWorkspaceId', 'd.T.string'),
        d.arg('SlackChannelId', 'd.T.string'),
        d.arg('ConfigurationName', 'd.T.string'),
        d.arg('IamRoleArn', 'd.T.string'),
      ]
    ),
    new(
      SlackWorkspaceId,
      SlackChannelId,
      ConfigurationName,
      IamRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SlackWorkspaceId) : 'SlackWorkspaceId must be a string',
        SlackWorkspaceId: SlackWorkspaceId,
        assert std.isString(SlackChannelId) : 'SlackChannelId must be a string',
        SlackChannelId: SlackChannelId,
        assert std.isString(ConfigurationName) : 'ConfigurationName must be a string',
        ConfigurationName: ConfigurationName,
        assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
        IamRoleArn: IamRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Chatbot::SlackChannelConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSnsTopicArns': d.fn('`withSnsTopicArns` SnsTopicArns ', [d.arg('SnsTopicArns', d.T.array)]),
    withSnsTopicArns(SnsTopicArns): {
      assert std.isArray(SnsTopicArns) : 'SnsTopicArns must be a array',
      Properties+::: { SnsTopicArns: SnsTopicArns },
    },
    '#withLoggingLevel': d.fn('`withLoggingLevel` LoggingLevel ', [d.arg('LoggingLevel', d.T.string)]),
    withLoggingLevel(LoggingLevel): {
      assert std.isString(LoggingLevel) : 'LoggingLevel must be a string',
      Properties+::: { LoggingLevel: LoggingLevel },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withGuardrailPolicies': d.fn('`withGuardrailPolicies` GuardrailPolicies ', [d.arg('GuardrailPolicies', d.T.array)]),
    withGuardrailPolicies(GuardrailPolicies): {
      assert std.isArray(GuardrailPolicies) : 'GuardrailPolicies must be a array',
      Properties+::: { GuardrailPolicies: GuardrailPolicies },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserRoleRequired': d.fn('`withUserRoleRequired` UserRoleRequired ', [d.arg('UserRoleRequired', d.T.boolean)]),
    withUserRoleRequired(UserRoleRequired): {
      assert std.isBoolean(UserRoleRequired) : 'UserRoleRequired must be a boolean',
      Properties+::: { UserRoleRequired: UserRoleRequired },
    },
    '#withCustomizationResourceArns': d.fn('`withCustomizationResourceArns` CustomizationResourceArns ', [d.arg('CustomizationResourceArns', d.T.array)]),
    withCustomizationResourceArns(CustomizationResourceArns): {
      assert std.isArray(CustomizationResourceArns) : 'CustomizationResourceArns must be a array',
      Properties+::: { CustomizationResourceArns: CustomizationResourceArns },
    },
  },
}
