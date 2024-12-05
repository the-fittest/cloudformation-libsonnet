{
  new(
    Listeners,
  ): {
    local base = self,
    Properties: {
      Listeners:
        if !std.isArray(Listeners) then (error 'Listeners must be an array')
        else Listeners,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancing::LoadBalancer',
  },
  setSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
    },
  },
  setSecurityGroupsMixin(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: SecurityGroups,
    },
  },
  setConnectionDrainingPolicy(ConnectionDrainingPolicy): {
    Properties+::: {
      ConnectionDrainingPolicy:
        if !std.isObject(ConnectionDrainingPolicy) then (error 'ConnectionDrainingPolicy must be an object')
        else if !std.objectHas(ConnectionDrainingPolicy, 'Enabled') then (error ' have attribute Enabled')
        else ConnectionDrainingPolicy,
    },
  },
  setPolicies(Policies): {
    Properties+::: {
      Policies:
        if !std.isArray(Policies) then (error 'Policies must be an array')
        else Policies,
    },
  },
  setPoliciesMixin(Policies): {
    Properties+::: {
      Policies+: Policies,
    },
  },
  setScheme(Scheme): {
    Properties+::: {
      Scheme:
        if !std.isString(Scheme) then (error 'Scheme must be a string')
        else if std.isEmpty(Scheme) then (error 'Scheme must be not empty')
        else Scheme,
    },
  },
  setAvailabilityZones(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones:
        if !std.isArray(AvailabilityZones) then (error 'AvailabilityZones must be an array')
        else AvailabilityZones,
    },
  },
  setAvailabilityZonesMixin(AvailabilityZones): {
    Properties+::: {
      AvailabilityZones+: AvailabilityZones,
    },
  },
  setSourceSecurityGroupOwnerAlias(SourceSecurityGroupOwnerAlias): {
    Properties+::: {
      SourceSecurityGroupOwnerAlias:
        if !std.isString(SourceSecurityGroupOwnerAlias) then (error 'SourceSecurityGroupOwnerAlias must be a string')
        else if std.isEmpty(SourceSecurityGroupOwnerAlias) then (error 'SourceSecurityGroupOwnerAlias must be not empty')
        else SourceSecurityGroupOwnerAlias,
    },
  },
  setHealthCheck(HealthCheck): {
    Properties+::: {
      HealthCheck:
        if !std.isObject(HealthCheck) then (error 'HealthCheck must be an object')
        else if !std.objectHas(HealthCheck, 'Target') then (error ' have attribute Target')
        else if !std.objectHas(HealthCheck, 'UnhealthyThreshold') then (error ' have attribute UnhealthyThreshold')
        else if !std.objectHas(HealthCheck, 'Timeout') then (error ' have attribute Timeout')
        else if !std.objectHas(HealthCheck, 'HealthyThreshold') then (error ' have attribute HealthyThreshold')
        else if !std.objectHas(HealthCheck, 'Interval') then (error ' have attribute Interval')
        else HealthCheck,
    },
  },
  setCanonicalHostedZoneNameID(CanonicalHostedZoneNameID): {
    Properties+::: {
      CanonicalHostedZoneNameID:
        if !std.isString(CanonicalHostedZoneNameID) then (error 'CanonicalHostedZoneNameID must be a string')
        else if std.isEmpty(CanonicalHostedZoneNameID) then (error 'CanonicalHostedZoneNameID must be not empty')
        else CanonicalHostedZoneNameID,
    },
  },
  setCanonicalHostedZoneName(CanonicalHostedZoneName): {
    Properties+::: {
      CanonicalHostedZoneName:
        if !std.isString(CanonicalHostedZoneName) then (error 'CanonicalHostedZoneName must be a string')
        else if std.isEmpty(CanonicalHostedZoneName) then (error 'CanonicalHostedZoneName must be not empty')
        else CanonicalHostedZoneName,
    },
  },
  setDNSName(DNSName): {
    Properties+::: {
      DNSName:
        if !std.isString(DNSName) then (error 'DNSName must be a string')
        else if std.isEmpty(DNSName) then (error 'DNSName must be not empty')
        else DNSName,
    },
  },
  setAccessLoggingPolicy(AccessLoggingPolicy): {
    Properties+::: {
      AccessLoggingPolicy:
        if !std.isObject(AccessLoggingPolicy) then (error 'AccessLoggingPolicy must be an object')
        else if !std.objectHas(AccessLoggingPolicy, 'Enabled') then (error ' have attribute Enabled')
        else if !std.objectHas(AccessLoggingPolicy, 'S3BucketName') then (error ' have attribute S3BucketName')
        else AccessLoggingPolicy,
    },
  },
  setInstances(Instances): {
    Properties+::: {
      Instances:
        if !std.isArray(Instances) then (error 'Instances must be an array')
        else Instances,
    },
  },
  setInstancesMixin(Instances): {
    Properties+::: {
      Instances+: Instances,
    },
  },
  setLoadBalancerName(LoadBalancerName): {
    Properties+::: {
      LoadBalancerName:
        if !std.isString(LoadBalancerName) then (error 'LoadBalancerName must be a string')
        else if std.isEmpty(LoadBalancerName) then (error 'LoadBalancerName must be not empty')
        else LoadBalancerName,
    },
  },
  setSubnets(Subnets): {
    Properties+::: {
      Subnets:
        if !std.isArray(Subnets) then (error 'Subnets must be an array')
        else Subnets,
    },
  },
  setSubnetsMixin(Subnets): {
    Properties+::: {
      Subnets+: Subnets,
    },
  },
  setCrossZone(CrossZone): {
    Properties+::: {
      CrossZone:
        if !std.isBoolean(CrossZone) then (error 'CrossZone must be a boolean') else CrossZone,
    },
  },
  setAppCookieStickinessPolicy(AppCookieStickinessPolicy): {
    Properties+::: {
      AppCookieStickinessPolicy:
        if !std.isArray(AppCookieStickinessPolicy) then (error 'AppCookieStickinessPolicy must be an array')
        else AppCookieStickinessPolicy,
    },
  },
  setAppCookieStickinessPolicyMixin(AppCookieStickinessPolicy): {
    Properties+::: {
      AppCookieStickinessPolicy+: AppCookieStickinessPolicy,
    },
  },
  setLBCookieStickinessPolicy(LBCookieStickinessPolicy): {
    Properties+::: {
      LBCookieStickinessPolicy:
        if !std.isArray(LBCookieStickinessPolicy) then (error 'LBCookieStickinessPolicy must be an array')
        else LBCookieStickinessPolicy,
    },
  },
  setLBCookieStickinessPolicyMixin(LBCookieStickinessPolicy): {
    Properties+::: {
      LBCookieStickinessPolicy+: LBCookieStickinessPolicy,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setSourceSecurityGroupGroupName(SourceSecurityGroupGroupName): {
    Properties+::: {
      SourceSecurityGroupGroupName:
        if !std.isString(SourceSecurityGroupGroupName) then (error 'SourceSecurityGroupGroupName must be a string')
        else if std.isEmpty(SourceSecurityGroupGroupName) then (error 'SourceSecurityGroupGroupName must be not empty')
        else SourceSecurityGroupGroupName,
    },
  },
  setConnectionSettings(ConnectionSettings): {
    Properties+::: {
      ConnectionSettings:
        if !std.isObject(ConnectionSettings) then (error 'ConnectionSettings must be an object')
        else if !std.objectHas(ConnectionSettings, 'IdleTimeout') then (error ' have attribute IdleTimeout')
        else ConnectionSettings,
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
