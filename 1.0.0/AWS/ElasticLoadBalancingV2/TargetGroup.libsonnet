{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancingV2::TargetGroup',
  },
  setIpAddressType(IpAddressType): {
    Properties+::: {
      IpAddressType:
        if !std.isString(IpAddressType) then (error 'IpAddressType must be a string')
        else if std.isEmpty(IpAddressType) then (error 'IpAddressType must be not empty')
        else IpAddressType,
    },
  },
  setHealthCheckIntervalSeconds(HealthCheckIntervalSeconds): {
    Properties+::: {
      HealthCheckIntervalSeconds:
        if !std.isNumber(HealthCheckIntervalSeconds) then (error 'HealthCheckIntervalSeconds must be an number')
        else HealthCheckIntervalSeconds,
    },
  },
  setLoadBalancerArns(LoadBalancerArns): {
    Properties+::: {
      LoadBalancerArns:
        if !std.isArray(LoadBalancerArns) then (error 'LoadBalancerArns must be an array')
        else LoadBalancerArns,
    },
  },
  setLoadBalancerArnsMixin(LoadBalancerArns): {
    Properties+::: {
      LoadBalancerArns+: LoadBalancerArns,
    },
  },
  setMatcher(Matcher): {
    Properties+::: {
      Matcher:
        if !std.isObject(Matcher) then (error 'Matcher must be an object')
        else Matcher,
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
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setTargets(Targets): {
    Properties+::: {
      Targets:
        if !std.isArray(Targets) then (error 'Targets must be an array')
        else Targets,
    },
  },
  setTargetsMixin(Targets): {
    Properties+::: {
      Targets+: Targets,
    },
  },
  setHealthCheckEnabled(HealthCheckEnabled): {
    Properties+::: {
      HealthCheckEnabled:
        if !std.isBoolean(HealthCheckEnabled) then (error 'HealthCheckEnabled must be a boolean') else HealthCheckEnabled,
    },
  },
  setProtocolVersion(ProtocolVersion): {
    Properties+::: {
      ProtocolVersion:
        if !std.isString(ProtocolVersion) then (error 'ProtocolVersion must be a string')
        else if std.isEmpty(ProtocolVersion) then (error 'ProtocolVersion must be not empty')
        else ProtocolVersion,
    },
  },
  setUnhealthyThresholdCount(UnhealthyThresholdCount): {
    Properties+::: {
      UnhealthyThresholdCount:
        if !std.isNumber(UnhealthyThresholdCount) then (error 'UnhealthyThresholdCount must be an number')
        else UnhealthyThresholdCount,
    },
  },
  setHealthCheckTimeoutSeconds(HealthCheckTimeoutSeconds): {
    Properties+::: {
      HealthCheckTimeoutSeconds:
        if !std.isNumber(HealthCheckTimeoutSeconds) then (error 'HealthCheckTimeoutSeconds must be an number')
        else HealthCheckTimeoutSeconds,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
  },
  setTargetGroupFullName(TargetGroupFullName): {
    Properties+::: {
      TargetGroupFullName:
        if !std.isString(TargetGroupFullName) then (error 'TargetGroupFullName must be a string')
        else if std.isEmpty(TargetGroupFullName) then (error 'TargetGroupFullName must be not empty')
        else TargetGroupFullName,
    },
  },
  setHealthyThresholdCount(HealthyThresholdCount): {
    Properties+::: {
      HealthyThresholdCount:
        if !std.isNumber(HealthyThresholdCount) then (error 'HealthyThresholdCount must be an number')
        else HealthyThresholdCount,
    },
  },
  setHealthCheckProtocol(HealthCheckProtocol): {
    Properties+::: {
      HealthCheckProtocol:
        if !std.isString(HealthCheckProtocol) then (error 'HealthCheckProtocol must be a string')
        else if std.isEmpty(HealthCheckProtocol) then (error 'HealthCheckProtocol must be not empty')
        else HealthCheckProtocol,
    },
  },
  setTargetGroupAttributes(TargetGroupAttributes): {
    Properties+::: {
      TargetGroupAttributes:
        if !std.isArray(TargetGroupAttributes) then (error 'TargetGroupAttributes must be an array')
        else TargetGroupAttributes,
    },
  },
  setTargetGroupAttributesMixin(TargetGroupAttributes): {
    Properties+::: {
      TargetGroupAttributes+: TargetGroupAttributes,
    },
  },
  setTargetType(TargetType): {
    Properties+::: {
      TargetType:
        if !std.isString(TargetType) then (error 'TargetType must be a string')
        else if std.isEmpty(TargetType) then (error 'TargetType must be not empty')
        else TargetType,
    },
  },
  setHealthCheckPort(HealthCheckPort): {
    Properties+::: {
      HealthCheckPort:
        if !std.isString(HealthCheckPort) then (error 'HealthCheckPort must be a string')
        else if std.isEmpty(HealthCheckPort) then (error 'HealthCheckPort must be not empty')
        else HealthCheckPort,
    },
  },
  setTargetGroupArn(TargetGroupArn): {
    Properties+::: {
      TargetGroupArn:
        if !std.isString(TargetGroupArn) then (error 'TargetGroupArn must be a string')
        else if std.isEmpty(TargetGroupArn) then (error 'TargetGroupArn must be not empty')
        else TargetGroupArn,
    },
  },
  setProtocol(Protocol): {
    Properties+::: {
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else Protocol,
    },
  },
  setTargetGroupName(TargetGroupName): {
    Properties+::: {
      TargetGroupName:
        if !std.isString(TargetGroupName) then (error 'TargetGroupName must be a string')
        else if std.isEmpty(TargetGroupName) then (error 'TargetGroupName must be not empty')
        else TargetGroupName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
