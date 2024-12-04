{
  // AWS EC2 FlowLog
  FlowLog: {
    new(
      ResourceType,
      ResourceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        ResourceType: ResourceType,
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::FlowLog',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withDeliverCrossAccountRole(DeliverCrossAccountRole): {
      assert std.isString(DeliverCrossAccountRole) : 'DeliverCrossAccountRole must be a string',
      Properties+::: {
        DeliverCrossAccountRole: DeliverCrossAccountRole,
      },
    },
    withDeliverLogsPermissionArn(DeliverLogsPermissionArn): {
      assert std.isString(DeliverLogsPermissionArn) : 'DeliverLogsPermissionArn must be a string',
      Properties+::: {
        DeliverLogsPermissionArn: DeliverLogsPermissionArn,
      },
    },
    withLogDestination(LogDestination): {
      assert std.isString(LogDestination) : 'LogDestination must be a string',
      Properties+::: {
        LogDestination: LogDestination,
      },
    },
    withLogDestinationType(LogDestinationType): {
      assert std.isString(LogDestinationType) : 'LogDestinationType must be a string',
      Properties+::: {
        LogDestinationType: LogDestinationType,
      },
    },
    withLogFormat(LogFormat): {
      assert std.isString(LogFormat) : 'LogFormat must be a string',
      Properties+::: {
        LogFormat: LogFormat,
      },
    },
    withLogGroupName(LogGroupName): {
      assert std.isString(LogGroupName) : 'LogGroupName must be a string',
      Properties+::: {
        LogGroupName: LogGroupName,
      },
    },
    withMaxAggregationInterval(MaxAggregationInterval): {
      assert std.isNumber(MaxAggregationInterval) : 'MaxAggregationInterval must be a number',
      Properties+::: {
        MaxAggregationInterval: MaxAggregationInterval,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTrafficType(TrafficType): {
      assert std.isString(TrafficType) : 'TrafficType must be a string',
      Properties+::: {
        TrafficType: TrafficType,
      },
    },
    withDestinationOptions(DestinationOptions): {
      assert std.isObject(DestinationOptions) : 'DestinationOptions must be a object',
      Properties+::: {
        DestinationOptions: DestinationOptions,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
