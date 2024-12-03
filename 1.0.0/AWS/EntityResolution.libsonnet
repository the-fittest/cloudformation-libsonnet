local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  IdMappingWorkflow: {
    '#': d.pkg(
      name='IdMappingWorkflow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EntityResolution.libsonnet',
      help='IdMappingWorkflow defined in AWS Entity Resolution service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EntityResolution::IdMappingWorkflow Resource
        * WorkflowName The name of the IdMappingWorkflow
        * InputSourceConfig 
        * IdMappingTechniques 
        * RoleArn 
      |||,
      args=[
        d.arg('WorkflowName', 'd.T.string'),
        d.arg('InputSourceConfig', 'd.T.array'),
        d.arg('IdMappingTechniques', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      WorkflowName,
      InputSourceConfig,
      IdMappingTechniques,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkflowName) : 'WorkflowName must be a string',
        WorkflowName: WorkflowName,
        assert std.isArray(InputSourceConfig) : 'InputSourceConfig must be a array',
        InputSourceConfig: InputSourceConfig,
        assert std.isObject(IdMappingTechniques) : 'IdMappingTechniques must be a object',
        IdMappingTechniques: IdMappingTechniques,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::EntityResolution::IdMappingWorkflow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withOutputSourceConfig': d.fn('`withOutputSourceConfig` OutputSourceConfig ', [d.arg('OutputSourceConfig', d.T.array)]),
    withOutputSourceConfig(OutputSourceConfig): {
      assert std.isArray(OutputSourceConfig) : 'OutputSourceConfig must be a array',
      Properties+::: { OutputSourceConfig: OutputSourceConfig },
    },
    '#withWorkflowArn': d.fn('`withWorkflowArn` WorkflowArn ', [d.arg('WorkflowArn', d.T.string)]),
    withWorkflowArn(WorkflowArn): {
      assert std.isString(WorkflowArn) : 'WorkflowArn must be a string',
      Properties+::: { WorkflowArn: WorkflowArn },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IdNamespace: {
    '#': d.pkg(
      name='IdNamespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EntityResolution.libsonnet',
      help='IdNamespace defined in AWS Entity Resolution service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EntityResolution::IdNamespace Resource
        * IdNamespaceName 
        * Type 
      |||,
      args=[
        d.arg('IdNamespaceName', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      IdNamespaceName,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IdNamespaceName) : 'IdNamespaceName must be a string',
        IdNamespaceName: IdNamespaceName,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'SOURCE' || Type == 'TARGET' : "Type must be either 'SOURCE' or 'TARGET'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::EntityResolution::IdNamespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withInputSourceConfig': d.fn('`withInputSourceConfig` InputSourceConfig ', [d.arg('InputSourceConfig', d.T.array)]),
    withInputSourceConfig(InputSourceConfig): {
      assert std.isArray(InputSourceConfig) : 'InputSourceConfig must be a array',
      Properties+::: { InputSourceConfig: InputSourceConfig },
    },
    '#withIdMappingWorkflowProperties': d.fn('`withIdMappingWorkflowProperties` IdMappingWorkflowProperties ', [d.arg('IdMappingWorkflowProperties', d.T.array)]),
    withIdMappingWorkflowProperties(IdMappingWorkflowProperties): {
      assert std.isArray(IdMappingWorkflowProperties) : 'IdMappingWorkflowProperties must be a array',
      Properties+::: { IdMappingWorkflowProperties: IdMappingWorkflowProperties },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withIdNamespaceArn': d.fn('`withIdNamespaceArn` IdNamespaceArn ', [d.arg('IdNamespaceArn', d.T.string)]),
    withIdNamespaceArn(IdNamespaceArn): {
      assert std.isString(IdNamespaceArn) : 'IdNamespaceArn must be a string',
      Properties+::: { IdNamespaceArn: IdNamespaceArn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MatchingWorkflow: {
    '#': d.pkg(
      name='MatchingWorkflow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EntityResolution.libsonnet',
      help='MatchingWorkflow defined in AWS Entity Resolution service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EntityResolution::MatchingWorkflow Resource
        * WorkflowName The name of the MatchingWorkflow
        * InputSourceConfig 
        * OutputSourceConfig 
        * ResolutionTechniques 
        * RoleArn 
      |||,
      args=[
        d.arg('WorkflowName', 'd.T.string'),
        d.arg('InputSourceConfig', 'd.T.array'),
        d.arg('OutputSourceConfig', 'd.T.array'),
        d.arg('ResolutionTechniques', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      WorkflowName,
      InputSourceConfig,
      OutputSourceConfig,
      ResolutionTechniques,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkflowName) : 'WorkflowName must be a string',
        WorkflowName: WorkflowName,
        assert std.isArray(InputSourceConfig) : 'InputSourceConfig must be a array',
        InputSourceConfig: InputSourceConfig,
        assert std.isArray(OutputSourceConfig) : 'OutputSourceConfig must be a array',
        OutputSourceConfig: OutputSourceConfig,
        assert std.isObject(ResolutionTechniques) : 'ResolutionTechniques must be a object',
        ResolutionTechniques: ResolutionTechniques,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::EntityResolution::MatchingWorkflow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withWorkflowArn': d.fn('`withWorkflowArn` WorkflowArn ', [d.arg('WorkflowArn', d.T.string)]),
    withWorkflowArn(WorkflowArn): {
      assert std.isString(WorkflowArn) : 'WorkflowArn must be a string',
      Properties+::: { WorkflowArn: WorkflowArn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withIncrementalRunConfig': d.fn('`withIncrementalRunConfig` IncrementalRunConfig ', [d.arg('IncrementalRunConfig', d.T.object)]),
    withIncrementalRunConfig(IncrementalRunConfig): {
      assert std.isObject(IncrementalRunConfig) : 'IncrementalRunConfig must be a object',
      Properties+::: { IncrementalRunConfig: IncrementalRunConfig },
    },
  },
  PolicyStatement: {
    '#': d.pkg(
      name='PolicyStatement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EntityResolution.libsonnet',
      help='Policy Statement defined in AWS Entity Resolution Service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EntityResolution::PolicyStatement Resource
        * Arn 
        * StatementId 
      |||,
      args=[
        d.arg('Arn', 'd.T.string'),
        d.arg('StatementId', 'd.T.string'),
      ]
    ),
    new(
      Arn,
      StatementId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Arn) : 'Arn must be a string',
        Arn: Arn,
        assert std.isString(StatementId) : 'StatementId must be a string',
        StatementId: StatementId,
      },
      DependsOn:: [],
      Type: 'AWS::EntityResolution::PolicyStatement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEffect': d.fn('`withEffect` Effect ', [d.arg('Effect', d.T.string)]),
    withEffect(Effect): {
      assert std.isString(Effect) : 'Effect must be a string',
      Properties+::: { Effect: Effect },
    },
    '#withAction': d.fn('`withAction` Action ', [d.arg('Action', d.T.array)]),
    withAction(Action): {
      assert std.isArray(Action) : 'Action must be a array',
      Properties+::: { Action: Action },
    },
    '#withPrincipal': d.fn('`withPrincipal` Principal ', [d.arg('Principal', d.T.array)]),
    withPrincipal(Principal): {
      assert std.isArray(Principal) : 'Principal must be a array',
      Properties+::: { Principal: Principal },
    },
    '#withCondition': d.fn('`withCondition` Condition ', [d.arg('Condition', d.T.string)]),
    withCondition(Condition): {
      assert std.isString(Condition) : 'Condition must be a string',
      Properties+::: { Condition: Condition },
    },
  },
  SchemaMapping: {
    '#': d.pkg(
      name='SchemaMapping',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EntityResolution.libsonnet',
      help='SchemaMapping defined in AWS Entity Resolution service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EntityResolution::SchemaMapping Resource
        * SchemaName The name of the SchemaMapping
        * MappedInputFields The SchemaMapping attributes input
      |||,
      args=[
        d.arg('SchemaName', 'd.T.string'),
        d.arg('MappedInputFields', 'd.T.array'),
      ]
    ),
    new(
      SchemaName,
      MappedInputFields,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SchemaName) : 'SchemaName must be a string',
        SchemaName: SchemaName,
        assert std.isArray(MappedInputFields) : 'MappedInputFields must be a array',
        MappedInputFields: MappedInputFields,
      },
      DependsOn:: [],
      Type: 'AWS::EntityResolution::SchemaMapping',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSchemaArn': d.fn('`withSchemaArn` SchemaArn ', [d.arg('SchemaArn', d.T.string)]),
    withSchemaArn(SchemaArn): {
      assert std.isString(SchemaArn) : 'SchemaArn must be a string',
      Properties+::: { SchemaArn: SchemaArn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withHasWorkflows': d.fn('`withHasWorkflows` HasWorkflows ', [d.arg('HasWorkflows', d.T.boolean)]),
    withHasWorkflows(HasWorkflows): {
      assert std.isBoolean(HasWorkflows) : 'HasWorkflows must be a boolean',
      Properties+::: { HasWorkflows: HasWorkflows },
    },
  },
}
