local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Resource Type definition for AWS::MediaLive::Channel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::Channel Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaLive::Channel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInputAttachments': d.fn('`withInputAttachments` InputAttachments ', [d.arg('InputAttachments', d.T.array)]),
    withInputAttachments(InputAttachments): {
      assert std.isArray(InputAttachments) : 'InputAttachments must be a array',
      Properties+::: { InputAttachments: InputAttachments },
    },
    '#withInputSpecification': d.fn('`withInputSpecification` InputSpecification ', [d.arg('InputSpecification', d.T.object)]),
    withInputSpecification(InputSpecification): {
      assert std.isObject(InputSpecification) : 'InputSpecification must be a object',
      Properties+::: { InputSpecification: InputSpecification },
    },
    '#withDestinations': d.fn('`withDestinations` Destinations ', [d.arg('Destinations', d.T.array)]),
    withDestinations(Destinations): {
      assert std.isArray(Destinations) : 'Destinations must be a array',
      Properties+::: { Destinations: Destinations },
    },
    '#withVpc': d.fn('`withVpc` Vpc ', [d.arg('Vpc', d.T.object)]),
    withVpc(Vpc): {
      assert std.isObject(Vpc) : 'Vpc must be a object',
      Properties+::: { Vpc: Vpc },
    },
    '#withMaintenance': d.fn('`withMaintenance` Maintenance ', [d.arg('Maintenance', d.T.object)]),
    withMaintenance(Maintenance): {
      assert std.isObject(Maintenance) : 'Maintenance must be a object',
      Properties+::: { Maintenance: Maintenance },
    },
    '#withLogLevel': d.fn('`withLogLevel` LogLevel ', [d.arg('LogLevel', d.T.string)]),
    withLogLevel(LogLevel): {
      assert std.isString(LogLevel) : 'LogLevel must be a string',
      Properties+::: { LogLevel: LogLevel },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withChannelClass': d.fn('`withChannelClass` ChannelClass ', [d.arg('ChannelClass', d.T.string)]),
    withChannelClass(ChannelClass): {
      assert std.isString(ChannelClass) : 'ChannelClass must be a string',
      Properties+::: { ChannelClass: ChannelClass },
    },
    '#withEncoderSettings': d.fn('`withEncoderSettings` EncoderSettings ', [d.arg('EncoderSettings', d.T.object)]),
    withEncoderSettings(EncoderSettings): {
      assert std.isObject(EncoderSettings) : 'EncoderSettings must be a object',
      Properties+::: { EncoderSettings: EncoderSettings },
    },
    '#withAnywhereSettings': d.fn('`withAnywhereSettings` AnywhereSettings ', [d.arg('AnywhereSettings', d.T.object)]),
    withAnywhereSettings(AnywhereSettings): {
      assert std.isObject(AnywhereSettings) : 'AnywhereSettings must be a object',
      Properties+::: { AnywhereSettings: AnywhereSettings },
    },
    '#withCdiInputSpecification': d.fn('`withCdiInputSpecification` CdiInputSpecification ', [d.arg('CdiInputSpecification', d.T.object)]),
    withCdiInputSpecification(CdiInputSpecification): {
      assert std.isObject(CdiInputSpecification) : 'CdiInputSpecification must be a object',
      Properties+::: { CdiInputSpecification: CdiInputSpecification },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInputs': d.fn('`withInputs` Inputs ', [d.arg('Inputs', d.T.array)]),
    withInputs(Inputs): {
      assert std.isArray(Inputs) : 'Inputs must be a array',
      Properties+::: { Inputs: Inputs },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ChannelPlacementGroup: {
    '#': d.pkg(
      name='ChannelPlacementGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::ChannelPlacementGroup Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::ChannelPlacementGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaLive::ChannelPlacementGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withChannels': d.fn('`withChannels` Channels ', [d.arg('Channels', d.T.array)]),
    withChannels(Channels): {
      assert std.isArray(Channels) : 'Channels must be a array',
      Properties+::: { Channels: Channels },
    },
    '#withClusterId': d.fn('`withClusterId` ClusterId ', [d.arg('ClusterId', d.T.string)]),
    withClusterId(ClusterId): {
      assert std.isString(ClusterId) : 'ClusterId must be a string',
      Properties+::: { ClusterId: ClusterId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withNodes': d.fn('`withNodes` Nodes ', [d.arg('Nodes', d.T.array)]),
    withNodes(Nodes): {
      assert std.isArray(Nodes) : 'Nodes must be a array',
      Properties+::: { Nodes: Nodes },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  CloudWatchAlarmTemplate: {
    '#': d.pkg(
      name='CloudWatchAlarmTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::CloudWatchAlarmTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::CloudWatchAlarmTemplate Resource
        * ComparisonOperator 
        * EvaluationPeriods The number of periods over which data is compared to the specified threshold.
        * GroupIdentifier A cloudwatch alarm template groups identifier. Can be either be its id or current name.
        * MetricName The name of the metric associated with the alarm. Must be compatible with targetResourceType.
        * Name A resources name. Names must be unique within the scope of a resource type in a specific region.
        * Period The period, in seconds, over which the specified statistic is applied.
        * Statistic 
        * TargetResourceType 
        * Threshold The threshold value to compare with the specified statistic.
        * TreatMissingData 
      |||,
      args=[
        d.arg('ComparisonOperator', 'd.T.string'),
        d.arg('EvaluationPeriods', 'd.T.integer'),
        d.arg('GroupIdentifier', 'd.T.string'),
        d.arg('MetricName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Period', 'd.T.integer'),
        d.arg('Statistic', 'd.T.string'),
        d.arg('TargetResourceType', 'd.T.string'),
        d.arg('Threshold', 'd.T.integer'),
        d.arg('TreatMissingData', 'd.T.string'),
      ]
    ),
    new(
      ComparisonOperator,
      EvaluationPeriods,
      GroupIdentifier,
      MetricName,
      Name,
      Period,
      Statistic,
      TargetResourceType,
      Threshold,
      TreatMissingData,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ComparisonOperator) : 'ComparisonOperator must be a string',
        ComparisonOperator: ComparisonOperator,
        // Type: number
        EvaluationPeriods: EvaluationPeriods,
        assert std.isString(GroupIdentifier) : 'GroupIdentifier must be a string',
        GroupIdentifier: GroupIdentifier,
        assert std.isString(MetricName) : 'MetricName must be a string',
        MetricName: MetricName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        // Type: number
        Period: Period,
        assert std.isString(Statistic) : 'Statistic must be a string',
        Statistic: Statistic,
        assert std.isString(TargetResourceType) : 'TargetResourceType must be a string',
        TargetResourceType: TargetResourceType,
        // Type: number
        Threshold: Threshold,
        assert std.isString(TreatMissingData) : 'TreatMissingData must be a string',
        TreatMissingData: TreatMissingData,
      },
      DependsOn:: [],
      Type: 'AWS::MediaLive::CloudWatchAlarmTemplate',
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
    '#withDatapointsToAlarm': d.fn('`withDatapointsToAlarm` DatapointsToAlarm ', [d.arg('DatapointsToAlarm', d.T.integer)]),
    withDatapointsToAlarm(DatapointsToAlarm): {
      // Type: number
      Properties+::: { DatapointsToAlarm: DatapointsToAlarm },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withGroupId': d.fn('`withGroupId` GroupId ', [d.arg('GroupId', d.T.string)]),
    withGroupId(GroupId): {
      assert std.isString(GroupId) : 'GroupId must be a string',
      Properties+::: { GroupId: GroupId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  CloudWatchAlarmTemplateGroup: {
    '#': d.pkg(
      name='CloudWatchAlarmTemplateGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::CloudWatchAlarmTemplateGroup Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::CloudWatchAlarmTemplateGroup Resource
        * Name A resources name. Names must be unique within the scope of a resource type in a specific region.
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
      Type: 'AWS::MediaLive::CloudWatchAlarmTemplateGroup',
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::Cluster Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::Cluster Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaLive::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withChannelIds': d.fn('`withChannelIds` ChannelIds ', [d.arg('ChannelIds', d.T.array)]),
    withChannelIds(ChannelIds): {
      assert std.isArray(ChannelIds) : 'ChannelIds must be a array',
      Properties+::: { ChannelIds: ChannelIds },
    },
    '#withClusterType': d.fn('`withClusterType` ClusterType ', [d.arg('ClusterType', d.T.string)]),
    withClusterType(ClusterType): {
      assert std.isString(ClusterType) : 'ClusterType must be a string',
      Properties+::: { ClusterType: ClusterType },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withInstanceRoleArn': d.fn('`withInstanceRoleArn` InstanceRoleArn ', [d.arg('InstanceRoleArn', d.T.string)]),
    withInstanceRoleArn(InstanceRoleArn): {
      assert std.isString(InstanceRoleArn) : 'InstanceRoleArn must be a string',
      Properties+::: { InstanceRoleArn: InstanceRoleArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withNetworkSettings': d.fn('`withNetworkSettings` NetworkSettings ', [d.arg('NetworkSettings', d.T.object)]),
    withNetworkSettings(NetworkSettings): {
      assert std.isObject(NetworkSettings) : 'NetworkSettings must be a object',
      Properties+::: { NetworkSettings: NetworkSettings },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EventBridgeRuleTemplate: {
    '#': d.pkg(
      name='EventBridgeRuleTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::EventBridgeRuleTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::EventBridgeRuleTemplate Resource
        * EventType 
        * GroupIdentifier An eventbridge rule template groups identifier. Can be either be its id or current name.
        * Name A resources name. Names must be unique within the scope of a resource type in a specific region.
      |||,
      args=[
        d.arg('EventType', 'd.T.string'),
        d.arg('GroupIdentifier', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EventType,
      GroupIdentifier,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EventType) : 'EventType must be a string',
        EventType: EventType,
        assert std.isString(GroupIdentifier) : 'GroupIdentifier must be a string',
        GroupIdentifier: GroupIdentifier,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::MediaLive::EventBridgeRuleTemplate',
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
    '#withEventTargets': d.fn('`withEventTargets` EventTargets ', [d.arg('EventTargets', d.T.array)]),
    withEventTargets(EventTargets): {
      assert std.isArray(EventTargets) : 'EventTargets must be a array',
      Properties+::: { EventTargets: EventTargets },
    },
    '#withGroupId': d.fn('`withGroupId` GroupId ', [d.arg('GroupId', d.T.string)]),
    withGroupId(GroupId): {
      assert std.isString(GroupId) : 'GroupId must be a string',
      Properties+::: { GroupId: GroupId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  EventBridgeRuleTemplateGroup: {
    '#': d.pkg(
      name='EventBridgeRuleTemplateGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::EventBridgeRuleTemplateGroup Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::EventBridgeRuleTemplateGroup Resource
        * Name A resources name. Names must be unique within the scope of a resource type in a specific region.
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
      Type: 'AWS::MediaLive::EventBridgeRuleTemplateGroup',
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Input: {
    '#': d.pkg(
      name='Input',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Resource Type definition for AWS::MediaLive::Input',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::Input Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaLive::Input',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSrtSettings': d.fn('`withSrtSettings` SrtSettings ', [d.arg('SrtSettings', d.T.object)]),
    withSrtSettings(SrtSettings): {
      assert std.isObject(SrtSettings) : 'SrtSettings must be a object',
      Properties+::: { SrtSettings: SrtSettings },
    },
    '#withInputNetworkLocation': d.fn('`withInputNetworkLocation` InputNetworkLocation ', [d.arg('InputNetworkLocation', d.T.string)]),
    withInputNetworkLocation(InputNetworkLocation): {
      assert std.isString(InputNetworkLocation) : 'InputNetworkLocation must be a string',
      Properties+::: { InputNetworkLocation: InputNetworkLocation },
    },
    '#withDestinations': d.fn('`withDestinations` Destinations ', [d.arg('Destinations', d.T.array)]),
    withDestinations(Destinations): {
      assert std.isArray(Destinations) : 'Destinations must be a array',
      Properties+::: { Destinations: Destinations },
    },
    '#withVpc': d.fn('`withVpc` Vpc ', [d.arg('Vpc', d.T.object)]),
    withVpc(Vpc): {
      assert std.isObject(Vpc) : 'Vpc must be a object',
      Properties+::: { Vpc: Vpc },
    },
    '#withMediaConnectFlows': d.fn('`withMediaConnectFlows` MediaConnectFlows ', [d.arg('MediaConnectFlows', d.T.array)]),
    withMediaConnectFlows(MediaConnectFlows): {
      assert std.isArray(MediaConnectFlows) : 'MediaConnectFlows must be a array',
      Properties+::: { MediaConnectFlows: MediaConnectFlows },
    },
    '#withSources': d.fn('`withSources` Sources ', [d.arg('Sources', d.T.array)]),
    withSources(Sources): {
      assert std.isArray(Sources) : 'Sources must be a array',
      Properties+::: { Sources: Sources },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInputSecurityGroups': d.fn('`withInputSecurityGroups` InputSecurityGroups ', [d.arg('InputSecurityGroups', d.T.array)]),
    withInputSecurityGroups(InputSecurityGroups): {
      assert std.isArray(InputSecurityGroups) : 'InputSecurityGroups must be a array',
      Properties+::: { InputSecurityGroups: InputSecurityGroups },
    },
    '#withMulticastSettings': d.fn('`withMulticastSettings` MulticastSettings ', [d.arg('MulticastSettings', d.T.object)]),
    withMulticastSettings(MulticastSettings): {
      assert std.isObject(MulticastSettings) : 'MulticastSettings must be a object',
      Properties+::: { MulticastSettings: MulticastSettings },
    },
    '#withInputDevices': d.fn('`withInputDevices` InputDevices ', [d.arg('InputDevices', d.T.array)]),
    withInputDevices(InputDevices): {
      assert std.isArray(InputDevices) : 'InputDevices must be a array',
      Properties+::: { InputDevices: InputDevices },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  InputSecurityGroup: {
    '#': d.pkg(
      name='InputSecurityGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Resource Type definition for AWS::MediaLive::InputSecurityGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::InputSecurityGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaLive::InputSecurityGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withWhitelistRules': d.fn('`withWhitelistRules` WhitelistRules ', [d.arg('WhitelistRules', d.T.array)]),
    withWhitelistRules(WhitelistRules): {
      assert std.isArray(WhitelistRules) : 'WhitelistRules must be a array',
      Properties+::: { WhitelistRules: WhitelistRules },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Multiplex: {
    '#': d.pkg(
      name='Multiplex',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Resource schema for AWS::MediaLive::Multiplex',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::Multiplex Resource
        * AvailabilityZones A list of availability zones for the multiplex.
        * MultiplexSettings Configuration for a multiplex event.
        * Name Name of multiplex.
      |||,
      args=[
        d.arg('AvailabilityZones', 'd.T.array'),
        d.arg('MultiplexSettings', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      AvailabilityZones,
      MultiplexSettings,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(AvailabilityZones) : 'AvailabilityZones must be a array',
        AvailabilityZones: AvailabilityZones,
        assert std.isObject(MultiplexSettings) : 'MultiplexSettings must be a object',
        MultiplexSettings: MultiplexSettings,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::MediaLive::Multiplex',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDestinations': d.fn('`withDestinations` Destinations ', [d.arg('Destinations', d.T.array)]),
    withDestinations(Destinations): {
      assert std.isArray(Destinations) : 'Destinations must be a array',
      Properties+::: { Destinations: Destinations },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPipelinesRunningCount': d.fn('`withPipelinesRunningCount` PipelinesRunningCount ', [d.arg('PipelinesRunningCount', d.T.integer)]),
    withPipelinesRunningCount(PipelinesRunningCount): {
      assert std.isNumber(PipelinesRunningCount) : 'PipelinesRunningCount must be a integer',
      Properties+::: { PipelinesRunningCount: PipelinesRunningCount },
    },
    '#withProgramCount': d.fn('`withProgramCount` ProgramCount ', [d.arg('ProgramCount', d.T.integer)]),
    withProgramCount(ProgramCount): {
      assert std.isNumber(ProgramCount) : 'ProgramCount must be a integer',
      Properties+::: { ProgramCount: ProgramCount },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'CREATING' || State == 'CREATE_FAILED' || State == 'IDLE' || State == 'STARTING' || State == 'RUNNING' || State == 'RECOVERING' || State == 'STOPPING' || State == 'DELETING' || State == 'DELETED' : "State must be either 'CREATING' or 'CREATE_FAILED' or 'IDLE' or 'STARTING' or 'RUNNING' or 'RECOVERING' or 'STOPPING' or 'DELETING' or 'DELETED'",
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Multiplexprogram: {
    '#': d.pkg(
      name='Multiplexprogram',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Resource schema for AWS::MediaLive::Multiplexprogram',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::Multiplexprogram Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::MediaLive::Multiplexprogram',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withChannelId': d.fn('`withChannelId` ChannelId ', [d.arg('ChannelId', d.T.string)]),
    withChannelId(ChannelId): {
      assert std.isString(ChannelId) : 'ChannelId must be a string',
      Properties+::: { ChannelId: ChannelId },
    },
    '#withMultiplexId': d.fn('`withMultiplexId` MultiplexId ', [d.arg('MultiplexId', d.T.string)]),
    withMultiplexId(MultiplexId): {
      assert std.isString(MultiplexId) : 'MultiplexId must be a string',
      Properties+::: { MultiplexId: MultiplexId },
    },
    '#withMultiplexProgramSettings': d.fn('`withMultiplexProgramSettings` MultiplexProgramSettings ', [d.arg('MultiplexProgramSettings', d.T.object)]),
    withMultiplexProgramSettings(MultiplexProgramSettings): {
      assert std.isObject(MultiplexProgramSettings) : 'MultiplexProgramSettings must be a object',
      Properties+::: { MultiplexProgramSettings: MultiplexProgramSettings },
    },
    '#withPreferredChannelPipeline': d.fn('`withPreferredChannelPipeline` PreferredChannelPipeline ', [d.arg('PreferredChannelPipeline', d.T.string)]),
    withPreferredChannelPipeline(PreferredChannelPipeline): {
      assert std.isString(PreferredChannelPipeline) : 'PreferredChannelPipeline must be a string',
      Properties+::: { PreferredChannelPipeline: PreferredChannelPipeline },
    },
    '#withPacketIdentifiersMap': d.fn('`withPacketIdentifiersMap` PacketIdentifiersMap ', [d.arg('PacketIdentifiersMap', d.T.object)]),
    withPacketIdentifiersMap(PacketIdentifiersMap): {
      assert std.isObject(PacketIdentifiersMap) : 'PacketIdentifiersMap must be a object',
      Properties+::: { PacketIdentifiersMap: PacketIdentifiersMap },
    },
    '#withPipelineDetails': d.fn('`withPipelineDetails` PipelineDetails ', [d.arg('PipelineDetails', d.T.array)]),
    withPipelineDetails(PipelineDetails): {
      assert std.isArray(PipelineDetails) : 'PipelineDetails must be a array',
      Properties+::: { PipelineDetails: PipelineDetails },
    },
    '#withProgramName': d.fn('`withProgramName` ProgramName ', [d.arg('ProgramName', d.T.string)]),
    withProgramName(ProgramName): {
      assert std.isString(ProgramName) : 'ProgramName must be a string',
      Properties+::: { ProgramName: ProgramName },
    },
  },
  Network: {
    '#': d.pkg(
      name='Network',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Resource schema for AWS::MediaLive::Network.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::Network Resource
        * Name The user-specified name of the Network to be created.
        * IpPools The list of IP address cidr pools for the network
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('IpPools', 'd.T.array'),
      ]
    ),
    new(
      Name,
      IpPools,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(IpPools) : 'IpPools must be a array',
        IpPools: IpPools,
      },
      DependsOn:: [],
      Type: 'AWS::MediaLive::Network',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAssociatedClusterIds': d.fn('`withAssociatedClusterIds` AssociatedClusterIds ', [d.arg('AssociatedClusterIds', d.T.array)]),
    withAssociatedClusterIds(AssociatedClusterIds): {
      assert std.isArray(AssociatedClusterIds) : 'AssociatedClusterIds must be a array',
      Properties+::: { AssociatedClusterIds: AssociatedClusterIds },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRoutes': d.fn('`withRoutes` Routes ', [d.arg('Routes', d.T.array)]),
    withRoutes(Routes): {
      assert std.isArray(Routes) : 'Routes must be a array',
      Properties+::: { Routes: Routes },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SdiSource: {
    '#': d.pkg(
      name='SdiSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::SdiSource Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::SdiSource Resource
        * Name The name of the SdiSource.
        * Type 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::MediaLive::SdiSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMode': d.fn('`withMode` Mode ', [d.arg('Mode', d.T.string)]),
    withMode(Mode): {
      assert std.isString(Mode) : 'Mode must be a string',
      Properties+::: { Mode: Mode },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withInputs': d.fn('`withInputs` Inputs ', [d.arg('Inputs', d.T.array)]),
    withInputs(Inputs): {
      assert std.isArray(Inputs) : 'Inputs must be a array',
      Properties+::: { Inputs: Inputs },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SignalMap: {
    '#': d.pkg(
      name='SignalMap',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaLive.libsonnet',
      help='Definition of AWS::MediaLive::SignalMap Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaLive::SignalMap Resource
        * DiscoveryEntryPointArn A top-level supported AWS resource ARN to discovery a signal map from.
        * Name A resources name. Names must be unique within the scope of a resource type in a specific region.
      |||,
      args=[
        d.arg('DiscoveryEntryPointArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      DiscoveryEntryPointArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DiscoveryEntryPointArn) : 'DiscoveryEntryPointArn must be a string',
        DiscoveryEntryPointArn: DiscoveryEntryPointArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::MediaLive::SignalMap',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCloudWatchAlarmTemplateGroupIdentifiers': d.fn('`withCloudWatchAlarmTemplateGroupIdentifiers` CloudWatchAlarmTemplateGroupIdentifiers ', [d.arg('CloudWatchAlarmTemplateGroupIdentifiers', d.T.array)]),
    withCloudWatchAlarmTemplateGroupIdentifiers(CloudWatchAlarmTemplateGroupIdentifiers): {
      assert std.isArray(CloudWatchAlarmTemplateGroupIdentifiers) : 'CloudWatchAlarmTemplateGroupIdentifiers must be a array',
      Properties+::: { CloudWatchAlarmTemplateGroupIdentifiers: CloudWatchAlarmTemplateGroupIdentifiers },
    },
    '#withCloudWatchAlarmTemplateGroupIds': d.fn('`withCloudWatchAlarmTemplateGroupIds` CloudWatchAlarmTemplateGroupIds ', [d.arg('CloudWatchAlarmTemplateGroupIds', d.T.array)]),
    withCloudWatchAlarmTemplateGroupIds(CloudWatchAlarmTemplateGroupIds): {
      assert std.isArray(CloudWatchAlarmTemplateGroupIds) : 'CloudWatchAlarmTemplateGroupIds must be a array',
      Properties+::: { CloudWatchAlarmTemplateGroupIds: CloudWatchAlarmTemplateGroupIds },
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
    '#withErrorMessage': d.fn('`withErrorMessage` ErrorMessage ', [d.arg('ErrorMessage', d.T.string)]),
    withErrorMessage(ErrorMessage): {
      assert std.isString(ErrorMessage) : 'ErrorMessage must be a string',
      Properties+::: { ErrorMessage: ErrorMessage },
    },
    '#withEventBridgeRuleTemplateGroupIdentifiers': d.fn('`withEventBridgeRuleTemplateGroupIdentifiers` EventBridgeRuleTemplateGroupIdentifiers ', [d.arg('EventBridgeRuleTemplateGroupIdentifiers', d.T.array)]),
    withEventBridgeRuleTemplateGroupIdentifiers(EventBridgeRuleTemplateGroupIdentifiers): {
      assert std.isArray(EventBridgeRuleTemplateGroupIdentifiers) : 'EventBridgeRuleTemplateGroupIdentifiers must be a array',
      Properties+::: { EventBridgeRuleTemplateGroupIdentifiers: EventBridgeRuleTemplateGroupIdentifiers },
    },
    '#withEventBridgeRuleTemplateGroupIds': d.fn('`withEventBridgeRuleTemplateGroupIds` EventBridgeRuleTemplateGroupIds ', [d.arg('EventBridgeRuleTemplateGroupIds', d.T.array)]),
    withEventBridgeRuleTemplateGroupIds(EventBridgeRuleTemplateGroupIds): {
      assert std.isArray(EventBridgeRuleTemplateGroupIds) : 'EventBridgeRuleTemplateGroupIds must be a array',
      Properties+::: { EventBridgeRuleTemplateGroupIds: EventBridgeRuleTemplateGroupIds },
    },
    '#withFailedMediaResourceMap': d.fn('`withFailedMediaResourceMap` FailedMediaResourceMap ', [d.arg('FailedMediaResourceMap', d.T.object)]),
    withFailedMediaResourceMap(FailedMediaResourceMap): {
      assert std.isObject(FailedMediaResourceMap) : 'FailedMediaResourceMap must be a object',
      Properties+::: { FailedMediaResourceMap: FailedMediaResourceMap },
    },
    '#withForceRediscovery': d.fn('`withForceRediscovery` ForceRediscovery ', [d.arg('ForceRediscovery', d.T.boolean)]),
    withForceRediscovery(ForceRediscovery): {
      assert std.isBoolean(ForceRediscovery) : 'ForceRediscovery must be a boolean',
      Properties+::: { ForceRediscovery: ForceRediscovery },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withLastDiscoveredAt': d.fn('`withLastDiscoveredAt` LastDiscoveredAt ', [d.arg('LastDiscoveredAt', d.T.string)]),
    withLastDiscoveredAt(LastDiscoveredAt): {
      assert std.isString(LastDiscoveredAt) : 'LastDiscoveredAt must be a string',
      Properties+::: { LastDiscoveredAt: LastDiscoveredAt },
    },
    '#withLastSuccessfulMonitorDeployment': d.fn('`withLastSuccessfulMonitorDeployment` LastSuccessfulMonitorDeployment ', [d.arg('LastSuccessfulMonitorDeployment', d.T.object)]),
    withLastSuccessfulMonitorDeployment(LastSuccessfulMonitorDeployment): {
      assert std.isObject(LastSuccessfulMonitorDeployment) : 'LastSuccessfulMonitorDeployment must be a object',
      Properties+::: { LastSuccessfulMonitorDeployment: LastSuccessfulMonitorDeployment },
    },
    '#withMediaResourceMap': d.fn('`withMediaResourceMap` MediaResourceMap ', [d.arg('MediaResourceMap', d.T.object)]),
    withMediaResourceMap(MediaResourceMap): {
      assert std.isObject(MediaResourceMap) : 'MediaResourceMap must be a object',
      Properties+::: { MediaResourceMap: MediaResourceMap },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withMonitorChangesPendingDeployment': d.fn('`withMonitorChangesPendingDeployment` MonitorChangesPendingDeployment ', [d.arg('MonitorChangesPendingDeployment', d.T.boolean)]),
    withMonitorChangesPendingDeployment(MonitorChangesPendingDeployment): {
      assert std.isBoolean(MonitorChangesPendingDeployment) : 'MonitorChangesPendingDeployment must be a boolean',
      Properties+::: { MonitorChangesPendingDeployment: MonitorChangesPendingDeployment },
    },
    '#withMonitorDeployment': d.fn('`withMonitorDeployment` MonitorDeployment ', [d.arg('MonitorDeployment', d.T.object)]),
    withMonitorDeployment(MonitorDeployment): {
      assert std.isObject(MonitorDeployment) : 'MonitorDeployment must be a object',
      Properties+::: { MonitorDeployment: MonitorDeployment },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
