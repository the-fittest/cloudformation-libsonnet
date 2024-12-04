{
  new(
    IpAddresses,
    Direction,
    SecurityGroupIds,
  ): {
    local base = self,
    Properties: {
      IpAddresses: (if std.isArray(IpAddresses) then IpAddresses else [IpAddresses]),
      assert std.isString(Direction) : 'Direction must be a string',
      Direction: Direction,
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::ResolverEndpoint',
  },
  withResolverEndpointId(ResolverEndpointId): {
    assert std.isString(ResolverEndpointId) : 'ResolverEndpointId must be a string',
    Properties+::: {
      ResolverEndpointId: ResolverEndpointId,
    },
  },
  withProtocols(Protocols): {
    Properties+::: {
      Protocols: (if std.isArray(Protocols) then Protocols else [Protocols]),
    },
  },
  withProtocolsMixin(Protocols): {
    Properties+::: {
      Protocols+: (if std.isArray(Protocols) then Protocols else [Protocols]),
    },
  },
  withOutpostArn(OutpostArn): {
    assert std.isString(OutpostArn) : 'OutpostArn must be a string',
    Properties+::: {
      OutpostArn: OutpostArn,
    },
  },
  withResolverEndpointType(ResolverEndpointType): {
    assert std.isString(ResolverEndpointType) : 'ResolverEndpointType must be a string',
    Properties+::: {
      ResolverEndpointType: ResolverEndpointType,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withIpAddressCount(IpAddressCount): {
    assert std.isString(IpAddressCount) : 'IpAddressCount must be a string',
    Properties+::: {
      IpAddressCount: IpAddressCount,
    },
  },
  withPreferredInstanceType(PreferredInstanceType): {
    assert std.isString(PreferredInstanceType) : 'PreferredInstanceType must be a string',
    Properties+::: {
      PreferredInstanceType: PreferredInstanceType,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withHostVPCId(HostVPCId): {
    assert std.isString(HostVPCId) : 'HostVPCId must be a string',
    Properties+::: {
      HostVPCId: HostVPCId,
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
}
