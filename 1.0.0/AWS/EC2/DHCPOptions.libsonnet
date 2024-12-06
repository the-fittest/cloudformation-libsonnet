{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::DHCPOptions',
  },
  setDhcpOptionsId(DhcpOptionsId): {
    Properties+::: {
      DhcpOptionsId:
        if !std.isString(DhcpOptionsId) then (error 'DhcpOptionsId must be a string')
        else if std.isEmpty(DhcpOptionsId) then (error 'DhcpOptionsId must be not empty')
        else DhcpOptionsId,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else DomainName,
    },
  },
  setDomainNameServers(DomainNameServers): {
    Properties+::: {
      DomainNameServers:
        if !std.isArray(DomainNameServers) then (error 'DomainNameServers must be an array')
        else DomainNameServers,
    },
  },
  pushDomainNameServers(DomainNameServers): {
    Properties+::: {
      DomainNameServers+: DomainNameServers,
    },
  },
  setNetbiosNameServers(NetbiosNameServers): {
    Properties+::: {
      NetbiosNameServers:
        if !std.isArray(NetbiosNameServers) then (error 'NetbiosNameServers must be an array')
        else NetbiosNameServers,
    },
  },
  pushNetbiosNameServers(NetbiosNameServers): {
    Properties+::: {
      NetbiosNameServers+: NetbiosNameServers,
    },
  },
  setNetbiosNodeType(NetbiosNodeType): {
    Properties+::: {
      NetbiosNodeType:
        if !std.isNumber(NetbiosNodeType) then (error 'NetbiosNodeType must be an number')
        else NetbiosNodeType,
    },
  },
  setNtpServers(NtpServers): {
    Properties+::: {
      NtpServers:
        if !std.isArray(NtpServers) then (error 'NtpServers must be an array')
        else NtpServers,
    },
  },
  pushNtpServers(NtpServers): {
    Properties+::: {
      NtpServers+: NtpServers,
    },
  },
  setIpv6AddressPreferredLeaseTime(Ipv6AddressPreferredLeaseTime): {
    Properties+::: {
      Ipv6AddressPreferredLeaseTime:
        if !std.isNumber(Ipv6AddressPreferredLeaseTime) then (error 'Ipv6AddressPreferredLeaseTime must be an number')
        else Ipv6AddressPreferredLeaseTime,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
