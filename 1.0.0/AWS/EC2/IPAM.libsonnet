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
    Type: 'AWS::EC2::IPAM',
  },
  withIpamId(IpamId): {
    assert std.isString(IpamId) : 'IpamId must be a string',
    Properties+::: {
      IpamId: IpamId,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDefaultResourceDiscoveryId(DefaultResourceDiscoveryId): {
    assert std.isString(DefaultResourceDiscoveryId) : 'DefaultResourceDiscoveryId must be a string',
    Properties+::: {
      DefaultResourceDiscoveryId: DefaultResourceDiscoveryId,
    },
  },
  withDefaultResourceDiscoveryAssociationId(DefaultResourceDiscoveryAssociationId): {
    assert std.isString(DefaultResourceDiscoveryAssociationId) : 'DefaultResourceDiscoveryAssociationId must be a string',
    Properties+::: {
      DefaultResourceDiscoveryAssociationId: DefaultResourceDiscoveryAssociationId,
    },
  },
  withResourceDiscoveryAssociationCount(ResourceDiscoveryAssociationCount): {
    assert std.isNumber(ResourceDiscoveryAssociationCount) : 'ResourceDiscoveryAssociationCount must be a number',
    Properties+::: {
      ResourceDiscoveryAssociationCount: ResourceDiscoveryAssociationCount,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withPublicDefaultScopeId(PublicDefaultScopeId): {
    assert std.isString(PublicDefaultScopeId) : 'PublicDefaultScopeId must be a string',
    Properties+::: {
      PublicDefaultScopeId: PublicDefaultScopeId,
    },
  },
  withPrivateDefaultScopeId(PrivateDefaultScopeId): {
    assert std.isString(PrivateDefaultScopeId) : 'PrivateDefaultScopeId must be a string',
    Properties+::: {
      PrivateDefaultScopeId: PrivateDefaultScopeId,
    },
  },
  withScopeCount(ScopeCount): {
    assert std.isNumber(ScopeCount) : 'ScopeCount must be a number',
    Properties+::: {
      ScopeCount: ScopeCount,
    },
  },
  withOperatingRegions(OperatingRegions): {
    Properties+::: {
      OperatingRegions: (if std.isArray(OperatingRegions) then OperatingRegions else [OperatingRegions]),
    },
  },
  withOperatingRegionsMixin(OperatingRegions): {
    Properties+::: {
      OperatingRegions+: (if std.isArray(OperatingRegions) then OperatingRegions else [OperatingRegions]),
    },
  },
  withTier(Tier): {
    assert std.isString(Tier) : 'Tier must be a string',
    assert Tier == 'free' || Tier == 'advanced' : "Tier should be 'free' or 'advanced'",
    Properties+::: {
      Tier: Tier,
    },
  },
  withEnablePrivateGua(EnablePrivateGua): {
    assert std.isBoolean(EnablePrivateGua) : 'EnablePrivateGua must be a boolean',
    Properties+::: {
      EnablePrivateGua: EnablePrivateGua,
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
