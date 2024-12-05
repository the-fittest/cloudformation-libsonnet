{
  new(
    Name,
    Source,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Source:
        if !std.isObject(Source) then (error 'Source must be an object')
        else Source,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::Flow',
  },
  setFlowArn(FlowArn): {
    Properties+::: {
      FlowArn:
        if !std.isString(FlowArn) then (error 'FlowArn must be a string')
        else if std.isEmpty(FlowArn) then (error 'FlowArn must be not empty')
        else FlowArn,
    },
  },
  setEgressIp(EgressIp): {
    Properties+::: {
      EgressIp:
        if !std.isString(EgressIp) then (error 'EgressIp must be a string')
        else if std.isEmpty(EgressIp) then (error 'EgressIp must be not empty')
        else EgressIp,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
  },
  setFlowAvailabilityZone(FlowAvailabilityZone): {
    Properties+::: {
      FlowAvailabilityZone:
        if !std.isString(FlowAvailabilityZone) then (error 'FlowAvailabilityZone must be a string')
        else if std.isEmpty(FlowAvailabilityZone) then (error 'FlowAvailabilityZone must be not empty')
        else FlowAvailabilityZone,
    },
  },
  setSourceFailoverConfig(SourceFailoverConfig): {
    Properties+::: {
      SourceFailoverConfig:
        if !std.isObject(SourceFailoverConfig) then (error 'SourceFailoverConfig must be an object')
        else SourceFailoverConfig,
    },
  },
  setVpcInterfaces(VpcInterfaces): {
    Properties+::: {
      VpcInterfaces:
        if !std.isArray(VpcInterfaces) then (error 'VpcInterfaces must be an array')
        else VpcInterfaces,
    },
  },
  setVpcInterfacesMixin(VpcInterfaces): {
    Properties+::: {
      VpcInterfaces+: VpcInterfaces,
    },
  },
  setMediaStreams(MediaStreams): {
    Properties+::: {
      MediaStreams:
        if !std.isArray(MediaStreams) then (error 'MediaStreams must be an array')
        else MediaStreams,
    },
  },
  setMediaStreamsMixin(MediaStreams): {
    Properties+::: {
      MediaStreams+: MediaStreams,
    },
  },
  setMaintenance(Maintenance): {
    Properties+::: {
      Maintenance:
        if !std.isObject(Maintenance) then (error 'Maintenance must be an object')
        else if !std.objectHas(Maintenance, 'MaintenanceDay') then (error ' have attribute MaintenanceDay')
        else if !std.objectHas(Maintenance, 'MaintenanceStartHour') then (error ' have attribute MaintenanceStartHour')
        else Maintenance,
    },
  },
  setSourceMonitoringConfig(SourceMonitoringConfig): {
    Properties+::: {
      SourceMonitoringConfig:
        if !std.isObject(SourceMonitoringConfig) then (error 'SourceMonitoringConfig must be an object')
        else if !std.objectHas(SourceMonitoringConfig, 'ThumbnailState') then (error ' have attribute ThumbnailState')
        else SourceMonitoringConfig,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
