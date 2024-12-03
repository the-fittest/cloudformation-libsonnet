local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  APIKey: {
    '#': d.pkg(
      name='APIKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::APIKey Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::APIKey Resource
        * KeyName 
        * Restrictions 
      |||,
      args=[
        d.arg('KeyName', 'd.T.string'),
        d.arg('Restrictions', 'd.T.object'),
      ]
    ),
    new(
      KeyName,
      Restrictions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KeyName) : 'KeyName must be a string',
        KeyName: KeyName,
        assert std.isObject(Restrictions) : 'Restrictions must be a object',
        Restrictions: Restrictions,
      },
      DependsOn:: [],
      Type: 'AWS::Location::APIKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withExpireTime': d.fn('`withExpireTime` ExpireTime ', [d.arg('ExpireTime', d.T.string)]),
    withExpireTime(ExpireTime): {
      assert std.isString(ExpireTime) : 'ExpireTime must be a string',
      Properties+::: { ExpireTime: ExpireTime },
    },
    '#withForceUpdate': d.fn('`withForceUpdate` ForceUpdate ', [d.arg('ForceUpdate', d.T.boolean)]),
    withForceUpdate(ForceUpdate): {
      assert std.isBoolean(ForceUpdate) : 'ForceUpdate must be a boolean',
      Properties+::: { ForceUpdate: ForceUpdate },
    },
    '#withKeyArn': d.fn('`withKeyArn` KeyArn ', [d.arg('KeyArn', d.T.string)]),
    withKeyArn(KeyArn): {
      assert std.isString(KeyArn) : 'KeyArn must be a string',
      Properties+::: { KeyArn: KeyArn },
    },
    '#withNoExpiry': d.fn('`withNoExpiry` NoExpiry ', [d.arg('NoExpiry', d.T.boolean)]),
    withNoExpiry(NoExpiry): {
      assert std.isBoolean(NoExpiry) : 'NoExpiry must be a boolean',
      Properties+::: { NoExpiry: NoExpiry },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
    '#withForceDelete': d.fn('`withForceDelete` ForceDelete ', [d.arg('ForceDelete', d.T.boolean)]),
    withForceDelete(ForceDelete): {
      assert std.isBoolean(ForceDelete) : 'ForceDelete must be a boolean',
      Properties+::: { ForceDelete: ForceDelete },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  GeofenceCollection: {
    '#': d.pkg(
      name='GeofenceCollection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::GeofenceCollection Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::GeofenceCollection Resource
        * CollectionName 
      |||,
      args=[
        d.arg('CollectionName', 'd.T.string'),
      ]
    ),
    new(
      CollectionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CollectionName) : 'CollectionName must be a string',
        CollectionName: CollectionName,
      },
      DependsOn:: [],
      Type: 'AWS::Location::GeofenceCollection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCollectionArn': d.fn('`withCollectionArn` CollectionArn ', [d.arg('CollectionArn', d.T.string)]),
    withCollectionArn(CollectionArn): {
      assert std.isString(CollectionArn) : 'CollectionArn must be a string',
      Properties+::: { CollectionArn: CollectionArn },
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withPricingPlan': d.fn('`withPricingPlan` PricingPlan ', [d.arg('PricingPlan', d.T.string)]),
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: { PricingPlan: PricingPlan },
    },
    '#withPricingPlanDataSource': d.fn('`withPricingPlanDataSource` PricingPlanDataSource ', [d.arg('PricingPlanDataSource', d.T.string)]),
    withPricingPlanDataSource(PricingPlanDataSource): {
      assert std.isString(PricingPlanDataSource) : 'PricingPlanDataSource must be a string',
      Properties+::: { PricingPlanDataSource: PricingPlanDataSource },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Map: {
    '#': d.pkg(
      name='Map',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::Map Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::Map Resource
        * Configuration 
        * MapName 
      |||,
      args=[
        d.arg('Configuration', 'd.T.object'),
        d.arg('MapName', 'd.T.string'),
      ]
    ),
    new(
      Configuration,
      MapName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Configuration) : 'Configuration must be a object',
        Configuration: Configuration,
        assert std.isString(MapName) : 'MapName must be a string',
        MapName: MapName,
      },
      DependsOn:: [],
      Type: 'AWS::Location::Map',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMapArn': d.fn('`withMapArn` MapArn ', [d.arg('MapArn', d.T.string)]),
    withMapArn(MapArn): {
      assert std.isString(MapArn) : 'MapArn must be a string',
      Properties+::: { MapArn: MapArn },
    },
    '#withPricingPlan': d.fn('`withPricingPlan` PricingPlan ', [d.arg('PricingPlan', d.T.string)]),
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: { PricingPlan: PricingPlan },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  PlaceIndex: {
    '#': d.pkg(
      name='PlaceIndex',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::PlaceIndex Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::PlaceIndex Resource
        * DataSource 
        * IndexName 
      |||,
      args=[
        d.arg('DataSource', 'd.T.string'),
        d.arg('IndexName', 'd.T.string'),
      ]
    ),
    new(
      DataSource,
      IndexName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DataSource) : 'DataSource must be a string',
        DataSource: DataSource,
        assert std.isString(IndexName) : 'IndexName must be a string',
        IndexName: IndexName,
      },
      DependsOn:: [],
      Type: 'AWS::Location::PlaceIndex',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withDataSourceConfiguration': d.fn('`withDataSourceConfiguration` DataSourceConfiguration ', [d.arg('DataSourceConfiguration', d.T.object)]),
    withDataSourceConfiguration(DataSourceConfiguration): {
      assert std.isObject(DataSourceConfiguration) : 'DataSourceConfiguration must be a object',
      Properties+::: { DataSourceConfiguration: DataSourceConfiguration },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withIndexArn': d.fn('`withIndexArn` IndexArn ', [d.arg('IndexArn', d.T.string)]),
    withIndexArn(IndexArn): {
      assert std.isString(IndexArn) : 'IndexArn must be a string',
      Properties+::: { IndexArn: IndexArn },
    },
    '#withPricingPlan': d.fn('`withPricingPlan` PricingPlan ', [d.arg('PricingPlan', d.T.string)]),
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: { PricingPlan: PricingPlan },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  RouteCalculator: {
    '#': d.pkg(
      name='RouteCalculator',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::RouteCalculator Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::RouteCalculator Resource
        * DataSource 
        * CalculatorName 
      |||,
      args=[
        d.arg('DataSource', 'd.T.string'),
        d.arg('CalculatorName', 'd.T.string'),
      ]
    ),
    new(
      DataSource,
      CalculatorName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DataSource) : 'DataSource must be a string',
        DataSource: DataSource,
        assert std.isString(CalculatorName) : 'CalculatorName must be a string',
        CalculatorName: CalculatorName,
      },
      DependsOn:: [],
      Type: 'AWS::Location::RouteCalculator',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCalculatorArn': d.fn('`withCalculatorArn` CalculatorArn ', [d.arg('CalculatorArn', d.T.string)]),
    withCalculatorArn(CalculatorArn): {
      assert std.isString(CalculatorArn) : 'CalculatorArn must be a string',
      Properties+::: { CalculatorArn: CalculatorArn },
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPricingPlan': d.fn('`withPricingPlan` PricingPlan ', [d.arg('PricingPlan', d.T.string)]),
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: { PricingPlan: PricingPlan },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Tracker: {
    '#': d.pkg(
      name='Tracker',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::Tracker Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::Tracker Resource
        * TrackerName 
      |||,
      args=[
        d.arg('TrackerName', 'd.T.string'),
      ]
    ),
    new(
      TrackerName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TrackerName) : 'TrackerName must be a string',
        TrackerName: TrackerName,
      },
      DependsOn:: [],
      Type: 'AWS::Location::Tracker',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEventBridgeEnabled': d.fn('`withEventBridgeEnabled` EventBridgeEnabled ', [d.arg('EventBridgeEnabled', d.T.boolean)]),
    withEventBridgeEnabled(EventBridgeEnabled): {
      assert std.isBoolean(EventBridgeEnabled) : 'EventBridgeEnabled must be a boolean',
      Properties+::: { EventBridgeEnabled: EventBridgeEnabled },
    },
    '#withKmsKeyEnableGeospatialQueries': d.fn('`withKmsKeyEnableGeospatialQueries` KmsKeyEnableGeospatialQueries ', [d.arg('KmsKeyEnableGeospatialQueries', d.T.boolean)]),
    withKmsKeyEnableGeospatialQueries(KmsKeyEnableGeospatialQueries): {
      assert std.isBoolean(KmsKeyEnableGeospatialQueries) : 'KmsKeyEnableGeospatialQueries must be a boolean',
      Properties+::: { KmsKeyEnableGeospatialQueries: KmsKeyEnableGeospatialQueries },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withPositionFiltering': d.fn('`withPositionFiltering` PositionFiltering ', [d.arg('PositionFiltering', d.T.string)]),
    withPositionFiltering(PositionFiltering): {
      assert std.isString(PositionFiltering) : 'PositionFiltering must be a string',
      Properties+::: { PositionFiltering: PositionFiltering },
    },
    '#withPricingPlan': d.fn('`withPricingPlan` PricingPlan ', [d.arg('PricingPlan', d.T.string)]),
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: { PricingPlan: PricingPlan },
    },
    '#withPricingPlanDataSource': d.fn('`withPricingPlanDataSource` PricingPlanDataSource ', [d.arg('PricingPlanDataSource', d.T.string)]),
    withPricingPlanDataSource(PricingPlanDataSource): {
      assert std.isString(PricingPlanDataSource) : 'PricingPlanDataSource must be a string',
      Properties+::: { PricingPlanDataSource: PricingPlanDataSource },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrackerArn': d.fn('`withTrackerArn` TrackerArn ', [d.arg('TrackerArn', d.T.string)]),
    withTrackerArn(TrackerArn): {
      assert std.isString(TrackerArn) : 'TrackerArn must be a string',
      Properties+::: { TrackerArn: TrackerArn },
    },
    '#withUpdateTime': d.fn('`withUpdateTime` UpdateTime ', [d.arg('UpdateTime', d.T.string)]),
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: { UpdateTime: UpdateTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  TrackerConsumer: {
    '#': d.pkg(
      name='TrackerConsumer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Location.libsonnet',
      help='Definition of AWS::Location::TrackerConsumer Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Location::TrackerConsumer Resource
        * ConsumerArn 
        * TrackerName 
      |||,
      args=[
        d.arg('ConsumerArn', 'd.T.string'),
        d.arg('TrackerName', 'd.T.string'),
      ]
    ),
    new(
      ConsumerArn,
      TrackerName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConsumerArn) : 'ConsumerArn must be a string',
        ConsumerArn: ConsumerArn,
        assert std.isString(TrackerName) : 'TrackerName must be a string',
        TrackerName: TrackerName,
      },
      DependsOn:: [],
      Type: 'AWS::Location::TrackerConsumer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
}
