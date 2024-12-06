{
  new(
    VpcSettings,
    Name,
    Password,
  ): {
    local base = self,
    Properties: {
      VpcSettings:
        if !std.isObject(VpcSettings) then (error 'VpcSettings must be an object')
        else if !std.objectHas(VpcSettings, 'VpcId') then (error ' have attribute VpcId')
        else if !std.objectHas(VpcSettings, 'SubnetIds') then (error ' have attribute SubnetIds')
        else VpcSettings,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Password:
        if !std.isString(Password) then (error 'Password must be a string')
        else if std.isEmpty(Password) then (error 'Password must be not empty')
        else Password,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DirectoryService::MicrosoftAD',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAlias(Alias): {
    Properties+::: {
      Alias:
        if !std.isString(Alias) then (error 'Alias must be a string')
        else if std.isEmpty(Alias) then (error 'Alias must be not empty')
        else Alias,
    },
  },
  setDnsIpAddresses(DnsIpAddresses): {
    Properties+::: {
      DnsIpAddresses:
        if !std.isArray(DnsIpAddresses) then (error 'DnsIpAddresses must be an array')
        else DnsIpAddresses,
    },
  },
  pushDnsIpAddresses(DnsIpAddresses): {
    Properties+::: {
      DnsIpAddresses+: DnsIpAddresses,
    },
  },
  setCreateAlias(CreateAlias): {
    Properties+::: {
      CreateAlias:
        if !std.isBoolean(CreateAlias) then (error 'CreateAlias must be a boolean') else CreateAlias,
    },
  },
  setEdition(Edition): {
    Properties+::: {
      Edition:
        if !std.isString(Edition) then (error 'Edition must be a string')
        else if std.isEmpty(Edition) then (error 'Edition must be not empty')
        else Edition,
    },
  },
  setEnableSso(EnableSso): {
    Properties+::: {
      EnableSso:
        if !std.isBoolean(EnableSso) then (error 'EnableSso must be a boolean') else EnableSso,
    },
  },
  setShortName(ShortName): {
    Properties+::: {
      ShortName:
        if !std.isString(ShortName) then (error 'ShortName must be a string')
        else if std.isEmpty(ShortName) then (error 'ShortName must be not empty')
        else ShortName,
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
