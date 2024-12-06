{
  new(
    ResourceType,
    ResourceId,
  ): {
    local base = self,
    Properties: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else if ResourceType != 'NetworkInterface' && ResourceType != 'Subnet' && ResourceType != 'VPC' && ResourceType != 'TransitGateway' && ResourceType != 'TransitGatewayAttachment' then (error "ResourceType should be 'NetworkInterface' or 'Subnet' or 'VPC' or 'TransitGateway' or 'TransitGatewayAttachment'")
        else ResourceType,
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else ResourceId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::FlowLog',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDeliverCrossAccountRole(DeliverCrossAccountRole): {
    Properties+::: {
      DeliverCrossAccountRole:
        if !std.isString(DeliverCrossAccountRole) then (error 'DeliverCrossAccountRole must be a string')
        else if std.isEmpty(DeliverCrossAccountRole) then (error 'DeliverCrossAccountRole must be not empty')
        else DeliverCrossAccountRole,
    },
  },
  setDeliverLogsPermissionArn(DeliverLogsPermissionArn): {
    Properties+::: {
      DeliverLogsPermissionArn:
        if !std.isString(DeliverLogsPermissionArn) then (error 'DeliverLogsPermissionArn must be a string')
        else if std.isEmpty(DeliverLogsPermissionArn) then (error 'DeliverLogsPermissionArn must be not empty')
        else DeliverLogsPermissionArn,
    },
  },
  setLogDestination(LogDestination): {
    Properties+::: {
      LogDestination:
        if !std.isString(LogDestination) then (error 'LogDestination must be a string')
        else if std.isEmpty(LogDestination) then (error 'LogDestination must be not empty')
        else LogDestination,
    },
  },
  setLogDestinationType(LogDestinationType): {
    Properties+::: {
      LogDestinationType:
        if !std.isString(LogDestinationType) then (error 'LogDestinationType must be a string')
        else if std.isEmpty(LogDestinationType) then (error 'LogDestinationType must be not empty')
        else if LogDestinationType != 'cloud-watch-logs' && LogDestinationType != 's3' && LogDestinationType != 'kinesis-data-firehose' then (error "LogDestinationType should be 'cloud-watch-logs' or 's3' or 'kinesis-data-firehose'")
        else LogDestinationType,
    },
  },
  setLogFormat(LogFormat): {
    Properties+::: {
      LogFormat:
        if !std.isString(LogFormat) then (error 'LogFormat must be a string')
        else if std.isEmpty(LogFormat) then (error 'LogFormat must be not empty')
        else LogFormat,
    },
  },
  setLogGroupName(LogGroupName): {
    Properties+::: {
      LogGroupName:
        if !std.isString(LogGroupName) then (error 'LogGroupName must be a string')
        else if std.isEmpty(LogGroupName) then (error 'LogGroupName must be not empty')
        else LogGroupName,
    },
  },
  setMaxAggregationInterval(MaxAggregationInterval): {
    Properties+::: {
      MaxAggregationInterval:
        if !std.isNumber(MaxAggregationInterval) then (error 'MaxAggregationInterval must be an number')
        else MaxAggregationInterval,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTrafficType(TrafficType): {
    Properties+::: {
      TrafficType:
        if !std.isString(TrafficType) then (error 'TrafficType must be a string')
        else if std.isEmpty(TrafficType) then (error 'TrafficType must be not empty')
        else if TrafficType != 'ACCEPT' && TrafficType != 'ALL' && TrafficType != 'REJECT' then (error "TrafficType should be 'ACCEPT' or 'ALL' or 'REJECT'")
        else TrafficType,
    },
  },
  setDestinationOptions(DestinationOptions): {
    Properties+::: {
      DestinationOptions:
        if !std.isObject(DestinationOptions) then (error 'DestinationOptions must be an object')
        else if !std.objectHas(DestinationOptions, 'FileFormat') then (error ' have attribute FileFormat')
        else if !std.objectHas(DestinationOptions, 'HiveCompatiblePartitions') then (error ' have attribute HiveCompatiblePartitions')
        else if !std.objectHas(DestinationOptions, 'PerHourPartition') then (error ' have attribute PerHourPartition')
        else DestinationOptions,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
