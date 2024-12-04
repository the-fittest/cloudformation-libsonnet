{
  // AWS NetworkManager ConnectPeer
  ConnectPeer: {
    new(
      ConnectAttachmentId,
      PeerAddress,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectAttachmentId) : 'ConnectAttachmentId must be a string',
        ConnectAttachmentId: ConnectAttachmentId,
        assert std.isString(PeerAddress) : 'PeerAddress must be a string',
        PeerAddress: PeerAddress,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::NetworkManager::ConnectPeer',
    },
    withCoreNetworkAddress(CoreNetworkAddress): {
      assert std.isString(CoreNetworkAddress) : 'CoreNetworkAddress must be a string',
      Properties+::: {
        CoreNetworkAddress: CoreNetworkAddress,
      },
    },
    withBgpOptions(BgpOptions): {
      assert std.isObject(BgpOptions) : 'BgpOptions must be a object',
      Properties+::: {
        BgpOptions: BgpOptions,
      },
    },
    withInsideCidrBlocks(InsideCidrBlocks): {
      Properties+::: {
        InsideCidrBlocks: (if std.isArray(InsideCidrBlocks) then InsideCidrBlocks else [InsideCidrBlocks]),
      },
    },
    withInsideCidrBlocksMixin(InsideCidrBlocks): {
      Properties+::: {
        InsideCidrBlocks+: (if std.isArray(InsideCidrBlocks) then InsideCidrBlocks else [InsideCidrBlocks]),
      },
    },
    withCoreNetworkId(CoreNetworkId): {
      assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
      Properties+::: {
        CoreNetworkId: CoreNetworkId,
      },
    },
    withConnectPeerId(ConnectPeerId): {
      assert std.isString(ConnectPeerId) : 'ConnectPeerId must be a string',
      Properties+::: {
        ConnectPeerId: ConnectPeerId,
      },
    },
    withEdgeLocation(EdgeLocation): {
      assert std.isString(EdgeLocation) : 'EdgeLocation must be a string',
      Properties+::: {
        EdgeLocation: EdgeLocation,
      },
    },
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: {
        State: State,
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withConfiguration(Configuration): {
      assert std.isObject(Configuration) : 'Configuration must be a object',
      Properties+::: {
        Configuration: Configuration,
      },
    },
    withSubnetArn(SubnetArn): {
      assert std.isString(SubnetArn) : 'SubnetArn must be a string',
      Properties+::: {
        SubnetArn: SubnetArn,
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
