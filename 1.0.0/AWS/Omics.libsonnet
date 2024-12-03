local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AnnotationStore: {
    '#': d.pkg(
      name='AnnotationStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Omics.libsonnet',
      help='Definition of AWS::Omics::AnnotationStore Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Omics::AnnotationStore Resource
        * Name 
        * StoreFormat 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('StoreFormat', 'd.T.string'),
      ]
    ),
    new(
      Name,
      StoreFormat,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(StoreFormat) : 'StoreFormat must be a string',
        StoreFormat: StoreFormat,
      },
      DependsOn:: [],
      Type: 'AWS::Omics::AnnotationStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
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
    '#withReference': d.fn('`withReference` Reference ', [d.arg('Reference', d.T.object)]),
    withReference(Reference): {
      assert std.isObject(Reference) : 'Reference must be a object',
      Properties+::: { Reference: Reference },
    },
    '#withSseConfig': d.fn('`withSseConfig` SseConfig ', [d.arg('SseConfig', d.T.object)]),
    withSseConfig(SseConfig): {
      assert std.isObject(SseConfig) : 'SseConfig must be a object',
      Properties+::: { SseConfig: SseConfig },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withStoreArn': d.fn('`withStoreArn` StoreArn ', [d.arg('StoreArn', d.T.string)]),
    withStoreArn(StoreArn): {
      assert std.isString(StoreArn) : 'StoreArn must be a string',
      Properties+::: { StoreArn: StoreArn },
    },
    '#withStoreOptions': d.fn('`withStoreOptions` StoreOptions ', [d.arg('StoreOptions')]),
    withStoreOptions(StoreOptions): {
      // Type: undefined
      Properties+::: { StoreOptions: StoreOptions },
    },
    '#withStoreSizeBytes': d.fn('`withStoreSizeBytes` StoreSizeBytes ', [d.arg('StoreSizeBytes', d.T.integer)]),
    withStoreSizeBytes(StoreSizeBytes): {
      // Type: number
      Properties+::: { StoreSizeBytes: StoreSizeBytes },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
  },
  ReferenceStore: {
    '#': d.pkg(
      name='ReferenceStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Omics.libsonnet',
      help='Definition of AWS::Omics::ReferenceStore Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Omics::ReferenceStore Resource
        * Name A name for the store.
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
      Type: 'AWS::Omics::ReferenceStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withReferenceStoreId': d.fn('`withReferenceStoreId` ReferenceStoreId ', [d.arg('ReferenceStoreId', d.T.string)]),
    withReferenceStoreId(ReferenceStoreId): {
      assert std.isString(ReferenceStoreId) : 'ReferenceStoreId must be a string',
      Properties+::: { ReferenceStoreId: ReferenceStoreId },
    },
    '#withSseConfig': d.fn('`withSseConfig` SseConfig ', [d.arg('SseConfig', d.T.object)]),
    withSseConfig(SseConfig): {
      assert std.isObject(SseConfig) : 'SseConfig must be a object',
      Properties+::: { SseConfig: SseConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  RunGroup: {
    '#': d.pkg(
      name='RunGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Omics.libsonnet',
      help='Definition of AWS::Omics::RunGroup Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Omics::RunGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Omics::RunGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMaxCpus': d.fn('`withMaxCpus` MaxCpus ', [d.arg('MaxCpus', d.T.integer)]),
    withMaxCpus(MaxCpus): {
      // Type: number
      Properties+::: { MaxCpus: MaxCpus },
    },
    '#withMaxGpus': d.fn('`withMaxGpus` MaxGpus ', [d.arg('MaxGpus', d.T.integer)]),
    withMaxGpus(MaxGpus): {
      // Type: number
      Properties+::: { MaxGpus: MaxGpus },
    },
    '#withMaxDuration': d.fn('`withMaxDuration` MaxDuration ', [d.arg('MaxDuration', d.T.integer)]),
    withMaxDuration(MaxDuration): {
      // Type: number
      Properties+::: { MaxDuration: MaxDuration },
    },
    '#withMaxRuns': d.fn('`withMaxRuns` MaxRuns ', [d.arg('MaxRuns', d.T.integer)]),
    withMaxRuns(MaxRuns): {
      // Type: number
      Properties+::: { MaxRuns: MaxRuns },
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
  SequenceStore: {
    '#': d.pkg(
      name='SequenceStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Omics.libsonnet',
      help='Definition of AWS::Omics::SequenceStore Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Omics::SequenceStore Resource
        * Name A name for the store.
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
      Type: 'AWS::Omics::SequenceStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFallbackLocation': d.fn('`withFallbackLocation` FallbackLocation ', [d.arg('FallbackLocation', d.T.string)]),
    withFallbackLocation(FallbackLocation): {
      assert std.isString(FallbackLocation) : 'FallbackLocation must be a string',
      Properties+::: { FallbackLocation: FallbackLocation },
    },
    '#withSequenceStoreId': d.fn('`withSequenceStoreId` SequenceStoreId ', [d.arg('SequenceStoreId', d.T.string)]),
    withSequenceStoreId(SequenceStoreId): {
      assert std.isString(SequenceStoreId) : 'SequenceStoreId must be a string',
      Properties+::: { SequenceStoreId: SequenceStoreId },
    },
    '#withSseConfig': d.fn('`withSseConfig` SseConfig ', [d.arg('SseConfig', d.T.object)]),
    withSseConfig(SseConfig): {
      assert std.isObject(SseConfig) : 'SseConfig must be a object',
      Properties+::: { SseConfig: SseConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  VariantStore: {
    '#': d.pkg(
      name='VariantStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Omics.libsonnet',
      help='Definition of AWS::Omics::VariantStore Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Omics::VariantStore Resource
        * Name 
        * Reference 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Reference', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Reference,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Reference) : 'Reference must be a object',
        Reference: Reference,
      },
      DependsOn:: [],
      Type: 'AWS::Omics::VariantStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
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
    '#withSseConfig': d.fn('`withSseConfig` SseConfig ', [d.arg('SseConfig', d.T.object)]),
    withSseConfig(SseConfig): {
      assert std.isObject(SseConfig) : 'SseConfig must be a object',
      Properties+::: { SseConfig: SseConfig },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withStoreArn': d.fn('`withStoreArn` StoreArn ', [d.arg('StoreArn', d.T.string)]),
    withStoreArn(StoreArn): {
      assert std.isString(StoreArn) : 'StoreArn must be a string',
      Properties+::: { StoreArn: StoreArn },
    },
    '#withStoreSizeBytes': d.fn('`withStoreSizeBytes` StoreSizeBytes ', [d.arg('StoreSizeBytes', d.T.integer)]),
    withStoreSizeBytes(StoreSizeBytes): {
      // Type: number
      Properties+::: { StoreSizeBytes: StoreSizeBytes },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
  },
  Workflow: {
    '#': d.pkg(
      name='Workflow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Omics.libsonnet',
      help='Definition of AWS::Omics::Workflow Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Omics::Workflow Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Omics::Workflow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withDefinitionUri': d.fn('`withDefinitionUri` DefinitionUri ', [d.arg('DefinitionUri', d.T.string)]),
    withDefinitionUri(DefinitionUri): {
      assert std.isString(DefinitionUri) : 'DefinitionUri must be a string',
      Properties+::: { DefinitionUri: DefinitionUri },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMain': d.fn('`withMain` Main ', [d.arg('Main', d.T.string)]),
    withMain(Main): {
      assert std.isString(Main) : 'Main must be a string',
      Properties+::: { Main: Main },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withParameterTemplate': d.fn('`withParameterTemplate` ParameterTemplate ', [d.arg('ParameterTemplate', d.T.object)]),
    withParameterTemplate(ParameterTemplate): {
      assert std.isObject(ParameterTemplate) : 'ParameterTemplate must be a object',
      Properties+::: { ParameterTemplate: ParameterTemplate },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withAccelerators': d.fn('`withAccelerators` Accelerators ', [d.arg('Accelerators', d.T.string)]),
    withAccelerators(Accelerators): {
      assert std.isString(Accelerators) : 'Accelerators must be a string',
      Properties+::: { Accelerators: Accelerators },
    },
    '#withStorageCapacity': d.fn('`withStorageCapacity` StorageCapacity ', [d.arg('StorageCapacity', d.T.integer)]),
    withStorageCapacity(StorageCapacity): {
      // Type: number
      Properties+::: { StorageCapacity: StorageCapacity },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
  },
}
