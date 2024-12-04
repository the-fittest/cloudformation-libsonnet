{
  // AWS EC2 IPAMResourceDiscovery
  IPAMResourceDiscovery: {
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
      Type: 'AWS::EC2::IPAMResourceDiscovery',
    },
    withIpamResourceDiscoveryId(IpamResourceDiscoveryId): {
      assert std.isString(IpamResourceDiscoveryId) : 'IpamResourceDiscoveryId must be a string',
      Properties+::: {
        IpamResourceDiscoveryId: IpamResourceDiscoveryId,
      },
    },
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: {
        OwnerId: OwnerId,
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
    withIpamResourceDiscoveryRegion(IpamResourceDiscoveryRegion): {
      assert std.isString(IpamResourceDiscoveryRegion) : 'IpamResourceDiscoveryRegion must be a string',
      Properties+::: {
        IpamResourceDiscoveryRegion: IpamResourceDiscoveryRegion,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: {
        IsDefault: IsDefault,
      },
    },
    withIpamResourceDiscoveryArn(IpamResourceDiscoveryArn): {
      assert std.isString(IpamResourceDiscoveryArn) : 'IpamResourceDiscoveryArn must be a string',
      Properties+::: {
        IpamResourceDiscoveryArn: IpamResourceDiscoveryArn,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
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
  },
}
