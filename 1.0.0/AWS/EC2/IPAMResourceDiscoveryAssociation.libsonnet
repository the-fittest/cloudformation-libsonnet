{
  // AWS EC2 IPAMResourceDiscoveryAssociation
  IPAMResourceDiscoveryAssociation: {
    new(
      IpamId,
      IpamResourceDiscoveryId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpamId) : 'IpamId must be a string',
        IpamId: IpamId,
        assert std.isString(IpamResourceDiscoveryId) : 'IpamResourceDiscoveryId must be a string',
        IpamResourceDiscoveryId: IpamResourceDiscoveryId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::IPAMResourceDiscoveryAssociation',
    },
    withIpamArn(IpamArn): {
      assert std.isString(IpamArn) : 'IpamArn must be a string',
      Properties+::: {
        IpamArn: IpamArn,
      },
    },
    withIpamRegion(IpamRegion): {
      assert std.isString(IpamRegion) : 'IpamRegion must be a string',
      Properties+::: {
        IpamRegion: IpamRegion,
      },
    },
    withIpamResourceDiscoveryAssociationId(IpamResourceDiscoveryAssociationId): {
      assert std.isString(IpamResourceDiscoveryAssociationId) : 'IpamResourceDiscoveryAssociationId must be a string',
      Properties+::: {
        IpamResourceDiscoveryAssociationId: IpamResourceDiscoveryAssociationId,
      },
    },
    withIpamResourceDiscoveryAssociationArn(IpamResourceDiscoveryAssociationArn): {
      assert std.isString(IpamResourceDiscoveryAssociationArn) : 'IpamResourceDiscoveryAssociationArn must be a string',
      Properties+::: {
        IpamResourceDiscoveryAssociationArn: IpamResourceDiscoveryAssociationArn,
      },
    },
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: {
        IsDefault: IsDefault,
      },
    },
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: {
        OwnerId: OwnerId,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
      },
    },
    withResourceDiscoveryStatus(ResourceDiscoveryStatus): {
      assert std.isString(ResourceDiscoveryStatus) : 'ResourceDiscoveryStatus must be a string',
      Properties+::: {
        ResourceDiscoveryStatus: ResourceDiscoveryStatus,
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
