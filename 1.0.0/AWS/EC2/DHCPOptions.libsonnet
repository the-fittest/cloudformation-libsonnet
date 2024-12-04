{
  // AWS EC2 DHCPOptions
  DHCPOptions: {
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
      Type: 'AWS::EC2::DHCPOptions',
    },
    withDhcpOptionsId(DhcpOptionsId): {
      assert std.isString(DhcpOptionsId) : 'DhcpOptionsId must be a string',
      Properties+::: {
        DhcpOptionsId: DhcpOptionsId,
      },
    },
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: {
        DomainName: DomainName,
      },
    },
    withDomainNameServers(DomainNameServers): {
      Properties+::: {
        DomainNameServers: (if std.isArray(DomainNameServers) then DomainNameServers else [DomainNameServers]),
      },
    },
    withDomainNameServersMixin(DomainNameServers): {
      Properties+::: {
        DomainNameServers+: (if std.isArray(DomainNameServers) then DomainNameServers else [DomainNameServers]),
      },
    },
    withNetbiosNameServers(NetbiosNameServers): {
      Properties+::: {
        NetbiosNameServers: (if std.isArray(NetbiosNameServers) then NetbiosNameServers else [NetbiosNameServers]),
      },
    },
    withNetbiosNameServersMixin(NetbiosNameServers): {
      Properties+::: {
        NetbiosNameServers+: (if std.isArray(NetbiosNameServers) then NetbiosNameServers else [NetbiosNameServers]),
      },
    },
    withNetbiosNodeType(NetbiosNodeType): {
      assert std.isNumber(NetbiosNodeType) : 'NetbiosNodeType must be a number',
      Properties+::: {
        NetbiosNodeType: NetbiosNodeType,
      },
    },
    withNtpServers(NtpServers): {
      Properties+::: {
        NtpServers: (if std.isArray(NtpServers) then NtpServers else [NtpServers]),
      },
    },
    withNtpServersMixin(NtpServers): {
      Properties+::: {
        NtpServers+: (if std.isArray(NtpServers) then NtpServers else [NtpServers]),
      },
    },
    withIpv6AddressPreferredLeaseTime(Ipv6AddressPreferredLeaseTime): {
      assert std.isNumber(Ipv6AddressPreferredLeaseTime) : 'Ipv6AddressPreferredLeaseTime must be a number',
      Properties+::: {
        Ipv6AddressPreferredLeaseTime: Ipv6AddressPreferredLeaseTime,
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
