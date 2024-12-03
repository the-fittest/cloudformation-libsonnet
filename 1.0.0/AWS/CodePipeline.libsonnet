local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CustomActionType: {
    '#': d.pkg(
      name='CustomActionType',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodePipeline.libsonnet',
      help='The AWS::CodePipeline::CustomActionType resource creates a custom action for activities that arent included in the CodePipeline default actions, such as running an internally developed build process or a test suite. You can use these custom actions in the stage of a pipeline.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodePipeline::CustomActionType Resource
        * Category The category of the custom action, such as a build action or a test action.
        * InputArtifactDetails The details of the input artifact for the action, such as its commit ID.
        * OutputArtifactDetails The details of the output artifact of the action, such as its commit ID.
        * Provider The provider of the service used in the custom action, such as AWS CodeDeploy.
        * Version The version identifier of the custom action.
      |||,
      args=[
        d.arg('Category', 'd.T.string'),
        d.arg('InputArtifactDetails', 'd.T.object'),
        d.arg('OutputArtifactDetails', 'd.T.object'),
        d.arg('Provider', 'd.T.string'),
        d.arg('Version', 'd.T.string'),
      ]
    ),
    new(
      Category,
      InputArtifactDetails,
      OutputArtifactDetails,
      Provider,
      Version,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Category) : 'Category must be a string',
        Category: Category,
        assert std.isObject(InputArtifactDetails) : 'InputArtifactDetails must be a object',
        InputArtifactDetails: InputArtifactDetails,
        assert std.isObject(OutputArtifactDetails) : 'OutputArtifactDetails must be a object',
        OutputArtifactDetails: OutputArtifactDetails,
        assert std.isString(Provider) : 'Provider must be a string',
        Provider: Provider,
        assert std.isString(Version) : 'Version must be a string',
        Version: Version,
      },
      DependsOn:: [],
      Type: 'AWS::CodePipeline::CustomActionType',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConfigurationProperties': d.fn('`withConfigurationProperties` ConfigurationProperties ', [d.arg('ConfigurationProperties', d.T.array)]),
    withConfigurationProperties(ConfigurationProperties): {
      assert std.isArray(ConfigurationProperties) : 'ConfigurationProperties must be a array',
      Properties+::: { ConfigurationProperties: ConfigurationProperties },
    },
    '#withSettings': d.fn('`withSettings` Settings ', [d.arg('Settings', d.T.object)]),
    withSettings(Settings): {
      assert std.isObject(Settings) : 'Settings must be a object',
      Properties+::: { Settings: Settings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Pipeline: {
    '#': d.pkg(
      name='Pipeline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodePipeline.libsonnet',
      help='The AWS::CodePipeline::Pipeline resource creates a CodePipeline pipeline that describes how software changes go through a release process.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodePipeline::Pipeline Resource
        * Stages Represents information about a stage and its definition.
        * RoleArn The Amazon Resource Name (ARN) for CodePipeline to use to either perform actions with no actionRoleArn, or to use to assume roles for actions with an actionRoleArn
      |||,
      args=[
        d.arg('Stages', 'd.T.array'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      Stages,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Stages) : 'Stages must be a array',
        Stages: Stages,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::CodePipeline::Pipeline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArtifactStores': d.fn('`withArtifactStores` ArtifactStores ', [d.arg('ArtifactStores', d.T.array)]),
    withArtifactStores(ArtifactStores): {
      assert std.isArray(ArtifactStores) : 'ArtifactStores must be a array',
      Properties+::: { ArtifactStores: ArtifactStores },
    },
    '#withDisableInboundStageTransitions': d.fn('`withDisableInboundStageTransitions` DisableInboundStageTransitions ', [d.arg('DisableInboundStageTransitions', d.T.array)]),
    withDisableInboundStageTransitions(DisableInboundStageTransitions): {
      assert std.isArray(DisableInboundStageTransitions) : 'DisableInboundStageTransitions must be a array',
      Properties+::: { DisableInboundStageTransitions: DisableInboundStageTransitions },
    },
    '#withExecutionMode': d.fn('`withExecutionMode` ExecutionMode ', [d.arg('ExecutionMode', d.T.string)]),
    withExecutionMode(ExecutionMode): {
      assert std.isString(ExecutionMode) : 'ExecutionMode must be a string',
      assert ExecutionMode == 'QUEUED' || ExecutionMode == 'SUPERSEDED' || ExecutionMode == 'PARALLEL' : "ExecutionMode must be either 'QUEUED' or 'SUPERSEDED' or 'PARALLEL'",
      Properties+::: { ExecutionMode: ExecutionMode },
    },
    '#withRestartExecutionOnUpdate': d.fn('`withRestartExecutionOnUpdate` RestartExecutionOnUpdate ', [d.arg('RestartExecutionOnUpdate', d.T.boolean)]),
    withRestartExecutionOnUpdate(RestartExecutionOnUpdate): {
      assert std.isBoolean(RestartExecutionOnUpdate) : 'RestartExecutionOnUpdate must be a boolean',
      Properties+::: { RestartExecutionOnUpdate: RestartExecutionOnUpdate },
    },
    '#withTriggers': d.fn('`withTriggers` Triggers ', [d.arg('Triggers', d.T.array)]),
    withTriggers(Triggers): {
      assert std.isArray(Triggers) : 'Triggers must be a array',
      Properties+::: { Triggers: Triggers },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withVariables': d.fn('`withVariables` Variables ', [d.arg('Variables', d.T.array)]),
    withVariables(Variables): {
      assert std.isArray(Variables) : 'Variables must be a array',
      Properties+::: { Variables: Variables },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withArtifactStore': d.fn('`withArtifactStore` ArtifactStore ', [d.arg('ArtifactStore', d.T.object)]),
    withArtifactStore(ArtifactStore): {
      assert std.isObject(ArtifactStore) : 'ArtifactStore must be a object',
      Properties+::: { ArtifactStore: ArtifactStore },
    },
    '#withPipelineType': d.fn('`withPipelineType` PipelineType ', [d.arg('PipelineType', d.T.string)]),
    withPipelineType(PipelineType): {
      assert std.isString(PipelineType) : 'PipelineType must be a string',
      assert PipelineType == 'V1' || PipelineType == 'V2' : "PipelineType must be either 'V1' or 'V2'",
      Properties+::: { PipelineType: PipelineType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Webhook: {
    '#': d.pkg(
      name='Webhook',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodePipeline.libsonnet',
      help='Resource Type definition for AWS::CodePipeline::Webhook',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodePipeline::Webhook Resource
        * AuthenticationConfiguration 
        * Filters 
        * Authentication 
        * TargetPipeline 
        * TargetAction 
        * TargetPipelineVersion 
      |||,
      args=[
        d.arg('AuthenticationConfiguration', 'd.T.object'),
        d.arg('Filters', 'd.T.array'),
        d.arg('Authentication', 'd.T.string'),
        d.arg('TargetPipeline', 'd.T.string'),
        d.arg('TargetAction', 'd.T.string'),
        d.arg('TargetPipelineVersion', 'd.T.integer'),
      ]
    ),
    new(
      AuthenticationConfiguration,
      Filters,
      Authentication,
      TargetPipeline,
      TargetAction,
      TargetPipelineVersion,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(AuthenticationConfiguration) : 'AuthenticationConfiguration must be a object',
        AuthenticationConfiguration: AuthenticationConfiguration,
        assert std.isArray(Filters) : 'Filters must be a array',
        Filters: Filters,
        assert std.isString(Authentication) : 'Authentication must be a string',
        Authentication: Authentication,
        assert std.isString(TargetPipeline) : 'TargetPipeline must be a string',
        TargetPipeline: TargetPipeline,
        assert std.isString(TargetAction) : 'TargetAction must be a string',
        TargetAction: TargetAction,
        assert std.isNumber(TargetPipelineVersion) : 'TargetPipelineVersion must be a integer',
        TargetPipelineVersion: TargetPipelineVersion,
      },
      DependsOn:: [],
      Type: 'AWS::CodePipeline::Webhook',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withRegisterWithThirdParty': d.fn('`withRegisterWithThirdParty` RegisterWithThirdParty ', [d.arg('RegisterWithThirdParty', d.T.boolean)]),
    withRegisterWithThirdParty(RegisterWithThirdParty): {
      assert std.isBoolean(RegisterWithThirdParty) : 'RegisterWithThirdParty must be a boolean',
      Properties+::: { RegisterWithThirdParty: RegisterWithThirdParty },
    },
  },
}
