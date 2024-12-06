{
  new(
    ListenerArn,
    EndpointGroupRegion,
  ): {
    local base = self,
    Properties: {
      ListenerArn:
        if !std.isString(ListenerArn) then (error 'ListenerArn must be a string')
        else if std.isEmpty(ListenerArn) then (error 'ListenerArn must be not empty')
        else ListenerArn,
      EndpointGroupRegion:
        if !std.isString(EndpointGroupRegion) then (error 'EndpointGroupRegion must be a string')
        else if std.isEmpty(EndpointGroupRegion) then (error 'EndpointGroupRegion must be not empty')
        else EndpointGroupRegion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GlobalAccelerator::EndpointGroup',
  },
  setEndpointConfigurations(EndpointConfigurations): {
    Properties+::: {
      EndpointConfigurations:
        if !std.isArray(EndpointConfigurations) then (error 'EndpointConfigurations must be an array')
        else EndpointConfigurations,
    },
  },
  pushEndpointConfigurations(EndpointConfigurations): {
    Properties+::: {
      EndpointConfigurations+: EndpointConfigurations,
    },
  },
  setTrafficDialPercentage(TrafficDialPercentage): {
    Properties+::: {
      TrafficDialPercentage:
        if !std.isNumber(TrafficDialPercentage) then (error 'TrafficDialPercentage must be an number')
        else if TrafficDialPercentage > 100 then error ('TrafficDialPercentage should be not more than 100')
        else TrafficDialPercentage,
    },
  },
  setHealthCheckPort(HealthCheckPort): {
    Properties+::: {
      HealthCheckPort:
        if !std.isNumber(HealthCheckPort) then (error 'HealthCheckPort must be an number')
        else if HealthCheckPort < -1 then error ('HealthCheckPort should be at least -1')
        else if HealthCheckPort > 65535 then error ('HealthCheckPort should be not more than 65535')
        else HealthCheckPort,
    },
  },
  setHealthCheckProtocol(HealthCheckProtocol): {
    Properties+::: {
      HealthCheckProtocol:
        if !std.isString(HealthCheckProtocol) then (error 'HealthCheckProtocol must be a string')
        else if std.isEmpty(HealthCheckProtocol) then (error 'HealthCheckProtocol must be not empty')
        else if HealthCheckProtocol != 'TCP' && HealthCheckProtocol != 'HTTP' && HealthCheckProtocol != 'HTTPS' then (error "HealthCheckProtocol should be 'TCP' or 'HTTP' or 'HTTPS'")
        else HealthCheckProtocol,
    },
  },
  setHealthCheckPath(HealthCheckPath): {
    Properties+::: {
      HealthCheckPath:
        if !std.isString(HealthCheckPath) then (error 'HealthCheckPath must be a string')
        else if std.isEmpty(HealthCheckPath) then (error 'HealthCheckPath must be not empty')
        else HealthCheckPath,
    },
  },
  setHealthCheckIntervalSeconds(HealthCheckIntervalSeconds): {
    Properties+::: {
      HealthCheckIntervalSeconds:
        if !std.isNumber(HealthCheckIntervalSeconds) then (error 'HealthCheckIntervalSeconds must be an number')
        else HealthCheckIntervalSeconds,
    },
  },
  setThresholdCount(ThresholdCount): {
    Properties+::: {
      ThresholdCount:
        if !std.isNumber(ThresholdCount) then (error 'ThresholdCount must be an number')
        else ThresholdCount,
    },
  },
  setEndpointGroupArn(EndpointGroupArn): {
    Properties+::: {
      EndpointGroupArn:
        if !std.isString(EndpointGroupArn) then (error 'EndpointGroupArn must be a string')
        else if std.isEmpty(EndpointGroupArn) then (error 'EndpointGroupArn must be not empty')
        else EndpointGroupArn,
    },
  },
  setPortOverrides(PortOverrides): {
    Properties+::: {
      PortOverrides:
        if !std.isArray(PortOverrides) then (error 'PortOverrides must be an array')
        else PortOverrides,
    },
  },
  pushPortOverrides(PortOverrides): {
    Properties+::: {
      PortOverrides+: PortOverrides,
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
