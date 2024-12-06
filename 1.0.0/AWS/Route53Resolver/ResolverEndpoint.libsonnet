{
  new(
    IpAddresses,
    Direction,
    SecurityGroupIds,
  ): {
    local base = self,
    Properties: {
      IpAddresses:
        if !std.isArray(IpAddresses) then (error 'IpAddresses must be an array')
        else IpAddresses,
      Direction:
        if !std.isString(Direction) then (error 'Direction must be a string')
        else if std.isEmpty(Direction) then (error 'Direction must be not empty')
        else Direction,
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::ResolverEndpoint',
  },
  setResolverEndpointId(ResolverEndpointId): {
    Properties+::: {
      ResolverEndpointId:
        if !std.isString(ResolverEndpointId) then (error 'ResolverEndpointId must be a string')
        else if std.isEmpty(ResolverEndpointId) then (error 'ResolverEndpointId must be not empty')
        else ResolverEndpointId,
    },
  },
  setProtocols(Protocols): {
    Properties+::: {
      Protocols:
        if !std.isArray(Protocols) then (error 'Protocols must be an array')
        else Protocols,
    },
  },
  pushProtocols(Protocols): {
    Properties+::: {
      Protocols+: Protocols,
    },
  },
  setOutpostArn(OutpostArn): {
    Properties+::: {
      OutpostArn:
        if !std.isString(OutpostArn) then (error 'OutpostArn must be a string')
        else if std.isEmpty(OutpostArn) then (error 'OutpostArn must be not empty')
        else OutpostArn,
    },
  },
  setResolverEndpointType(ResolverEndpointType): {
    Properties+::: {
      ResolverEndpointType:
        if !std.isString(ResolverEndpointType) then (error 'ResolverEndpointType must be a string')
        else if std.isEmpty(ResolverEndpointType) then (error 'ResolverEndpointType must be not empty')
        else ResolverEndpointType,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setIpAddressCount(IpAddressCount): {
    Properties+::: {
      IpAddressCount:
        if !std.isString(IpAddressCount) then (error 'IpAddressCount must be a string')
        else if std.isEmpty(IpAddressCount) then (error 'IpAddressCount must be not empty')
        else IpAddressCount,
    },
  },
  setPreferredInstanceType(PreferredInstanceType): {
    Properties+::: {
      PreferredInstanceType:
        if !std.isString(PreferredInstanceType) then (error 'PreferredInstanceType must be a string')
        else if std.isEmpty(PreferredInstanceType) then (error 'PreferredInstanceType must be not empty')
        else PreferredInstanceType,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setHostVPCId(HostVPCId): {
    Properties+::: {
      HostVPCId:
        if !std.isString(HostVPCId) then (error 'HostVPCId must be a string')
        else if std.isEmpty(HostVPCId) then (error 'HostVPCId must be not empty')
        else HostVPCId,
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
