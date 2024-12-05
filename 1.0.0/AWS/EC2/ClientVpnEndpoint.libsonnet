{
  new(
    ClientCidrBlock,
    ConnectionLogOptions,
    AuthenticationOptions,
    ServerCertificateArn,
  ): {
    local base = self,
    Properties: {
      ClientCidrBlock:
        if !std.isString(ClientCidrBlock) then (error 'ClientCidrBlock must be a string')
        else if std.isEmpty(ClientCidrBlock) then (error 'ClientCidrBlock must be not empty')
        else ClientCidrBlock,
      ConnectionLogOptions:
        if !std.isObject(ConnectionLogOptions) then (error 'ConnectionLogOptions must be an object')
        else if !std.objectHas(ConnectionLogOptions, 'Enabled') then (error ' have attribute Enabled')
        else ConnectionLogOptions,
      AuthenticationOptions:
        if !std.isArray(AuthenticationOptions) then (error 'AuthenticationOptions must be an array')
        else AuthenticationOptions,
      ServerCertificateArn:
        if !std.isString(ServerCertificateArn) then (error 'ServerCertificateArn must be a string')
        else if std.isEmpty(ServerCertificateArn) then (error 'ServerCertificateArn must be not empty')
        else ServerCertificateArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::ClientVpnEndpoint',
  },
  setClientConnectOptions(ClientConnectOptions): {
    Properties+::: {
      ClientConnectOptions:
        if !std.isObject(ClientConnectOptions) then (error 'ClientConnectOptions must be an object')
        else if !std.objectHas(ClientConnectOptions, 'Enabled') then (error ' have attribute Enabled')
        else ClientConnectOptions,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications:
        if !std.isArray(TagSpecifications) then (error 'TagSpecifications must be an array')
        else TagSpecifications,
    },
  },
  setTagSpecificationsMixin(TagSpecifications): {
    Properties+::: {
      TagSpecifications+: TagSpecifications,
    },
  },
  setSessionTimeoutHours(SessionTimeoutHours): {
    Properties+::: {
      SessionTimeoutHours:
        if !std.isNumber(SessionTimeoutHours) then (error 'SessionTimeoutHours must be an number')
        else SessionTimeoutHours,
    },
  },
  setDnsServers(DnsServers): {
    Properties+::: {
      DnsServers:
        if !std.isArray(DnsServers) then (error 'DnsServers must be an array')
        else DnsServers,
    },
  },
  setDnsServersMixin(DnsServers): {
    Properties+::: {
      DnsServers+: DnsServers,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setSplitTunnel(SplitTunnel): {
    Properties+::: {
      SplitTunnel:
        if !std.isBoolean(SplitTunnel) then (error 'SplitTunnel must be a boolean') else SplitTunnel,
    },
  },
  setClientLoginBannerOptions(ClientLoginBannerOptions): {
    Properties+::: {
      ClientLoginBannerOptions:
        if !std.isObject(ClientLoginBannerOptions) then (error 'ClientLoginBannerOptions must be an object')
        else if !std.objectHas(ClientLoginBannerOptions, 'Enabled') then (error ' have attribute Enabled')
        else ClientLoginBannerOptions,
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
  setSelfServicePortal(SelfServicePortal): {
    Properties+::: {
      SelfServicePortal:
        if !std.isString(SelfServicePortal) then (error 'SelfServicePortal must be a string')
        else if std.isEmpty(SelfServicePortal) then (error 'SelfServicePortal must be not empty')
        else SelfServicePortal,
    },
  },
  setTransportProtocol(TransportProtocol): {
    Properties+::: {
      TransportProtocol:
        if !std.isString(TransportProtocol) then (error 'TransportProtocol must be a string')
        else if std.isEmpty(TransportProtocol) then (error 'TransportProtocol must be not empty')
        else TransportProtocol,
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
  setVpnPort(VpnPort): {
    Properties+::: {
      VpnPort:
        if !std.isNumber(VpnPort) then (error 'VpnPort must be an number')
        else VpnPort,
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
