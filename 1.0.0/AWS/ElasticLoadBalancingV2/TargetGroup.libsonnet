{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancingV2::TargetGroup',
  },
  withIpAddressType(IpAddressType): {
    assert std.isString(IpAddressType) : 'IpAddressType must be a string',
    Properties+::: {
      IpAddressType: IpAddressType,
    },
  },
  withHealthCheckIntervalSeconds(HealthCheckIntervalSeconds): {
    assert std.isNumber(HealthCheckIntervalSeconds) : 'HealthCheckIntervalSeconds must be a number',
    Properties+::: {
      HealthCheckIntervalSeconds: HealthCheckIntervalSeconds,
    },
  },
  withLoadBalancerArns(LoadBalancerArns): {
    Properties+::: {
      LoadBalancerArns: (if std.isArray(LoadBalancerArns) then LoadBalancerArns else [LoadBalancerArns]),
    },
  },
  withLoadBalancerArnsMixin(LoadBalancerArns): {
    Properties+::: {
      LoadBalancerArns+: (if std.isArray(LoadBalancerArns) then LoadBalancerArns else [LoadBalancerArns]),
    },
  },
  withMatcher(Matcher): {
    assert std.isObject(Matcher) : 'Matcher must be a object',
    Properties+::: {
      Matcher: Matcher,
    },
  },
  withHealthCheckPath(HealthCheckPath): {
    assert std.isString(HealthCheckPath) : 'HealthCheckPath must be a string',
    Properties+::: {
      HealthCheckPath: HealthCheckPath,
    },
  },
  withPort(Port): {
    assert std.isNumber(Port) : 'Port must be a number',
    Properties+::: {
      Port: Port,
    },
  },
  withTargets(Targets): {
    Properties+::: {
      Targets: (if std.isArray(Targets) then Targets else [Targets]),
    },
  },
  withTargetsMixin(Targets): {
    Properties+::: {
      Targets+: (if std.isArray(Targets) then Targets else [Targets]),
    },
  },
  withHealthCheckEnabled(HealthCheckEnabled): {
    assert std.isBoolean(HealthCheckEnabled) : 'HealthCheckEnabled must be a boolean',
    Properties+::: {
      HealthCheckEnabled: HealthCheckEnabled,
    },
  },
  withProtocolVersion(ProtocolVersion): {
    assert std.isString(ProtocolVersion) : 'ProtocolVersion must be a string',
    Properties+::: {
      ProtocolVersion: ProtocolVersion,
    },
  },
  withUnhealthyThresholdCount(UnhealthyThresholdCount): {
    assert std.isNumber(UnhealthyThresholdCount) : 'UnhealthyThresholdCount must be a number',
    Properties+::: {
      UnhealthyThresholdCount: UnhealthyThresholdCount,
    },
  },
  withHealthCheckTimeoutSeconds(HealthCheckTimeoutSeconds): {
    assert std.isNumber(HealthCheckTimeoutSeconds) : 'HealthCheckTimeoutSeconds must be a number',
    Properties+::: {
      HealthCheckTimeoutSeconds: HealthCheckTimeoutSeconds,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withVpcId(VpcId): {
    assert std.isString(VpcId) : 'VpcId must be a string',
    Properties+::: {
      VpcId: VpcId,
    },
  },
  withTargetGroupFullName(TargetGroupFullName): {
    assert std.isString(TargetGroupFullName) : 'TargetGroupFullName must be a string',
    Properties+::: {
      TargetGroupFullName: TargetGroupFullName,
    },
  },
  withHealthyThresholdCount(HealthyThresholdCount): {
    assert std.isNumber(HealthyThresholdCount) : 'HealthyThresholdCount must be a number',
    Properties+::: {
      HealthyThresholdCount: HealthyThresholdCount,
    },
  },
  withHealthCheckProtocol(HealthCheckProtocol): {
    assert std.isString(HealthCheckProtocol) : 'HealthCheckProtocol must be a string',
    Properties+::: {
      HealthCheckProtocol: HealthCheckProtocol,
    },
  },
  withTargetGroupAttributes(TargetGroupAttributes): {
    Properties+::: {
      TargetGroupAttributes: (if std.isArray(TargetGroupAttributes) then TargetGroupAttributes else [TargetGroupAttributes]),
    },
  },
  withTargetGroupAttributesMixin(TargetGroupAttributes): {
    Properties+::: {
      TargetGroupAttributes+: (if std.isArray(TargetGroupAttributes) then TargetGroupAttributes else [TargetGroupAttributes]),
    },
  },
  withTargetType(TargetType): {
    assert std.isString(TargetType) : 'TargetType must be a string',
    Properties+::: {
      TargetType: TargetType,
    },
  },
  withHealthCheckPort(HealthCheckPort): {
    assert std.isString(HealthCheckPort) : 'HealthCheckPort must be a string',
    Properties+::: {
      HealthCheckPort: HealthCheckPort,
    },
  },
  withTargetGroupArn(TargetGroupArn): {
    assert std.isString(TargetGroupArn) : 'TargetGroupArn must be a string',
    Properties+::: {
      TargetGroupArn: TargetGroupArn,
    },
  },
  withProtocol(Protocol): {
    assert std.isString(Protocol) : 'Protocol must be a string',
    Properties+::: {
      Protocol: Protocol,
    },
  },
  withTargetGroupName(TargetGroupName): {
    assert std.isString(TargetGroupName) : 'TargetGroupName must be a string',
    Properties+::: {
      TargetGroupName: TargetGroupName,
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
