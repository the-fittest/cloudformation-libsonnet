{
  // AWS EC2 ClientVpnEndpoint
  ClientVpnEndpoint: {
    new(
      ClientCidrBlock,
      ConnectionLogOptions,
      AuthenticationOptions,
      ServerCertificateArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClientCidrBlock) : 'ClientCidrBlock must be a string',
        ClientCidrBlock: ClientCidrBlock,
        assert std.isObject(ConnectionLogOptions) : 'ConnectionLogOptions must be an object',
        ConnectionLogOptions: ConnectionLogOptions,
        AuthenticationOptions: (if std.isArray(AuthenticationOptions) then AuthenticationOptions else [AuthenticationOptions]),
        assert std.isString(ServerCertificateArn) : 'ServerCertificateArn must be a string',
        ServerCertificateArn: ServerCertificateArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::ClientVpnEndpoint',
    },
    withClientConnectOptions(ClientConnectOptions): {
      assert std.isObject(ClientConnectOptions) : 'ClientConnectOptions must be a object',
      Properties+::: {
        ClientConnectOptions: ClientConnectOptions,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withTagSpecifications(TagSpecifications): {
      Properties+::: {
        TagSpecifications: (if std.isArray(TagSpecifications) then TagSpecifications else [TagSpecifications]),
      },
    },
    withTagSpecificationsMixin(TagSpecifications): {
      Properties+::: {
        TagSpecifications+: (if std.isArray(TagSpecifications) then TagSpecifications else [TagSpecifications]),
      },
    },
    withSessionTimeoutHours(SessionTimeoutHours): {
      assert std.isNumber(SessionTimeoutHours) : 'SessionTimeoutHours must be a number',
      Properties+::: {
        SessionTimeoutHours: SessionTimeoutHours,
      },
    },
    withDnsServers(DnsServers): {
      Properties+::: {
        DnsServers: (if std.isArray(DnsServers) then DnsServers else [DnsServers]),
      },
    },
    withDnsServersMixin(DnsServers): {
      Properties+::: {
        DnsServers+: (if std.isArray(DnsServers) then DnsServers else [DnsServers]),
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSplitTunnel(SplitTunnel): {
      assert std.isBoolean(SplitTunnel) : 'SplitTunnel must be a boolean',
      Properties+::: {
        SplitTunnel: SplitTunnel,
      },
    },
    withClientLoginBannerOptions(ClientLoginBannerOptions): {
      assert std.isObject(ClientLoginBannerOptions) : 'ClientLoginBannerOptions must be a object',
      Properties+::: {
        ClientLoginBannerOptions: ClientLoginBannerOptions,
      },
    },
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: {
        VpcId: VpcId,
      },
    },
    withSelfServicePortal(SelfServicePortal): {
      assert std.isString(SelfServicePortal) : 'SelfServicePortal must be a string',
      Properties+::: {
        SelfServicePortal: SelfServicePortal,
      },
    },
    withTransportProtocol(TransportProtocol): {
      assert std.isString(TransportProtocol) : 'TransportProtocol must be a string',
      Properties+::: {
        TransportProtocol: TransportProtocol,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withVpnPort(VpnPort): {
      assert std.isNumber(VpnPort) : 'VpnPort must be a number',
      Properties+::: {
        VpnPort: VpnPort,
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
