local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ComponentType: {
    '#': d.pkg(
      name='ComponentType',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTTwinMaker.libsonnet',
      help='Resource schema for AWS::IoTTwinMaker::ComponentType',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTTwinMaker::ComponentType Resource
        * WorkspaceId The ID of the workspace that contains the component type.
        * ComponentTypeId The ID of the component type.
      |||,
      args=[
        d.arg('WorkspaceId', 'd.T.string'),
        d.arg('ComponentTypeId', 'd.T.string'),
      ]
    ),
    new(
      WorkspaceId,
      ComponentTypeId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(ComponentTypeId) : 'ComponentTypeId must be a string',
        ComponentTypeId: ComponentTypeId,
      },
      DependsOn:: [],
      Type: 'AWS::IoTTwinMaker::ComponentType',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withExtendsFrom': d.fn('`withExtendsFrom` ExtendsFrom ', [d.arg('ExtendsFrom', d.T.array)]),
    withExtendsFrom(ExtendsFrom): {
      assert std.isArray(ExtendsFrom) : 'ExtendsFrom must be a array',
      Properties+::: { ExtendsFrom: ExtendsFrom },
    },
    '#withFunctions': d.fn('`withFunctions` Functions ', [d.arg('Functions', d.T.object)]),
    withFunctions(Functions): {
      assert std.isObject(Functions) : 'Functions must be a object',
      Properties+::: { Functions: Functions },
    },
    '#withIsSingleton': d.fn('`withIsSingleton` IsSingleton ', [d.arg('IsSingleton', d.T.boolean)]),
    withIsSingleton(IsSingleton): {
      assert std.isBoolean(IsSingleton) : 'IsSingleton must be a boolean',
      Properties+::: { IsSingleton: IsSingleton },
    },
    '#withPropertyDefinitions': d.fn('`withPropertyDefinitions` PropertyDefinitions ', [d.arg('PropertyDefinitions', d.T.object)]),
    withPropertyDefinitions(PropertyDefinitions): {
      assert std.isObject(PropertyDefinitions) : 'PropertyDefinitions must be a object',
      Properties+::: { PropertyDefinitions: PropertyDefinitions },
    },
    '#withPropertyGroups': d.fn('`withPropertyGroups` PropertyGroups ', [d.arg('PropertyGroups', d.T.object)]),
    withPropertyGroups(PropertyGroups): {
      assert std.isObject(PropertyGroups) : 'PropertyGroups must be a object',
      Properties+::: { PropertyGroups: PropertyGroups },
    },
    '#withCompositeComponentTypes': d.fn('`withCompositeComponentTypes` CompositeComponentTypes ', [d.arg('CompositeComponentTypes', d.T.object)]),
    withCompositeComponentTypes(CompositeComponentTypes): {
      assert std.isObject(CompositeComponentTypes) : 'CompositeComponentTypes must be a object',
      Properties+::: { CompositeComponentTypes: CompositeComponentTypes },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationDateTime': d.fn('`withCreationDateTime` CreationDateTime ', [d.arg('CreationDateTime', d.T.string)]),
    withCreationDateTime(CreationDateTime): {
      assert std.isString(CreationDateTime) : 'CreationDateTime must be a string',
      Properties+::: { CreationDateTime: CreationDateTime },
    },
    '#withUpdateDateTime': d.fn('`withUpdateDateTime` UpdateDateTime ', [d.arg('UpdateDateTime', d.T.string)]),
    withUpdateDateTime(UpdateDateTime): {
      assert std.isString(UpdateDateTime) : 'UpdateDateTime must be a string',
      Properties+::: { UpdateDateTime: UpdateDateTime },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.object)]),
    withStatus(Status): {
      assert std.isObject(Status) : 'Status must be a object',
      Properties+::: { Status: Status },
    },
    '#withIsAbstract': d.fn('`withIsAbstract` IsAbstract ', [d.arg('IsAbstract', d.T.boolean)]),
    withIsAbstract(IsAbstract): {
      assert std.isBoolean(IsAbstract) : 'IsAbstract must be a boolean',
      Properties+::: { IsAbstract: IsAbstract },
    },
    '#withIsSchemaInitialized': d.fn('`withIsSchemaInitialized` IsSchemaInitialized ', [d.arg('IsSchemaInitialized', d.T.boolean)]),
    withIsSchemaInitialized(IsSchemaInitialized): {
      assert std.isBoolean(IsSchemaInitialized) : 'IsSchemaInitialized must be a boolean',
      Properties+::: { IsSchemaInitialized: IsSchemaInitialized },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Entity: {
    '#': d.pkg(
      name='Entity',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTTwinMaker.libsonnet',
      help='Resource schema for AWS::IoTTwinMaker::Entity',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTTwinMaker::Entity Resource
        * WorkspaceId The ID of the workspace.
        * EntityName The name of the entity.
      |||,
      args=[
        d.arg('WorkspaceId', 'd.T.string'),
        d.arg('EntityName', 'd.T.string'),
      ]
    ),
    new(
      WorkspaceId,
      EntityName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(EntityName) : 'EntityName must be a string',
        EntityName: EntityName,
      },
      DependsOn:: [],
      Type: 'AWS::IoTTwinMaker::Entity',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEntityId': d.fn('`withEntityId` EntityId ', [d.arg('EntityId', d.T.string)]),
    withEntityId(EntityId): {
      assert std.isString(EntityId) : 'EntityId must be a string',
      Properties+::: { EntityId: EntityId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.object)]),
    withStatus(Status): {
      assert std.isObject(Status) : 'Status must be a object',
      Properties+::: { Status: Status },
    },
    '#withHasChildEntities': d.fn('`withHasChildEntities` HasChildEntities ', [d.arg('HasChildEntities', d.T.boolean)]),
    withHasChildEntities(HasChildEntities): {
      assert std.isBoolean(HasChildEntities) : 'HasChildEntities must be a boolean',
      Properties+::: { HasChildEntities: HasChildEntities },
    },
    '#withParentEntityId': d.fn('`withParentEntityId` ParentEntityId ', [d.arg('ParentEntityId', d.T.string)]),
    withParentEntityId(ParentEntityId): {
      assert std.isString(ParentEntityId) : 'ParentEntityId must be a string',
      Properties+::: { ParentEntityId: ParentEntityId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreationDateTime': d.fn('`withCreationDateTime` CreationDateTime ', [d.arg('CreationDateTime', d.T.string)]),
    withCreationDateTime(CreationDateTime): {
      assert std.isString(CreationDateTime) : 'CreationDateTime must be a string',
      Properties+::: { CreationDateTime: CreationDateTime },
    },
    '#withUpdateDateTime': d.fn('`withUpdateDateTime` UpdateDateTime ', [d.arg('UpdateDateTime', d.T.string)]),
    withUpdateDateTime(UpdateDateTime): {
      assert std.isString(UpdateDateTime) : 'UpdateDateTime must be a string',
      Properties+::: { UpdateDateTime: UpdateDateTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withComponents': d.fn('`withComponents` Components ', [d.arg('Components', d.T.object)]),
    withComponents(Components): {
      assert std.isObject(Components) : 'Components must be a object',
      Properties+::: { Components: Components },
    },
    '#withCompositeComponents': d.fn('`withCompositeComponents` CompositeComponents ', [d.arg('CompositeComponents', d.T.object)]),
    withCompositeComponents(CompositeComponents): {
      assert std.isObject(CompositeComponents) : 'CompositeComponents must be a object',
      Properties+::: { CompositeComponents: CompositeComponents },
    },
  },
  Scene: {
    '#': d.pkg(
      name='Scene',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTTwinMaker.libsonnet',
      help='Resource schema for AWS::IoTTwinMaker::Scene',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTTwinMaker::Scene Resource
        * WorkspaceId The ID of the scene.
        * SceneId The ID of the scene.
        * ContentLocation The relative path that specifies the location of the content definition file.
      |||,
      args=[
        d.arg('WorkspaceId', 'd.T.string'),
        d.arg('SceneId', 'd.T.string'),
        d.arg('ContentLocation', 'd.T.string'),
      ]
    ),
    new(
      WorkspaceId,
      SceneId,
      ContentLocation,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(SceneId) : 'SceneId must be a string',
        SceneId: SceneId,
        assert std.isString(ContentLocation) : 'ContentLocation must be a string',
        ContentLocation: ContentLocation,
      },
      DependsOn:: [],
      Type: 'AWS::IoTTwinMaker::Scene',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreationDateTime': d.fn('`withCreationDateTime` CreationDateTime ', [d.arg('CreationDateTime', d.T.string)]),
    withCreationDateTime(CreationDateTime): {
      assert std.isString(CreationDateTime) : 'CreationDateTime must be a string',
      Properties+::: { CreationDateTime: CreationDateTime },
    },
    '#withUpdateDateTime': d.fn('`withUpdateDateTime` UpdateDateTime ', [d.arg('UpdateDateTime', d.T.string)]),
    withUpdateDateTime(UpdateDateTime): {
      assert std.isString(UpdateDateTime) : 'UpdateDateTime must be a string',
      Properties+::: { UpdateDateTime: UpdateDateTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withCapabilities': d.fn('`withCapabilities` Capabilities ', [d.arg('Capabilities', d.T.array)]),
    withCapabilities(Capabilities): {
      assert std.isArray(Capabilities) : 'Capabilities must be a array',
      Properties+::: { Capabilities: Capabilities },
    },
    '#withSceneMetadata': d.fn('`withSceneMetadata` SceneMetadata ', [d.arg('SceneMetadata', d.T.object)]),
    withSceneMetadata(SceneMetadata): {
      assert std.isObject(SceneMetadata) : 'SceneMetadata must be a object',
      Properties+::: { SceneMetadata: SceneMetadata },
    },
    '#withGeneratedSceneMetadata': d.fn('`withGeneratedSceneMetadata` GeneratedSceneMetadata ', [d.arg('GeneratedSceneMetadata', d.T.object)]),
    withGeneratedSceneMetadata(GeneratedSceneMetadata): {
      assert std.isObject(GeneratedSceneMetadata) : 'GeneratedSceneMetadata must be a object',
      Properties+::: { GeneratedSceneMetadata: GeneratedSceneMetadata },
    },
  },
  SyncJob: {
    '#': d.pkg(
      name='SyncJob',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTTwinMaker.libsonnet',
      help='Resource schema for AWS::IoTTwinMaker::SyncJob',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTTwinMaker::SyncJob Resource
        * WorkspaceId The ID of the workspace.
        * SyncSource The source of the SyncJob.
        * SyncRole The IAM Role that execute SyncJob.
      |||,
      args=[
        d.arg('WorkspaceId', 'd.T.string'),
        d.arg('SyncSource', 'd.T.string'),
        d.arg('SyncRole', 'd.T.string'),
      ]
    ),
    new(
      WorkspaceId,
      SyncSource,
      SyncRole,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(SyncSource) : 'SyncSource must be a string',
        SyncSource: SyncSource,
        assert std.isString(SyncRole) : 'SyncRole must be a string',
        SyncRole: SyncRole,
      },
      DependsOn:: [],
      Type: 'AWS::IoTTwinMaker::SyncJob',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreationDateTime': d.fn('`withCreationDateTime` CreationDateTime ', [d.arg('CreationDateTime', d.T.string)]),
    withCreationDateTime(CreationDateTime): {
      assert std.isString(CreationDateTime) : 'CreationDateTime must be a string',
      Properties+::: { CreationDateTime: CreationDateTime },
    },
    '#withUpdateDateTime': d.fn('`withUpdateDateTime` UpdateDateTime ', [d.arg('UpdateDateTime', d.T.string)]),
    withUpdateDateTime(UpdateDateTime): {
      assert std.isString(UpdateDateTime) : 'UpdateDateTime must be a string',
      Properties+::: { UpdateDateTime: UpdateDateTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Workspace: {
    '#': d.pkg(
      name='Workspace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTTwinMaker.libsonnet',
      help='Resource schema for AWS::IoTTwinMaker::Workspace',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTTwinMaker::Workspace Resource
        * WorkspaceId The ID of the workspace.
        * Role The ARN of the execution role associated with the workspace.
        * S3Location The ARN of the S3 bucket where resources associated with the workspace are stored.
      |||,
      args=[
        d.arg('WorkspaceId', 'd.T.string'),
        d.arg('Role', 'd.T.string'),
        d.arg('S3Location', 'd.T.string'),
      ]
    ),
    new(
      WorkspaceId,
      Role,
      S3Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkspaceId) : 'WorkspaceId must be a string',
        WorkspaceId: WorkspaceId,
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isString(S3Location) : 'S3Location must be a string',
        S3Location: S3Location,
      },
      DependsOn:: [],
      Type: 'AWS::IoTTwinMaker::Workspace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreationDateTime': d.fn('`withCreationDateTime` CreationDateTime ', [d.arg('CreationDateTime', d.T.string)]),
    withCreationDateTime(CreationDateTime): {
      assert std.isString(CreationDateTime) : 'CreationDateTime must be a string',
      Properties+::: { CreationDateTime: CreationDateTime },
    },
    '#withUpdateDateTime': d.fn('`withUpdateDateTime` UpdateDateTime ', [d.arg('UpdateDateTime', d.T.string)]),
    withUpdateDateTime(UpdateDateTime): {
      assert std.isString(UpdateDateTime) : 'UpdateDateTime must be a string',
      Properties+::: { UpdateDateTime: UpdateDateTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
