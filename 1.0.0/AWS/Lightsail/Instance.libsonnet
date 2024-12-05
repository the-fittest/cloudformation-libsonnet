{
  new(
    InstanceName,
    BlueprintId,
    BundleId,
  ): {
    local base = self,
    Properties: {
      InstanceName:
        if !std.isString(InstanceName) then (error 'InstanceName must be a string')
        else if std.isEmpty(InstanceName) then (error 'InstanceName must be not empty')
        else if std.length(InstanceName) < 1 then error ('InstanceName should have at least 1 characters')
        else if std.length(InstanceName) > 254 then error ('InstanceName should have not more than 254 characters')
        else InstanceName,
      BlueprintId:
        if !std.isString(BlueprintId) then (error 'BlueprintId must be a string')
        else if std.isEmpty(BlueprintId) then (error 'BlueprintId must be not empty')
        else if std.length(BlueprintId) < 1 then error ('BlueprintId should have at least 1 characters')
        else if std.length(BlueprintId) > 255 then error ('BlueprintId should have not more than 255 characters')
        else BlueprintId,
      BundleId:
        if !std.isString(BundleId) then (error 'BundleId must be a string')
        else if std.isEmpty(BundleId) then (error 'BundleId must be not empty')
        else if std.length(BundleId) < 1 then error ('BundleId should have at least 1 characters')
        else if std.length(BundleId) > 255 then error ('BundleId should have not more than 255 characters')
        else BundleId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Instance',
  },
  setSupportCode(SupportCode): {
    Properties+::: {
      SupportCode:
        if !std.isString(SupportCode) then (error 'SupportCode must be a string')
        else if std.isEmpty(SupportCode) then (error 'SupportCode must be not empty')
        else SupportCode,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else ResourceType,
    },
  },
  setIsStaticIp(IsStaticIp): {
    Properties+::: {
      IsStaticIp:
        if !std.isBoolean(IsStaticIp) then (error 'IsStaticIp must be a boolean') else IsStaticIp,
    },
  },
  setPrivateIpAddress(PrivateIpAddress): {
    Properties+::: {
      PrivateIpAddress:
        if !std.isString(PrivateIpAddress) then (error 'PrivateIpAddress must be a string')
        else if std.isEmpty(PrivateIpAddress) then (error 'PrivateIpAddress must be not empty')
        else PrivateIpAddress,
    },
  },
  setPublicIpAddress(PublicIpAddress): {
    Properties+::: {
      PublicIpAddress:
        if !std.isString(PublicIpAddress) then (error 'PublicIpAddress must be a string')
        else if std.isEmpty(PublicIpAddress) then (error 'PublicIpAddress must be not empty')
        else PublicIpAddress,
    },
  },
  setIpv6Addresses(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses:
        if !std.isArray(Ipv6Addresses) then (error 'Ipv6Addresses must be an array')
        else Ipv6Addresses,
    },
  },
  setIpv6AddressesMixin(Ipv6Addresses): {
    Properties+::: {
      Ipv6Addresses+: Ipv6Addresses,
    },
  },
  setLocation(Location): {
    Properties+::: {
      Location:
        if !std.isObject(Location) then (error 'Location must be an object')
        else Location,
    },
  },
  setHardware(Hardware): {
    Properties+::: {
      Hardware:
        if !std.isObject(Hardware) then (error 'Hardware must be an object')
        else Hardware,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isObject(State) then (error 'State must be an object')
        else State,
    },
  },
  setNetworking(Networking): {
    Properties+::: {
      Networking:
        if !std.isObject(Networking) then (error 'Networking must be an object')
        else if !std.objectHas(Networking, 'Ports') then (error ' have attribute Ports')
        else Networking,
    },
  },
  setUserName(UserName): {
    Properties+::: {
      UserName:
        if !std.isString(UserName) then (error 'UserName must be a string')
        else if std.isEmpty(UserName) then (error 'UserName must be not empty')
        else UserName,
    },
  },
  setSshKeyName(SshKeyName): {
    Properties+::: {
      SshKeyName:
        if !std.isString(SshKeyName) then (error 'SshKeyName must be a string')
        else if std.isEmpty(SshKeyName) then (error 'SshKeyName must be not empty')
        else SshKeyName,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else if std.length(AvailabilityZone) < 1 then error ('AvailabilityZone should have at least 1 characters')
        else if std.length(AvailabilityZone) > 255 then error ('AvailabilityZone should have not more than 255 characters')
        else AvailabilityZone,
    },
  },
  setAddOns(AddOns): {
    Properties+::: {
      AddOns:
        if !std.isArray(AddOns) then (error 'AddOns must be an array')
        else AddOns,
    },
  },
  setAddOnsMixin(AddOns): {
    Properties+::: {
      AddOns+: AddOns,
    },
  },
  setUserData(UserData): {
    Properties+::: {
      UserData:
        if !std.isString(UserData) then (error 'UserData must be a string')
        else if std.isEmpty(UserData) then (error 'UserData must be not empty')
        else UserData,
    },
  },
  setKeyPairName(KeyPairName): {
    Properties+::: {
      KeyPairName:
        if !std.isString(KeyPairName) then (error 'KeyPairName must be a string')
        else if std.isEmpty(KeyPairName) then (error 'KeyPairName must be not empty')
        else KeyPairName,
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
  setInstanceArn(InstanceArn): {
    Properties+::: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
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
