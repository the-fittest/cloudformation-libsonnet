local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Activity: {
    '#': d.pkg(
      name='Activity',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/StepFunctions.libsonnet',
      help='Resource schema for Activity',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::StepFunctions::Activity Resource
        * Name 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::StepFunctions::Activity',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEncryptionConfiguration': d.fn('`withEncryptionConfiguration` EncryptionConfiguration ', [d.arg('EncryptionConfiguration', d.T.object)]),
    withEncryptionConfiguration(EncryptionConfiguration): {
      assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
      Properties+::: { EncryptionConfiguration: EncryptionConfiguration },
    },
  },
  StateMachine: {
    '#': d.pkg(
      name='StateMachine',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/StepFunctions.libsonnet',
      help='Resource schema for StateMachine',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::StepFunctions::StateMachine Resource
        * RoleArn 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::StepFunctions::StateMachine',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDefinitionString': d.fn('`withDefinitionString` DefinitionString ', [d.arg('DefinitionString', d.T.string)]),
    withDefinitionString(DefinitionString): {
      assert std.isString(DefinitionString) : 'DefinitionString must be a string',
      Properties+::: { DefinitionString: DefinitionString },
    },
    '#withStateMachineName': d.fn('`withStateMachineName` StateMachineName ', [d.arg('StateMachineName', d.T.string)]),
    withStateMachineName(StateMachineName): {
      assert std.isString(StateMachineName) : 'StateMachineName must be a string',
      Properties+::: { StateMachineName: StateMachineName },
    },
    '#withStateMachineType': d.fn('`withStateMachineType` StateMachineType ', [d.arg('StateMachineType', d.T.string)]),
    withStateMachineType(StateMachineType): {
      assert std.isString(StateMachineType) : 'StateMachineType must be a string',
      assert StateMachineType == 'STANDARD' || StateMachineType == 'EXPRESS' : "StateMachineType must be either 'STANDARD' or 'EXPRESS'",
      Properties+::: { StateMachineType: StateMachineType },
    },
    '#withStateMachineRevisionId': d.fn('`withStateMachineRevisionId` StateMachineRevisionId ', [d.arg('StateMachineRevisionId', d.T.string)]),
    withStateMachineRevisionId(StateMachineRevisionId): {
      assert std.isString(StateMachineRevisionId) : 'StateMachineRevisionId must be a string',
      Properties+::: { StateMachineRevisionId: StateMachineRevisionId },
    },
    '#withLoggingConfiguration': d.fn('`withLoggingConfiguration` LoggingConfiguration ', [d.arg('LoggingConfiguration', d.T.object)]),
    withLoggingConfiguration(LoggingConfiguration): {
      assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
      Properties+::: { LoggingConfiguration: LoggingConfiguration },
    },
    '#withTracingConfiguration': d.fn('`withTracingConfiguration` TracingConfiguration ', [d.arg('TracingConfiguration', d.T.object)]),
    withTracingConfiguration(TracingConfiguration): {
      assert std.isObject(TracingConfiguration) : 'TracingConfiguration must be a object',
      Properties+::: { TracingConfiguration: TracingConfiguration },
    },
    '#withEncryptionConfiguration': d.fn('`withEncryptionConfiguration` EncryptionConfiguration ', [d.arg('EncryptionConfiguration', d.T.object)]),
    withEncryptionConfiguration(EncryptionConfiguration): {
      assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
      Properties+::: { EncryptionConfiguration: EncryptionConfiguration },
    },
    '#withDefinitionS3Location': d.fn('`withDefinitionS3Location` DefinitionS3Location ', [d.arg('DefinitionS3Location', d.T.object)]),
    withDefinitionS3Location(DefinitionS3Location): {
      assert std.isObject(DefinitionS3Location) : 'DefinitionS3Location must be a object',
      Properties+::: { DefinitionS3Location: DefinitionS3Location },
    },
    '#withDefinitionSubstitutions': d.fn('`withDefinitionSubstitutions` DefinitionSubstitutions ', [d.arg('DefinitionSubstitutions', d.T.object)]),
    withDefinitionSubstitutions(DefinitionSubstitutions): {
      assert std.isObject(DefinitionSubstitutions) : 'DefinitionSubstitutions must be a object',
      Properties+::: { DefinitionSubstitutions: DefinitionSubstitutions },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.object)]),
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: { Definition: Definition },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  StateMachineAlias: {
    '#': d.pkg(
      name='StateMachineAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/StepFunctions.libsonnet',
      help='Resource schema for StateMachineAlias',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::StepFunctions::StateMachineAlias Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::StepFunctions::StateMachineAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withRoutingConfiguration': d.fn('`withRoutingConfiguration` RoutingConfiguration ', [d.arg('RoutingConfiguration', d.T.array)]),
    withRoutingConfiguration(RoutingConfiguration): {
      assert std.isArray(RoutingConfiguration) : 'RoutingConfiguration must be a array',
      Properties+::: { RoutingConfiguration: RoutingConfiguration },
    },
    '#withDeploymentPreference': d.fn('`withDeploymentPreference` DeploymentPreference ', [d.arg('DeploymentPreference', d.T.object)]),
    withDeploymentPreference(DeploymentPreference): {
      assert std.isObject(DeploymentPreference) : 'DeploymentPreference must be a object',
      Properties+::: { DeploymentPreference: DeploymentPreference },
    },
  },
  StateMachineVersion: {
    '#': d.pkg(
      name='StateMachineVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/StepFunctions.libsonnet',
      help='Resource schema for StateMachineVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::StepFunctions::StateMachineVersion Resource
        * StateMachineArn 
      |||,
      args=[
        d.arg('StateMachineArn', 'd.T.string'),
      ]
    ),
    new(
      StateMachineArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StateMachineArn) : 'StateMachineArn must be a string',
        StateMachineArn: StateMachineArn,
      },
      DependsOn:: [],
      Type: 'AWS::StepFunctions::StateMachineVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withStateMachineRevisionId': d.fn('`withStateMachineRevisionId` StateMachineRevisionId ', [d.arg('StateMachineRevisionId', d.T.string)]),
    withStateMachineRevisionId(StateMachineRevisionId): {
      assert std.isString(StateMachineRevisionId) : 'StateMachineRevisionId must be a string',
      Properties+::: { StateMachineRevisionId: StateMachineRevisionId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
}
