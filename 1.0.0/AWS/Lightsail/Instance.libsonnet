{
  new(
    InstanceName,
    BlueprintId,
    BundleId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceName) : 'InstanceName must be a string',
      InstanceName: InstanceName,
      assert std.isString(BlueprintId) : 'BlueprintId must be a string',
      BlueprintId: BlueprintId,
      assert std.isString(BundleId) : 'BundleId must be a string',
      BundleId: BundleId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Instance',
  },
  withSupportCode(SupportCode): {
    assert std.isString(SupportCode) : 'SupportCode must be a string',
    Properties+::: {
      SupportCode: SupportCode,
    },
  },
  withResourceType(ResourceType): {
    assert std.isString(ResourceType) : 'ResourceType must be a string',
    Properties+::: {
      ResourceType: ResourceType,
    },
  },
  withIsStaticIp(IsStaticIp): {
    assert std.isBoolean(IsStaticIp) : 'IsStaticIp must be a boolean',
    Properties+::: {
      IsStaticIp: IsStaticIp,
    },
  },
  withPrivateIpAddress(PrivateIpAddress): {
    assert std.isString(PrivateIpAddress) : 'PrivateIpAddress must be a string',
    Properties+::: {
      PrivateIpAddress: PrivateIpAddress,
    },
  },
  withPublicIpAddress(PublicIpAddress): {
    assert std.isString(PublicIpAddress) : 'PublicIpAddress must be a string',
    Properties+::: {
      PublicIpAddress: PublicIpAddress,
    },
  },
  withIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses: (if std.isArray(Ipv6Addresses) then Ipv6Addresses else [Ipv6Addresses]),
    },
  },
  withIpv6AddressesMixin(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses+: (if std.isArray(Ipv6Addresses) then Ipv6Addresses else [Ipv6Addresses]),
    },
  },
  withLocation(Location): {
    assert std.isObject(Location) : 'Location must be a object',
    Properties+::: {
      Location: Location,
    },
  },
  withHardware(Hardware): {
    assert std.isObject(Hardware) : 'Hardware must be a object',
    Properties+::: {
      Hardware: Hardware,
    },
  },
  withState(State): {
    assert std.isObject(State) : 'State must be a object',
    Properties+::: {
      State: State,
    },
  },
  withNetworking(Networking): {
    assert std.isObject(Networking) : 'Networking must be a object',
    Properties+::: {
      Networking: Networking,
    },
  },
  withUserName(UserName): {
    assert std.isString(UserName) : 'UserName must be a string',
    Properties+::: {
      UserName: UserName,
    },
  },
  withSshKeyName(SshKeyName): {
    assert std.isString(SshKeyName) : 'SshKeyName must be a string',
    Properties+::: {
      SshKeyName: SshKeyName,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withAddOns(AddOns): {
    Properties+::: {
      AddOns: (if std.isArray(AddOns) then AddOns else [AddOns]),
    },
  },
  withAddOnsMixin(AddOns): {
    Properties+::: {
      AddOns+: (if std.isArray(AddOns) then AddOns else [AddOns]),
    },
  },
  withUserData(UserData): {
    assert std.isString(UserData) : 'UserData must be a string',
    Properties+::: {
      UserData: UserData,
    },
  },
  withKeyPairName(KeyPairName): {
    assert std.isString(KeyPairName) : 'KeyPairName must be a string',
    Properties+::: {
      KeyPairName: KeyPairName,
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
  withInstanceArn(InstanceArn): {
    assert std.isString(InstanceArn) : 'InstanceArn must be a string',
    Properties+::: {
      InstanceArn: InstanceArn,
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
