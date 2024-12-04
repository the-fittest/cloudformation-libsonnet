{
  new(
    ListenerArn,
    EndpointGroupRegion,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ListenerArn) : 'ListenerArn must be a string',
      ListenerArn: ListenerArn,
      assert std.isString(EndpointGroupRegion) : 'EndpointGroupRegion must be a string',
      EndpointGroupRegion: EndpointGroupRegion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GlobalAccelerator::EndpointGroup',
  },
  withEndpointConfigurations(EndpointConfigurations): {
    Properties+::: {
      EndpointConfigurations: (if std.isArray(EndpointConfigurations) then EndpointConfigurations else [EndpointConfigurations]),
    },
  },
  withEndpointConfigurationsMixin(EndpointConfigurations): {
    Properties+::: {
      EndpointConfigurations+: (if std.isArray(EndpointConfigurations) then EndpointConfigurations else [EndpointConfigurations]),
    },
  },
  withTrafficDialPercentage(TrafficDialPercentage): {
    assert std.isNumber(TrafficDialPercentage) : 'TrafficDialPercentage must be a number',
    Properties+::: {
      TrafficDialPercentage: TrafficDialPercentage,
    },
  },
  withHealthCheckPort(HealthCheckPort): {
    assert std.isNumber(HealthCheckPort) : 'HealthCheckPort must be a number',
    Properties+::: {
      HealthCheckPort: HealthCheckPort,
    },
  },
  withHealthCheckProtocol(HealthCheckProtocol): {
    assert std.isString(HealthCheckProtocol) : 'HealthCheckProtocol must be a string',
    assert HealthCheckProtocol == 'TCP' || HealthCheckProtocol == 'HTTP' || HealthCheckProtocol == 'HTTPS' : "HealthCheckProtocol should be 'TCP' or 'HTTP' or 'HTTPS'",
    Properties+::: {
      HealthCheckProtocol: HealthCheckProtocol,
    },
  },
  withHealthCheckPath(HealthCheckPath): {
    assert std.isString(HealthCheckPath) : 'HealthCheckPath must be a string',
    Properties+::: {
      HealthCheckPath: HealthCheckPath,
    },
  },
  withHealthCheckIntervalSeconds(HealthCheckIntervalSeconds): {
    assert std.isNumber(HealthCheckIntervalSeconds) : 'HealthCheckIntervalSeconds must be a number',
    Properties+::: {
      HealthCheckIntervalSeconds: HealthCheckIntervalSeconds,
    },
  },
  withThresholdCount(ThresholdCount): {
    assert std.isNumber(ThresholdCount) : 'ThresholdCount must be a number',
    Properties+::: {
      ThresholdCount: ThresholdCount,
    },
  },
  withEndpointGroupArn(EndpointGroupArn): {
    assert std.isString(EndpointGroupArn) : 'EndpointGroupArn must be a string',
    Properties+::: {
      EndpointGroupArn: EndpointGroupArn,
    },
  },
  withPortOverrides(PortOverrides): {
    Properties+::: {
      PortOverrides: (if std.isArray(PortOverrides) then PortOverrides else [PortOverrides]),
    },
  },
  withPortOverridesMixin(PortOverrides): {
    Properties+::: {
      PortOverrides+: (if std.isArray(PortOverrides) then PortOverrides else [PortOverrides]),
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
}
