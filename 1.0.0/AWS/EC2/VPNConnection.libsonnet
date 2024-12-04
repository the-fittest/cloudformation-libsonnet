{
  // AWS EC2 VPNConnection
  VPNConnection: {
    new(
      Type,
      CustomerGatewayId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(CustomerGatewayId) : 'CustomerGatewayId must be a string',
        CustomerGatewayId: CustomerGatewayId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::VPNConnection',
    },
    withRemoteIpv6NetworkCidr(RemoteIpv6NetworkCidr): {
      assert std.isString(RemoteIpv6NetworkCidr) : 'RemoteIpv6NetworkCidr must be a string',
      Properties+::: {
        RemoteIpv6NetworkCidr: RemoteIpv6NetworkCidr,
      },
    },
    withRemoteIpv4NetworkCidr(RemoteIpv4NetworkCidr): {
      assert std.isString(RemoteIpv4NetworkCidr) : 'RemoteIpv4NetworkCidr must be a string',
      Properties+::: {
        RemoteIpv4NetworkCidr: RemoteIpv4NetworkCidr,
      },
    },
    withVpnTunnelOptionsSpecifications(VpnTunnelOptionsSpecifications): {
      Properties+::: {
        VpnTunnelOptionsSpecifications: (if std.isArray(VpnTunnelOptionsSpecifications) then VpnTunnelOptionsSpecifications else [VpnTunnelOptionsSpecifications]),
      },
    },
    withVpnTunnelOptionsSpecificationsMixin(VpnTunnelOptionsSpecifications): {
      Properties+::: {
        VpnTunnelOptionsSpecifications+: (if std.isArray(VpnTunnelOptionsSpecifications) then VpnTunnelOptionsSpecifications else [VpnTunnelOptionsSpecifications]),
      },
    },
    withOutsideIpAddressType(OutsideIpAddressType): {
      assert std.isString(OutsideIpAddressType) : 'OutsideIpAddressType must be a string',
      Properties+::: {
        OutsideIpAddressType: OutsideIpAddressType,
      },
    },
    withStaticRoutesOnly(StaticRoutesOnly): {
      assert std.isBoolean(StaticRoutesOnly) : 'StaticRoutesOnly must be a boolean',
      Properties+::: {
        StaticRoutesOnly: StaticRoutesOnly,
      },
    },
    withEnableAcceleration(EnableAcceleration): {
      assert std.isBoolean(EnableAcceleration) : 'EnableAcceleration must be a boolean',
      Properties+::: {
        EnableAcceleration: EnableAcceleration,
      },
    },
    withTransitGatewayId(TransitGatewayId): {
      assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
      Properties+::: {
        TransitGatewayId: TransitGatewayId,
      },
    },
    withLocalIpv4NetworkCidr(LocalIpv4NetworkCidr): {
      assert std.isString(LocalIpv4NetworkCidr) : 'LocalIpv4NetworkCidr must be a string',
      Properties+::: {
        LocalIpv4NetworkCidr: LocalIpv4NetworkCidr,
      },
    },
    withVpnGatewayId(VpnGatewayId): {
      assert std.isString(VpnGatewayId) : 'VpnGatewayId must be a string',
      Properties+::: {
        VpnGatewayId: VpnGatewayId,
      },
    },
    withTransportTransitGatewayAttachmentId(TransportTransitGatewayAttachmentId): {
      assert std.isString(TransportTransitGatewayAttachmentId) : 'TransportTransitGatewayAttachmentId must be a string',
      Properties+::: {
        TransportTransitGatewayAttachmentId: TransportTransitGatewayAttachmentId,
      },
    },
    withLocalIpv6NetworkCidr(LocalIpv6NetworkCidr): {
      assert std.isString(LocalIpv6NetworkCidr) : 'LocalIpv6NetworkCidr must be a string',
      Properties+::: {
        LocalIpv6NetworkCidr: LocalIpv6NetworkCidr,
      },
    },
    withVpnConnectionId(VpnConnectionId): {
      assert std.isString(VpnConnectionId) : 'VpnConnectionId must be a string',
      Properties+::: {
        VpnConnectionId: VpnConnectionId,
      },
    },
    withTunnelInsideIpVersion(TunnelInsideIpVersion): {
      assert std.isString(TunnelInsideIpVersion) : 'TunnelInsideIpVersion must be a string',
      Properties+::: {
        TunnelInsideIpVersion: TunnelInsideIpVersion,
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
