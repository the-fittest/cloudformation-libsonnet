local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Agent: {
    '#': d.pkg(
      name='Agent',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::Agent Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::Agent Resource
        * AgentName Name for a resource.
      |||,
      args=[
        d.arg('AgentName', 'd.T.string'),
      ]
    ),
    new(
      AgentName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AgentName) : 'AgentName must be a string',
        AgentName: AgentName,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::Agent',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withActionGroups': d.fn('`withActionGroups` ActionGroups ', [d.arg('ActionGroups', d.T.array)]),
    withActionGroups(ActionGroups): {
      assert std.isArray(ActionGroups) : 'ActionGroups must be a array',
      Properties+::: { ActionGroups: ActionGroups },
    },
    '#withAgentArn': d.fn('`withAgentArn` AgentArn ', [d.arg('AgentArn', d.T.string)]),
    withAgentArn(AgentArn): {
      assert std.isString(AgentArn) : 'AgentArn must be a string',
      Properties+::: { AgentArn: AgentArn },
    },
    '#withAgentId': d.fn('`withAgentId` AgentId ', [d.arg('AgentId', d.T.string)]),
    withAgentId(AgentId): {
      assert std.isString(AgentId) : 'AgentId must be a string',
      Properties+::: { AgentId: AgentId },
    },
    '#withAgentResourceRoleArn': d.fn('`withAgentResourceRoleArn` AgentResourceRoleArn ', [d.arg('AgentResourceRoleArn', d.T.string)]),
    withAgentResourceRoleArn(AgentResourceRoleArn): {
      assert std.isString(AgentResourceRoleArn) : 'AgentResourceRoleArn must be a string',
      Properties+::: { AgentResourceRoleArn: AgentResourceRoleArn },
    },
    '#withAgentStatus': d.fn('`withAgentStatus` AgentStatus ', [d.arg('AgentStatus', d.T.string)]),
    withAgentStatus(AgentStatus): {
      assert std.isString(AgentStatus) : 'AgentStatus must be a string',
      Properties+::: { AgentStatus: AgentStatus },
    },
    '#withAgentVersion': d.fn('`withAgentVersion` AgentVersion ', [d.arg('AgentVersion', d.T.string)]),
    withAgentVersion(AgentVersion): {
      assert std.isString(AgentVersion) : 'AgentVersion must be a string',
      Properties+::: { AgentVersion: AgentVersion },
    },
    '#withAutoPrepare': d.fn('`withAutoPrepare` AutoPrepare ', [d.arg('AutoPrepare', d.T.boolean)]),
    withAutoPrepare(AutoPrepare): {
      assert std.isBoolean(AutoPrepare) : 'AutoPrepare must be a boolean',
      Properties+::: { AutoPrepare: AutoPrepare },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withCustomerEncryptionKeyArn': d.fn('`withCustomerEncryptionKeyArn` CustomerEncryptionKeyArn ', [d.arg('CustomerEncryptionKeyArn', d.T.string)]),
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: { CustomerEncryptionKeyArn: CustomerEncryptionKeyArn },
    },
    '#withSkipResourceInUseCheckOnDelete': d.fn('`withSkipResourceInUseCheckOnDelete` SkipResourceInUseCheckOnDelete ', [d.arg('SkipResourceInUseCheckOnDelete', d.T.boolean)]),
    withSkipResourceInUseCheckOnDelete(SkipResourceInUseCheckOnDelete): {
      assert std.isBoolean(SkipResourceInUseCheckOnDelete) : 'SkipResourceInUseCheckOnDelete must be a boolean',
      Properties+::: { SkipResourceInUseCheckOnDelete: SkipResourceInUseCheckOnDelete },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFailureReasons': d.fn('`withFailureReasons` FailureReasons ', [d.arg('FailureReasons', d.T.array)]),
    withFailureReasons(FailureReasons): {
      assert std.isArray(FailureReasons) : 'FailureReasons must be a array',
      Properties+::: { FailureReasons: FailureReasons },
    },
    '#withFoundationModel': d.fn('`withFoundationModel` FoundationModel ', [d.arg('FoundationModel', d.T.string)]),
    withFoundationModel(FoundationModel): {
      assert std.isString(FoundationModel) : 'FoundationModel must be a string',
      Properties+::: { FoundationModel: FoundationModel },
    },
    '#withGuardrailConfiguration': d.fn('`withGuardrailConfiguration` GuardrailConfiguration ', [d.arg('GuardrailConfiguration', d.T.object)]),
    withGuardrailConfiguration(GuardrailConfiguration): {
      assert std.isObject(GuardrailConfiguration) : 'GuardrailConfiguration must be a object',
      Properties+::: { GuardrailConfiguration: GuardrailConfiguration },
    },
    '#withIdleSessionTTLInSeconds': d.fn('`withIdleSessionTTLInSeconds` IdleSessionTTLInSeconds ', [d.arg('IdleSessionTTLInSeconds', d.T.integer)]),
    withIdleSessionTTLInSeconds(IdleSessionTTLInSeconds): {
      // Type: number
      Properties+::: { IdleSessionTTLInSeconds: IdleSessionTTLInSeconds },
    },
    '#withInstruction': d.fn('`withInstruction` Instruction ', [d.arg('Instruction', d.T.string)]),
    withInstruction(Instruction): {
      assert std.isString(Instruction) : 'Instruction must be a string',
      Properties+::: { Instruction: Instruction },
    },
    '#withKnowledgeBases': d.fn('`withKnowledgeBases` KnowledgeBases ', [d.arg('KnowledgeBases', d.T.array)]),
    withKnowledgeBases(KnowledgeBases): {
      assert std.isArray(KnowledgeBases) : 'KnowledgeBases must be a array',
      Properties+::: { KnowledgeBases: KnowledgeBases },
    },
    '#withPreparedAt': d.fn('`withPreparedAt` PreparedAt ', [d.arg('PreparedAt', d.T.string)]),
    withPreparedAt(PreparedAt): {
      assert std.isString(PreparedAt) : 'PreparedAt must be a string',
      Properties+::: { PreparedAt: PreparedAt },
    },
    '#withPromptOverrideConfiguration': d.fn('`withPromptOverrideConfiguration` PromptOverrideConfiguration ', [d.arg('PromptOverrideConfiguration', d.T.object)]),
    withPromptOverrideConfiguration(PromptOverrideConfiguration): {
      assert std.isObject(PromptOverrideConfiguration) : 'PromptOverrideConfiguration must be a object',
      Properties+::: { PromptOverrideConfiguration: PromptOverrideConfiguration },
    },
    '#withRecommendedActions': d.fn('`withRecommendedActions` RecommendedActions ', [d.arg('RecommendedActions', d.T.array)]),
    withRecommendedActions(RecommendedActions): {
      assert std.isArray(RecommendedActions) : 'RecommendedActions must be a array',
      Properties+::: { RecommendedActions: RecommendedActions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTestAliasTags': d.fn('`withTestAliasTags` TestAliasTags ', [d.arg('TestAliasTags', d.T.object)]),
    withTestAliasTags(TestAliasTags): {
      assert std.isObject(TestAliasTags) : 'TestAliasTags must be a object',
      Properties+::: { TestAliasTags: TestAliasTags },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
  AgentAlias: {
    '#': d.pkg(
      name='AgentAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::AgentAlias Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::AgentAlias Resource
        * AgentAliasName Name for a resource.
        * AgentId Identifier for a resource.
      |||,
      args=[
        d.arg('AgentAliasName', 'd.T.string'),
        d.arg('AgentId', 'd.T.string'),
      ]
    ),
    new(
      AgentAliasName,
      AgentId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AgentAliasName) : 'AgentAliasName must be a string',
        AgentAliasName: AgentAliasName,
        assert std.isString(AgentId) : 'AgentId must be a string',
        AgentId: AgentId,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::AgentAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAgentAliasArn': d.fn('`withAgentAliasArn` AgentAliasArn ', [d.arg('AgentAliasArn', d.T.string)]),
    withAgentAliasArn(AgentAliasArn): {
      assert std.isString(AgentAliasArn) : 'AgentAliasArn must be a string',
      Properties+::: { AgentAliasArn: AgentAliasArn },
    },
    '#withAgentAliasHistoryEvents': d.fn('`withAgentAliasHistoryEvents` AgentAliasHistoryEvents ', [d.arg('AgentAliasHistoryEvents', d.T.array)]),
    withAgentAliasHistoryEvents(AgentAliasHistoryEvents): {
      assert std.isArray(AgentAliasHistoryEvents) : 'AgentAliasHistoryEvents must be a array',
      Properties+::: { AgentAliasHistoryEvents: AgentAliasHistoryEvents },
    },
    '#withAgentAliasId': d.fn('`withAgentAliasId` AgentAliasId ', [d.arg('AgentAliasId', d.T.string)]),
    withAgentAliasId(AgentAliasId): {
      assert std.isString(AgentAliasId) : 'AgentAliasId must be a string',
      Properties+::: { AgentAliasId: AgentAliasId },
    },
    '#withAgentAliasStatus': d.fn('`withAgentAliasStatus` AgentAliasStatus ', [d.arg('AgentAliasStatus', d.T.string)]),
    withAgentAliasStatus(AgentAliasStatus): {
      assert std.isString(AgentAliasStatus) : 'AgentAliasStatus must be a string',
      Properties+::: { AgentAliasStatus: AgentAliasStatus },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
  ApplicationInferenceProfile: {
    '#': d.pkg(
      name='ApplicationInferenceProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::ApplicationInferenceProfile Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::ApplicationInferenceProfile Resource
        * InferenceProfileName 
      |||,
      args=[
        d.arg('InferenceProfileName', 'd.T.string'),
      ]
    ),
    new(
      InferenceProfileName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InferenceProfileName) : 'InferenceProfileName must be a string',
        InferenceProfileName: InferenceProfileName,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::ApplicationInferenceProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withInferenceProfileArn': d.fn('`withInferenceProfileArn` InferenceProfileArn ', [d.arg('InferenceProfileArn', d.T.string)]),
    withInferenceProfileArn(InferenceProfileArn): {
      assert std.isString(InferenceProfileArn) : 'InferenceProfileArn must be a string',
      Properties+::: { InferenceProfileArn: InferenceProfileArn },
    },
    '#withInferenceProfileId': d.fn('`withInferenceProfileId` InferenceProfileId ', [d.arg('InferenceProfileId', d.T.string)]),
    withInferenceProfileId(InferenceProfileId): {
      assert std.isString(InferenceProfileId) : 'InferenceProfileId must be a string',
      Properties+::: { InferenceProfileId: InferenceProfileId },
    },
    '#withInferenceProfileIdentifier': d.fn('`withInferenceProfileIdentifier` InferenceProfileIdentifier ', [d.arg('InferenceProfileIdentifier', d.T.string)]),
    withInferenceProfileIdentifier(InferenceProfileIdentifier): {
      assert std.isString(InferenceProfileIdentifier) : 'InferenceProfileIdentifier must be a string',
      Properties+::: { InferenceProfileIdentifier: InferenceProfileIdentifier },
    },
    '#withModelSource': d.fn('`withModelSource` ModelSource ', [d.arg('ModelSource')]),
    withModelSource(ModelSource): {
      // Type: undefined
      Properties+::: { ModelSource: ModelSource },
    },
    '#withModels': d.fn('`withModels` Models ', [d.arg('Models', d.T.array)]),
    withModels(Models): {
      assert std.isArray(Models) : 'Models must be a array',
      Properties+::: { Models: Models },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
  DataSource: {
    '#': d.pkg(
      name='DataSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::DataSource Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::DataSource Resource
        * DataSourceConfiguration 
        * Name The name of the data source.
        * KnowledgeBaseId The unique identifier of the knowledge base to which to add the data source.
      |||,
      args=[
        d.arg('DataSourceConfiguration', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
        d.arg('KnowledgeBaseId', 'd.T.string'),
      ]
    ),
    new(
      DataSourceConfiguration,
      Name,
      KnowledgeBaseId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DataSourceConfiguration) : 'DataSourceConfiguration must be a object',
        DataSourceConfiguration: DataSourceConfiguration,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(KnowledgeBaseId) : 'KnowledgeBaseId must be a string',
        KnowledgeBaseId: KnowledgeBaseId,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::DataSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDataSourceId': d.fn('`withDataSourceId` DataSourceId ', [d.arg('DataSourceId', d.T.string)]),
    withDataSourceId(DataSourceId): {
      assert std.isString(DataSourceId) : 'DataSourceId must be a string',
      Properties+::: { DataSourceId: DataSourceId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDataSourceStatus': d.fn('`withDataSourceStatus` DataSourceStatus ', [d.arg('DataSourceStatus', d.T.string)]),
    withDataSourceStatus(DataSourceStatus): {
      assert std.isString(DataSourceStatus) : 'DataSourceStatus must be a string',
      Properties+::: { DataSourceStatus: DataSourceStatus },
    },
    '#withServerSideEncryptionConfiguration': d.fn('`withServerSideEncryptionConfiguration` ServerSideEncryptionConfiguration ', [d.arg('ServerSideEncryptionConfiguration', d.T.object)]),
    withServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
      assert std.isObject(ServerSideEncryptionConfiguration) : 'ServerSideEncryptionConfiguration must be a object',
      Properties+::: { ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration },
    },
    '#withVectorIngestionConfiguration': d.fn('`withVectorIngestionConfiguration` VectorIngestionConfiguration ', [d.arg('VectorIngestionConfiguration', d.T.object)]),
    withVectorIngestionConfiguration(VectorIngestionConfiguration): {
      assert std.isObject(VectorIngestionConfiguration) : 'VectorIngestionConfiguration must be a object',
      Properties+::: { VectorIngestionConfiguration: VectorIngestionConfiguration },
    },
    '#withDataDeletionPolicy': d.fn('`withDataDeletionPolicy` DataDeletionPolicy ', [d.arg('DataDeletionPolicy', d.T.string)]),
    withDataDeletionPolicy(DataDeletionPolicy): {
      assert std.isString(DataDeletionPolicy) : 'DataDeletionPolicy must be a string',
      Properties+::: { DataDeletionPolicy: DataDeletionPolicy },
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
    '#withFailureReasons': d.fn('`withFailureReasons` FailureReasons ', [d.arg('FailureReasons', d.T.array)]),
    withFailureReasons(FailureReasons): {
      assert std.isArray(FailureReasons) : 'FailureReasons must be a array',
      Properties+::: { FailureReasons: FailureReasons },
    },
  },
  Flow: {
    '#': d.pkg(
      name='Flow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::Flow Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::Flow Resource
        * ExecutionRoleArn ARN of a IAM role
        * Name Name for the flow
      |||,
      args=[
        d.arg('ExecutionRoleArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ExecutionRoleArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
        ExecutionRoleArn: ExecutionRoleArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::Flow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.object)]),
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: { Definition: Definition },
    },
    '#withDefinitionString': d.fn('`withDefinitionString` DefinitionString ', [d.arg('DefinitionString', d.T.string)]),
    withDefinitionString(DefinitionString): {
      assert std.isString(DefinitionString) : 'DefinitionString must be a string',
      Properties+::: { DefinitionString: DefinitionString },
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
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withCustomerEncryptionKeyArn': d.fn('`withCustomerEncryptionKeyArn` CustomerEncryptionKeyArn ', [d.arg('CustomerEncryptionKeyArn', d.T.string)]),
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: { CustomerEncryptionKeyArn: CustomerEncryptionKeyArn },
    },
    '#withValidations': d.fn('`withValidations` Validations ', [d.arg('Validations', d.T.array)]),
    withValidations(Validations): {
      assert std.isArray(Validations) : 'Validations must be a array',
      Properties+::: { Validations: Validations },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTestAliasTags': d.fn('`withTestAliasTags` TestAliasTags ', [d.arg('TestAliasTags', d.T.object)]),
    withTestAliasTags(TestAliasTags): {
      assert std.isObject(TestAliasTags) : 'TestAliasTags must be a object',
      Properties+::: { TestAliasTags: TestAliasTags },
    },
  },
  FlowAlias: {
    '#': d.pkg(
      name='FlowAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::FlowAlias Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::FlowAlias Resource
        * Name Name for a resource.
        * FlowArn Arn representation of the Flow
        * RoutingConfiguration Routing configuration for a Flow alias.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('FlowArn', 'd.T.string'),
        d.arg('RoutingConfiguration', 'd.T.array'),
      ]
    ),
    new(
      Name,
      FlowArn,
      RoutingConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(FlowArn) : 'FlowArn must be a string',
        FlowArn: FlowArn,
        assert std.isArray(RoutingConfiguration) : 'RoutingConfiguration must be a array',
        RoutingConfiguration: RoutingConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::FlowAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFlowId': d.fn('`withFlowId` FlowId ', [d.arg('FlowId', d.T.string)]),
    withFlowId(FlowId): {
      assert std.isString(FlowId) : 'FlowId must be a string',
      Properties+::: { FlowId: FlowId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  FlowVersion: {
    '#': d.pkg(
      name='FlowVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::FlowVersion Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::FlowVersion Resource
        * FlowArn Arn representation of the Flow
      |||,
      args=[
        d.arg('FlowArn', 'd.T.string'),
      ]
    ),
    new(
      FlowArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowArn) : 'FlowArn must be a string',
        FlowArn: FlowArn,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::FlowVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition', d.T.object)]),
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: { Definition: Definition },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withFlowId': d.fn('`withFlowId` FlowId ', [d.arg('FlowId', d.T.string)]),
    withFlowId(FlowId): {
      assert std.isString(FlowId) : 'FlowId must be a string',
      Properties+::: { FlowId: FlowId },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withCustomerEncryptionKeyArn': d.fn('`withCustomerEncryptionKeyArn` CustomerEncryptionKeyArn ', [d.arg('CustomerEncryptionKeyArn', d.T.string)]),
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: { CustomerEncryptionKeyArn: CustomerEncryptionKeyArn },
    },
  },
  Guardrail: {
    '#': d.pkg(
      name='Guardrail',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::Guardrail Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::Guardrail Resource
        * Name Name of the guardrail
        * BlockedInputMessaging Messaging for when violations are detected in text
        * BlockedOutputsMessaging Messaging for when violations are detected in text
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('BlockedInputMessaging', 'd.T.string'),
        d.arg('BlockedOutputsMessaging', 'd.T.string'),
      ]
    ),
    new(
      Name,
      BlockedInputMessaging,
      BlockedOutputsMessaging,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(BlockedInputMessaging) : 'BlockedInputMessaging must be a string',
        BlockedInputMessaging: BlockedInputMessaging,
        assert std.isString(BlockedOutputsMessaging) : 'BlockedOutputsMessaging must be a string',
        BlockedOutputsMessaging: BlockedOutputsMessaging,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::Guardrail',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContentPolicyConfig': d.fn('`withContentPolicyConfig` ContentPolicyConfig ', [d.arg('ContentPolicyConfig', d.T.object)]),
    withContentPolicyConfig(ContentPolicyConfig): {
      assert std.isObject(ContentPolicyConfig) : 'ContentPolicyConfig must be a object',
      Properties+::: { ContentPolicyConfig: ContentPolicyConfig },
    },
    '#withContextualGroundingPolicyConfig': d.fn('`withContextualGroundingPolicyConfig` ContextualGroundingPolicyConfig ', [d.arg('ContextualGroundingPolicyConfig', d.T.object)]),
    withContextualGroundingPolicyConfig(ContextualGroundingPolicyConfig): {
      assert std.isObject(ContextualGroundingPolicyConfig) : 'ContextualGroundingPolicyConfig must be a object',
      Properties+::: { ContextualGroundingPolicyConfig: ContextualGroundingPolicyConfig },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFailureRecommendations': d.fn('`withFailureRecommendations` FailureRecommendations ', [d.arg('FailureRecommendations', d.T.array)]),
    withFailureRecommendations(FailureRecommendations): {
      assert std.isArray(FailureRecommendations) : 'FailureRecommendations must be a array',
      Properties+::: { FailureRecommendations: FailureRecommendations },
    },
    '#withGuardrailArn': d.fn('`withGuardrailArn` GuardrailArn ', [d.arg('GuardrailArn', d.T.string)]),
    withGuardrailArn(GuardrailArn): {
      assert std.isString(GuardrailArn) : 'GuardrailArn must be a string',
      Properties+::: { GuardrailArn: GuardrailArn },
    },
    '#withGuardrailId': d.fn('`withGuardrailId` GuardrailId ', [d.arg('GuardrailId', d.T.string)]),
    withGuardrailId(GuardrailId): {
      assert std.isString(GuardrailId) : 'GuardrailId must be a string',
      Properties+::: { GuardrailId: GuardrailId },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withSensitiveInformationPolicyConfig': d.fn('`withSensitiveInformationPolicyConfig` SensitiveInformationPolicyConfig ', [d.arg('SensitiveInformationPolicyConfig', d.T.object)]),
    withSensitiveInformationPolicyConfig(SensitiveInformationPolicyConfig): {
      assert std.isObject(SensitiveInformationPolicyConfig) : 'SensitiveInformationPolicyConfig must be a object',
      Properties+::: { SensitiveInformationPolicyConfig: SensitiveInformationPolicyConfig },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusReasons': d.fn('`withStatusReasons` StatusReasons ', [d.arg('StatusReasons', d.T.array)]),
    withStatusReasons(StatusReasons): {
      assert std.isArray(StatusReasons) : 'StatusReasons must be a array',
      Properties+::: { StatusReasons: StatusReasons },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTopicPolicyConfig': d.fn('`withTopicPolicyConfig` TopicPolicyConfig ', [d.arg('TopicPolicyConfig', d.T.object)]),
    withTopicPolicyConfig(TopicPolicyConfig): {
      assert std.isObject(TopicPolicyConfig) : 'TopicPolicyConfig must be a object',
      Properties+::: { TopicPolicyConfig: TopicPolicyConfig },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withWordPolicyConfig': d.fn('`withWordPolicyConfig` WordPolicyConfig ', [d.arg('WordPolicyConfig', d.T.object)]),
    withWordPolicyConfig(WordPolicyConfig): {
      assert std.isObject(WordPolicyConfig) : 'WordPolicyConfig must be a object',
      Properties+::: { WordPolicyConfig: WordPolicyConfig },
    },
  },
  GuardrailVersion: {
    '#': d.pkg(
      name='GuardrailVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::GuardrailVersion Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::GuardrailVersion Resource
        * GuardrailIdentifier Identifier (GuardrailId or GuardrailArn) for the guardrail
      |||,
      args=[
        d.arg('GuardrailIdentifier', 'd.T.string'),
      ]
    ),
    new(
      GuardrailIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GuardrailIdentifier) : 'GuardrailIdentifier must be a string',
        GuardrailIdentifier: GuardrailIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::GuardrailVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withGuardrailArn': d.fn('`withGuardrailArn` GuardrailArn ', [d.arg('GuardrailArn', d.T.string)]),
    withGuardrailArn(GuardrailArn): {
      assert std.isString(GuardrailArn) : 'GuardrailArn must be a string',
      Properties+::: { GuardrailArn: GuardrailArn },
    },
    '#withGuardrailId': d.fn('`withGuardrailId` GuardrailId ', [d.arg('GuardrailId', d.T.string)]),
    withGuardrailId(GuardrailId): {
      assert std.isString(GuardrailId) : 'GuardrailId must be a string',
      Properties+::: { GuardrailId: GuardrailId },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
  },
  KnowledgeBase: {
    '#': d.pkg(
      name='KnowledgeBase',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::KnowledgeBase Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::KnowledgeBase Resource
        * KnowledgeBaseConfiguration 
        * Name The name of the knowledge base.
        * RoleArn The ARN of the IAM role with permissions to invoke API operations on the knowledge base. The ARN must begin with AmazonBedrockExecutionRoleForKnowledgeBase_
        * StorageConfiguration 
      |||,
      args=[
        d.arg('KnowledgeBaseConfiguration', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('StorageConfiguration', 'd.T.object'),
      ]
    ),
    new(
      KnowledgeBaseConfiguration,
      Name,
      RoleArn,
      StorageConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(KnowledgeBaseConfiguration) : 'KnowledgeBaseConfiguration must be a object',
        KnowledgeBaseConfiguration: KnowledgeBaseConfiguration,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(StorageConfiguration) : 'StorageConfiguration must be a object',
        StorageConfiguration: StorageConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::KnowledgeBase',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKnowledgeBaseId': d.fn('`withKnowledgeBaseId` KnowledgeBaseId ', [d.arg('KnowledgeBaseId', d.T.string)]),
    withKnowledgeBaseId(KnowledgeBaseId): {
      assert std.isString(KnowledgeBaseId) : 'KnowledgeBaseId must be a string',
      Properties+::: { KnowledgeBaseId: KnowledgeBaseId },
    },
    '#withKnowledgeBaseArn': d.fn('`withKnowledgeBaseArn` KnowledgeBaseArn ', [d.arg('KnowledgeBaseArn', d.T.string)]),
    withKnowledgeBaseArn(KnowledgeBaseArn): {
      assert std.isString(KnowledgeBaseArn) : 'KnowledgeBaseArn must be a string',
      Properties+::: { KnowledgeBaseArn: KnowledgeBaseArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withFailureReasons': d.fn('`withFailureReasons` FailureReasons ', [d.arg('FailureReasons', d.T.array)]),
    withFailureReasons(FailureReasons): {
      assert std.isArray(FailureReasons) : 'FailureReasons must be a array',
      Properties+::: { FailureReasons: FailureReasons },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Prompt: {
    '#': d.pkg(
      name='Prompt',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::Prompt Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::Prompt Resource
        * Name Name for a prompt resource.
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
      Type: 'AWS::Bedrock::Prompt',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDefaultVariant': d.fn('`withDefaultVariant` DefaultVariant ', [d.arg('DefaultVariant', d.T.string)]),
    withDefaultVariant(DefaultVariant): {
      assert std.isString(DefaultVariant) : 'DefaultVariant must be a string',
      Properties+::: { DefaultVariant: DefaultVariant },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withVariants': d.fn('`withVariants` Variants ', [d.arg('Variants', d.T.array)]),
    withVariants(Variants): {
      assert std.isArray(Variants) : 'Variants must be a array',
      Properties+::: { Variants: Variants },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withCustomerEncryptionKeyArn': d.fn('`withCustomerEncryptionKeyArn` CustomerEncryptionKeyArn ', [d.arg('CustomerEncryptionKeyArn', d.T.string)]),
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: { CustomerEncryptionKeyArn: CustomerEncryptionKeyArn },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
  },
  PromptVersion: {
    '#': d.pkg(
      name='PromptVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Bedrock.libsonnet',
      help='Definition of AWS::Bedrock::PromptVersion Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Bedrock::PromptVersion Resource
        * PromptArn ARN of a prompt resource possibly with a version
      |||,
      args=[
        d.arg('PromptArn', 'd.T.string'),
      ]
    ),
    new(
      PromptArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PromptArn) : 'PromptArn must be a string',
        PromptArn: PromptArn,
      },
      DependsOn:: [],
      Type: 'AWS::Bedrock::PromptVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withPromptId': d.fn('`withPromptId` PromptId ', [d.arg('PromptId', d.T.string)]),
    withPromptId(PromptId): {
      assert std.isString(PromptId) : 'PromptId must be a string',
      Properties+::: { PromptId: PromptId },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withVariants': d.fn('`withVariants` Variants ', [d.arg('Variants', d.T.array)]),
    withVariants(Variants): {
      assert std.isArray(Variants) : 'Variants must be a array',
      Properties+::: { Variants: Variants },
    },
    '#withDefaultVariant': d.fn('`withDefaultVariant` DefaultVariant ', [d.arg('DefaultVariant', d.T.string)]),
    withDefaultVariant(DefaultVariant): {
      assert std.isString(DefaultVariant) : 'DefaultVariant must be a string',
      Properties+::: { DefaultVariant: DefaultVariant },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCustomerEncryptionKeyArn': d.fn('`withCustomerEncryptionKeyArn` CustomerEncryptionKeyArn ', [d.arg('CustomerEncryptionKeyArn', d.T.string)]),
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: { CustomerEncryptionKeyArn: CustomerEncryptionKeyArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
