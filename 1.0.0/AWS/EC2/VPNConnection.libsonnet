{
  new(
    Type,
    CustomerGatewayId,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      CustomerGatewayId:
        if !std.isString(CustomerGatewayId) then (error 'CustomerGatewayId must be a string')
        else if std.isEmpty(CustomerGatewayId) then (error 'CustomerGatewayId must be not empty')
        else CustomerGatewayId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPNConnection',
  },
  setRemoteIpv6NetworkCidr(RemoteIpv6NetworkCidr): {
    Properties+::: {
      RemoteIpv6NetworkCidr:
        if !std.isString(RemoteIpv6NetworkCidr) then (error 'RemoteIpv6NetworkCidr must be a string')
        else if std.isEmpty(RemoteIpv6NetworkCidr) then (error 'RemoteIpv6NetworkCidr must be not empty')
        else RemoteIpv6NetworkCidr,
    },
  },
  setRemoteIpv4NetworkCidr(RemoteIpv4NetworkCidr): {
    Properties+::: {
      RemoteIpv4NetworkCidr:
        if !std.isString(RemoteIpv4NetworkCidr) then (error 'RemoteIpv4NetworkCidr must be a string')
        else if std.isEmpty(RemoteIpv4NetworkCidr) then (error 'RemoteIpv4NetworkCidr must be not empty')
        else RemoteIpv4NetworkCidr,
    },
  },
  setVpnTunnelOptionsSpecifications(VpnTunnelOptionsSpecifications): {
    Properties+::: {
      VpnTunnelOptionsSpecifications:
        if !std.isArray(VpnTunnelOptionsSpecifications) then (error 'VpnTunnelOptionsSpecifications must be an array')
        else VpnTunnelOptionsSpecifications,
    },
  },
  setVpnTunnelOptionsSpecificationsMixin(VpnTunnelOptionsSpecifications): {
    Properties+::: {
      VpnTunnelOptionsSpecifications+: VpnTunnelOptionsSpecifications,
    },
  },
  setOutsideIpAddressType(OutsideIpAddressType): {
    Properties+::: {
      OutsideIpAddressType:
        if !std.isString(OutsideIpAddressType) then (error 'OutsideIpAddressType must be a string')
        else if std.isEmpty(OutsideIpAddressType) then (error 'OutsideIpAddressType must be not empty')
        else OutsideIpAddressType,
    },
  },
  setStaticRoutesOnly(StaticRoutesOnly): {
    Properties+::: {
      StaticRoutesOnly:
        if !std.isBoolean(StaticRoutesOnly) then (error 'StaticRoutesOnly must be a boolean') else StaticRoutesOnly,
    },
  },
  setEnableAcceleration(EnableAcceleration): {
    Properties+::: {
      EnableAcceleration:
        if !std.isBoolean(EnableAcceleration) then (error 'EnableAcceleration must be a boolean') else EnableAcceleration,
    },
  },
  setTransitGatewayId(TransitGatewayId): {
    Properties+::: {
      TransitGatewayId:
        if !std.isString(TransitGatewayId) then (error 'TransitGatewayId must be a string')
        else if std.isEmpty(TransitGatewayId) then (error 'TransitGatewayId must be not empty')
        else TransitGatewayId,
    },
  },
  setLocalIpv4NetworkCidr(LocalIpv4NetworkCidr): {
    Properties+::: {
      LocalIpv4NetworkCidr:
        if !std.isString(LocalIpv4NetworkCidr) then (error 'LocalIpv4NetworkCidr must be a string')
        else if std.isEmpty(LocalIpv4NetworkCidr) then (error 'LocalIpv4NetworkCidr must be not empty')
        else LocalIpv4NetworkCidr,
    },
  },
  setVpnGatewayId(VpnGatewayId): {
    Properties+::: {
      VpnGatewayId:
        if !std.isString(VpnGatewayId) then (error 'VpnGatewayId must be a string')
        else if std.isEmpty(VpnGatewayId) then (error 'VpnGatewayId must be not empty')
        else VpnGatewayId,
    },
  },
  setTransportTransitGatewayAttachmentId(TransportTransitGatewayAttachmentId): {
    Properties+::: {
      TransportTransitGatewayAttachmentId:
        if !std.isString(TransportTransitGatewayAttachmentId) then (error 'TransportTransitGatewayAttachmentId must be a string')
        else if std.isEmpty(TransportTransitGatewayAttachmentId) then (error 'TransportTransitGatewayAttachmentId must be not empty')
        else TransportTransitGatewayAttachmentId,
    },
  },
  setLocalIpv6NetworkCidr(LocalIpv6NetworkCidr): {
    Properties+::: {
      LocalIpv6NetworkCidr:
        if !std.isString(LocalIpv6NetworkCidr) then (error 'LocalIpv6NetworkCidr must be a string')
        else if std.isEmpty(LocalIpv6NetworkCidr) then (error 'LocalIpv6NetworkCidr must be not empty')
        else LocalIpv6NetworkCidr,
    },
  },
  setVpnConnectionId(VpnConnectionId): {
    Properties+::: {
      VpnConnectionId:
        if !std.isString(VpnConnectionId) then (error 'VpnConnectionId must be a string')
        else if std.isEmpty(VpnConnectionId) then (error 'VpnConnectionId must be not empty')
        else VpnConnectionId,
    },
  },
  setTunnelInsideIpVersion(TunnelInsideIpVersion): {
    Properties+::: {
      TunnelInsideIpVersion:
        if !std.isString(TunnelInsideIpVersion) then (error 'TunnelInsideIpVersion must be a string')
        else if std.isEmpty(TunnelInsideIpVersion) then (error 'TunnelInsideIpVersion must be not empty')
        else TunnelInsideIpVersion,
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
