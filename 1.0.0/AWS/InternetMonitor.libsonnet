local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Monitor: {
    '#': d.pkg(
      name='Monitor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/InternetMonitor.libsonnet',
      help='Represents a monitor, which defines the monitoring boundaries for measurements that Internet Monitor publishes information about for an application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::InternetMonitor::Monitor Resource
        * MonitorName 
      |||,
      args=[
        d.arg('MonitorName', 'd.T.string'),
      ]
    ),
    new(
      MonitorName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MonitorName) : 'MonitorName must be a string',
        MonitorName: MonitorName,
      },
      DependsOn:: [],
      Type: 'AWS::InternetMonitor::Monitor',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withMonitorArn': d.fn('`withMonitorArn` MonitorArn ', [d.arg('MonitorArn', d.T.string)]),
    withMonitorArn(MonitorArn): {
      assert std.isString(MonitorArn) : 'MonitorArn must be a string',
      Properties+::: { MonitorArn: MonitorArn },
    },
    '#withLinkedAccountId': d.fn('`withLinkedAccountId` LinkedAccountId ', [d.arg('LinkedAccountId', d.T.string)]),
    withLinkedAccountId(LinkedAccountId): {
      assert std.isString(LinkedAccountId) : 'LinkedAccountId must be a string',
      Properties+::: { LinkedAccountId: LinkedAccountId },
    },
    '#withIncludeLinkedAccounts': d.fn('`withIncludeLinkedAccounts` IncludeLinkedAccounts ', [d.arg('IncludeLinkedAccounts', d.T.boolean)]),
    withIncludeLinkedAccounts(IncludeLinkedAccounts): {
      assert std.isBoolean(IncludeLinkedAccounts) : 'IncludeLinkedAccounts must be a boolean',
      Properties+::: { IncludeLinkedAccounts: IncludeLinkedAccounts },
    },
    '#withProcessingStatus': d.fn('`withProcessingStatus` ProcessingStatus ', [d.arg('ProcessingStatus', d.T.string)]),
    withProcessingStatus(ProcessingStatus): {
      assert std.isString(ProcessingStatus) : 'ProcessingStatus must be a string',
      Properties+::: { ProcessingStatus: ProcessingStatus },
    },
    '#withProcessingStatusInfo': d.fn('`withProcessingStatusInfo` ProcessingStatusInfo ', [d.arg('ProcessingStatusInfo', d.T.string)]),
    withProcessingStatusInfo(ProcessingStatusInfo): {
      assert std.isString(ProcessingStatusInfo) : 'ProcessingStatusInfo must be a string',
      Properties+::: { ProcessingStatusInfo: ProcessingStatusInfo },
    },
    '#withResources': d.fn('`withResources` Resources ', [d.arg('Resources', d.T.array)]),
    withResources(Resources): {
      assert std.isArray(Resources) : 'Resources must be a array',
      Properties+::: { Resources: Resources },
    },
    '#withResourcesToAdd': d.fn('`withResourcesToAdd` ResourcesToAdd ', [d.arg('ResourcesToAdd', d.T.array)]),
    withResourcesToAdd(ResourcesToAdd): {
      assert std.isArray(ResourcesToAdd) : 'ResourcesToAdd must be a array',
      Properties+::: { ResourcesToAdd: ResourcesToAdd },
    },
    '#withResourcesToRemove': d.fn('`withResourcesToRemove` ResourcesToRemove ', [d.arg('ResourcesToRemove', d.T.array)]),
    withResourcesToRemove(ResourcesToRemove): {
      assert std.isArray(ResourcesToRemove) : 'ResourcesToRemove must be a array',
      Properties+::: { ResourcesToRemove: ResourcesToRemove },
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
    '#withMaxCityNetworksToMonitor': d.fn('`withMaxCityNetworksToMonitor` MaxCityNetworksToMonitor ', [d.arg('MaxCityNetworksToMonitor', d.T.integer)]),
    withMaxCityNetworksToMonitor(MaxCityNetworksToMonitor): {
      assert std.isNumber(MaxCityNetworksToMonitor) : 'MaxCityNetworksToMonitor must be a integer',
      Properties+::: { MaxCityNetworksToMonitor: MaxCityNetworksToMonitor },
    },
    '#withTrafficPercentageToMonitor': d.fn('`withTrafficPercentageToMonitor` TrafficPercentageToMonitor ', [d.arg('TrafficPercentageToMonitor', d.T.integer)]),
    withTrafficPercentageToMonitor(TrafficPercentageToMonitor): {
      assert std.isNumber(TrafficPercentageToMonitor) : 'TrafficPercentageToMonitor must be a integer',
      Properties+::: { TrafficPercentageToMonitor: TrafficPercentageToMonitor },
    },
    '#withInternetMeasurementsLogDelivery': d.fn('`withInternetMeasurementsLogDelivery` InternetMeasurementsLogDelivery ', [d.arg('InternetMeasurementsLogDelivery', d.T.object)]),
    withInternetMeasurementsLogDelivery(InternetMeasurementsLogDelivery): {
      assert std.isObject(InternetMeasurementsLogDelivery) : 'InternetMeasurementsLogDelivery must be a object',
      Properties+::: { InternetMeasurementsLogDelivery: InternetMeasurementsLogDelivery },
    },
    '#withHealthEventsConfig': d.fn('`withHealthEventsConfig` HealthEventsConfig ', [d.arg('HealthEventsConfig', d.T.object)]),
    withHealthEventsConfig(HealthEventsConfig): {
      assert std.isObject(HealthEventsConfig) : 'HealthEventsConfig must be a object',
      Properties+::: { HealthEventsConfig: HealthEventsConfig },
    },
  },
}
