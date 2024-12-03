local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Campaign: {
    '#': d.pkg(
      name='Campaign',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::Campaign Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::Campaign Resource
        * Name 
        * CollectionScheme 
        * SignalCatalogArn 
        * TargetArn 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('CollectionScheme', ''),
        d.arg('SignalCatalogArn', 'd.T.string'),
        d.arg('TargetArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      CollectionScheme,
      SignalCatalogArn,
      TargetArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        // Type: undefined
        CollectionScheme: CollectionScheme,
        assert std.isString(SignalCatalogArn) : 'SignalCatalogArn must be a string',
        SignalCatalogArn: SignalCatalogArn,
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::Campaign',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withAction': d.fn('`withAction` Action ', [d.arg('Action', d.T.string)]),
    withAction(Action): {
      assert std.isString(Action) : 'Action must be a string',
      Properties+::: { Action: Action },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withCompression': d.fn('`withCompression` Compression ', [d.arg('Compression', d.T.string)]),
    withCompression(Compression): {
      assert std.isString(Compression) : 'Compression must be a string',
      Properties+::: { Compression: Compression },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPriority': d.fn('`withPriority` Priority ', [d.arg('Priority', d.T.integer)]),
    withPriority(Priority): {
      assert std.isNumber(Priority) : 'Priority must be a integer',
      Properties+::: { Priority: Priority },
    },
    '#withSignalsToCollect': d.fn('`withSignalsToCollect` SignalsToCollect ', [d.arg('SignalsToCollect', d.T.array)]),
    withSignalsToCollect(SignalsToCollect): {
      assert std.isArray(SignalsToCollect) : 'SignalsToCollect must be a array',
      Properties+::: { SignalsToCollect: SignalsToCollect },
    },
    '#withSignalsToFetch': d.fn('`withSignalsToFetch` SignalsToFetch ', [d.arg('SignalsToFetch', d.T.array)]),
    withSignalsToFetch(SignalsToFetch): {
      assert std.isArray(SignalsToFetch) : 'SignalsToFetch must be a array',
      Properties+::: { SignalsToFetch: SignalsToFetch },
    },
    '#withDataDestinationConfigs': d.fn('`withDataDestinationConfigs` DataDestinationConfigs ', [d.arg('DataDestinationConfigs', d.T.array)]),
    withDataDestinationConfigs(DataDestinationConfigs): {
      assert std.isArray(DataDestinationConfigs) : 'DataDestinationConfigs must be a array',
      Properties+::: { DataDestinationConfigs: DataDestinationConfigs },
    },
    '#withStartTime': d.fn('`withStartTime` StartTime ', [d.arg('StartTime', d.T.string)]),
    withStartTime(StartTime): {
      assert std.isString(StartTime) : 'StartTime must be a string',
      Properties+::: { StartTime: StartTime },
    },
    '#withExpiryTime': d.fn('`withExpiryTime` ExpiryTime ', [d.arg('ExpiryTime', d.T.string)]),
    withExpiryTime(ExpiryTime): {
      assert std.isString(ExpiryTime) : 'ExpiryTime must be a string',
      Properties+::: { ExpiryTime: ExpiryTime },
    },
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withSpoolingMode': d.fn('`withSpoolingMode` SpoolingMode ', [d.arg('SpoolingMode', d.T.string)]),
    withSpoolingMode(SpoolingMode): {
      assert std.isString(SpoolingMode) : 'SpoolingMode must be a string',
      Properties+::: { SpoolingMode: SpoolingMode },
    },
    '#withPostTriggerCollectionDuration': d.fn('`withPostTriggerCollectionDuration` PostTriggerCollectionDuration ', [d.arg('PostTriggerCollectionDuration', d.T.integer)]),
    withPostTriggerCollectionDuration(PostTriggerCollectionDuration): {
      // Type: number
      Properties+::: { PostTriggerCollectionDuration: PostTriggerCollectionDuration },
    },
    '#withDataExtraDimensions': d.fn('`withDataExtraDimensions` DataExtraDimensions ', [d.arg('DataExtraDimensions', d.T.array)]),
    withDataExtraDimensions(DataExtraDimensions): {
      assert std.isArray(DataExtraDimensions) : 'DataExtraDimensions must be a array',
      Properties+::: { DataExtraDimensions: DataExtraDimensions },
    },
    '#withDiagnosticsMode': d.fn('`withDiagnosticsMode` DiagnosticsMode ', [d.arg('DiagnosticsMode', d.T.string)]),
    withDiagnosticsMode(DiagnosticsMode): {
      assert std.isString(DiagnosticsMode) : 'DiagnosticsMode must be a string',
      Properties+::: { DiagnosticsMode: DiagnosticsMode },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDataPartitions': d.fn('`withDataPartitions` DataPartitions ', [d.arg('DataPartitions', d.T.array)]),
    withDataPartitions(DataPartitions): {
      assert std.isArray(DataPartitions) : 'DataPartitions must be a array',
      Properties+::: { DataPartitions: DataPartitions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DecoderManifest: {
    '#': d.pkg(
      name='DecoderManifest',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::DecoderManifest Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::DecoderManifest Resource
        * Name 
        * ModelManifestArn 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ModelManifestArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      ModelManifestArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ModelManifestArn) : 'ModelManifestArn must be a string',
        ModelManifestArn: ModelManifestArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::DecoderManifest',
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
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withNetworkInterfaces': d.fn('`withNetworkInterfaces` NetworkInterfaces ', [d.arg('NetworkInterfaces', d.T.array)]),
    withNetworkInterfaces(NetworkInterfaces): {
      assert std.isArray(NetworkInterfaces) : 'NetworkInterfaces must be a array',
      Properties+::: { NetworkInterfaces: NetworkInterfaces },
    },
    '#withSignalDecoders': d.fn('`withSignalDecoders` SignalDecoders ', [d.arg('SignalDecoders', d.T.array)]),
    withSignalDecoders(SignalDecoders): {
      assert std.isArray(SignalDecoders) : 'SignalDecoders must be a array',
      Properties+::: { SignalDecoders: SignalDecoders },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withDefaultForUnmappedSignals': d.fn('`withDefaultForUnmappedSignals` DefaultForUnmappedSignals ', [d.arg('DefaultForUnmappedSignals', d.T.string)]),
    withDefaultForUnmappedSignals(DefaultForUnmappedSignals): {
      assert std.isString(DefaultForUnmappedSignals) : 'DefaultForUnmappedSignals must be a string',
      Properties+::: { DefaultForUnmappedSignals: DefaultForUnmappedSignals },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Fleet: {
    '#': d.pkg(
      name='Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::Fleet Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::Fleet Resource
        * Id 
        * SignalCatalogArn 
      |||,
      args=[
        d.arg('Id', 'd.T.string'),
        d.arg('SignalCatalogArn', 'd.T.string'),
      ]
    ),
    new(
      Id,
      SignalCatalogArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Id) : 'Id must be a string',
        Id: Id,
        assert std.isString(SignalCatalogArn) : 'SignalCatalogArn must be a string',
        SignalCatalogArn: SignalCatalogArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::Fleet',
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
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ModelManifest: {
    '#': d.pkg(
      name='ModelManifest',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::ModelManifest Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::ModelManifest Resource
        * SignalCatalogArn 
        * Name 
      |||,
      args=[
        d.arg('SignalCatalogArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      SignalCatalogArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SignalCatalogArn) : 'SignalCatalogArn must be a string',
        SignalCatalogArn: SignalCatalogArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::ModelManifest',
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
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withNodes': d.fn('`withNodes` Nodes ', [d.arg('Nodes', d.T.array)]),
    withNodes(Nodes): {
      assert std.isArray(Nodes) : 'Nodes must be a array',
      Properties+::: { Nodes: Nodes },
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
  },
  SignalCatalog: {
    '#': d.pkg(
      name='SignalCatalog',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::SignalCatalog Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::SignalCatalog Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::SignalCatalog',
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
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withNodeCounts': d.fn('`withNodeCounts` NodeCounts ', [d.arg('NodeCounts', d.T.object)]),
    withNodeCounts(NodeCounts): {
      assert std.isObject(NodeCounts) : 'NodeCounts must be a object',
      Properties+::: { NodeCounts: NodeCounts },
    },
    '#withNodes': d.fn('`withNodes` Nodes ', [d.arg('Nodes', d.T.array)]),
    withNodes(Nodes): {
      assert std.isArray(Nodes) : 'Nodes must be a array',
      Properties+::: { Nodes: Nodes },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  StateTemplate: {
    '#': d.pkg(
      name='StateTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::StateTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::StateTemplate Resource
        * Name 
        * SignalCatalogArn 
        * StateTemplateProperties 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('SignalCatalogArn', 'd.T.string'),
        d.arg('StateTemplateProperties', 'd.T.array'),
      ]
    ),
    new(
      Name,
      SignalCatalogArn,
      StateTemplateProperties,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(SignalCatalogArn) : 'SignalCatalogArn must be a string',
        SignalCatalogArn: SignalCatalogArn,
        assert std.isArray(StateTemplateProperties) : 'StateTemplateProperties must be a array',
        StateTemplateProperties: StateTemplateProperties,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::StateTemplate',
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
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withDataExtraDimensions': d.fn('`withDataExtraDimensions` DataExtraDimensions ', [d.arg('DataExtraDimensions', d.T.array)]),
    withDataExtraDimensions(DataExtraDimensions): {
      assert std.isArray(DataExtraDimensions) : 'DataExtraDimensions must be a array',
      Properties+::: { DataExtraDimensions: DataExtraDimensions },
    },
    '#withMetadataExtraDimensions': d.fn('`withMetadataExtraDimensions` MetadataExtraDimensions ', [d.arg('MetadataExtraDimensions', d.T.array)]),
    withMetadataExtraDimensions(MetadataExtraDimensions): {
      assert std.isArray(MetadataExtraDimensions) : 'MetadataExtraDimensions must be a array',
      Properties+::: { MetadataExtraDimensions: MetadataExtraDimensions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Vehicle: {
    '#': d.pkg(
      name='Vehicle',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetWise.libsonnet',
      help='Definition of AWS::IoTFleetWise::Vehicle Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetWise::Vehicle Resource
        * Name 
        * DecoderManifestArn 
        * ModelManifestArn 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('DecoderManifestArn', 'd.T.string'),
        d.arg('ModelManifestArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      DecoderManifestArn,
      ModelManifestArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(DecoderManifestArn) : 'DecoderManifestArn must be a string',
        DecoderManifestArn: DecoderManifestArn,
        assert std.isString(ModelManifestArn) : 'ModelManifestArn must be a string',
        ModelManifestArn: ModelManifestArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetWise::Vehicle',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAssociationBehavior': d.fn('`withAssociationBehavior` AssociationBehavior ', [d.arg('AssociationBehavior', d.T.string)]),
    withAssociationBehavior(AssociationBehavior): {
      assert std.isString(AssociationBehavior) : 'AssociationBehavior must be a string',
      Properties+::: { AssociationBehavior: AssociationBehavior },
    },
    '#withAttributes': d.fn('`withAttributes` Attributes ', [d.arg('Attributes', d.T.object)]),
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: { Attributes: Attributes },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastModificationTime': d.fn('`withLastModificationTime` LastModificationTime ', [d.arg('LastModificationTime', d.T.string)]),
    withLastModificationTime(LastModificationTime): {
      assert std.isString(LastModificationTime) : 'LastModificationTime must be a string',
      Properties+::: { LastModificationTime: LastModificationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
