{
  new(
    GlobalNetworkId,
  ): {
    local base = self,
    Properties: {
      GlobalNetworkId:
        if !std.isString(GlobalNetworkId) then (error 'GlobalNetworkId must be a string')
        else if std.isEmpty(GlobalNetworkId) then (error 'GlobalNetworkId must be not empty')
        else GlobalNetworkId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::Device',
  },
  setDeviceArn(DeviceArn): {
    Properties+::: {
      DeviceArn:
        if !std.isString(DeviceArn) then (error 'DeviceArn must be a string')
        else if std.isEmpty(DeviceArn) then (error 'DeviceArn must be not empty')
        else DeviceArn,
    },
  },
  setDeviceId(DeviceId): {
    Properties+::: {
      DeviceId:
        if !std.isString(DeviceId) then (error 'DeviceId must be a string')
        else if std.isEmpty(DeviceId) then (error 'DeviceId must be not empty')
        else DeviceId,
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
  setAWSLocation(AWSLocation): {
    Properties+::: {
      AWSLocation:
        if !std.isObject(AWSLocation) then (error 'AWSLocation must be an object')
        else AWSLocation,
    },
  },
  setLocation(Location): {
    Properties+::: {
      Location:
        if !std.isObject(Location) then (error 'Location must be an object')
        else Location,
    },
  },
  setModel(Model): {
    Properties+::: {
      Model:
        if !std.isString(Model) then (error 'Model must be a string')
        else if std.isEmpty(Model) then (error 'Model must be not empty')
        else Model,
    },
  },
  setSerialNumber(SerialNumber): {
    Properties+::: {
      SerialNumber:
        if !std.isString(SerialNumber) then (error 'SerialNumber must be a string')
        else if std.isEmpty(SerialNumber) then (error 'SerialNumber must be not empty')
        else SerialNumber,
    },
  },
  setSiteId(SiteId): {
    Properties+::: {
      SiteId:
        if !std.isString(SiteId) then (error 'SiteId must be a string')
        else if std.isEmpty(SiteId) then (error 'SiteId must be not empty')
        else SiteId,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
    },
  },
  setVendor(Vendor): {
    Properties+::: {
      Vendor:
        if !std.isString(Vendor) then (error 'Vendor must be a string')
        else if std.isEmpty(Vendor) then (error 'Vendor must be not empty')
        else Vendor,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
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
