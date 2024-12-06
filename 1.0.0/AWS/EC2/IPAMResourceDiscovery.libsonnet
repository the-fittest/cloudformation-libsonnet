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
    Type: 'AWS::EC2::IPAMResourceDiscovery',
  },
  setIpamResourceDiscoveryId(IpamResourceDiscoveryId): {
    Properties+::: {
      IpamResourceDiscoveryId:
        if !std.isString(IpamResourceDiscoveryId) then (error 'IpamResourceDiscoveryId must be a string')
        else if std.isEmpty(IpamResourceDiscoveryId) then (error 'IpamResourceDiscoveryId must be not empty')
        else IpamResourceDiscoveryId,
    },
  },
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else OwnerId,
    },
  },
  setOperatingRegions(OperatingRegions): {
    Properties+::: {
      OperatingRegions:
        if !std.isArray(OperatingRegions) then (error 'OperatingRegions must be an array')
        else OperatingRegions,
    },
  },
  pushOperatingRegions(OperatingRegions): {
    Properties+::: {
      OperatingRegions+: OperatingRegions,
    },
  },
  setIpamResourceDiscoveryRegion(IpamResourceDiscoveryRegion): {
    Properties+::: {
      IpamResourceDiscoveryRegion:
        if !std.isString(IpamResourceDiscoveryRegion) then (error 'IpamResourceDiscoveryRegion must be a string')
        else if std.isEmpty(IpamResourceDiscoveryRegion) then (error 'IpamResourceDiscoveryRegion must be not empty')
        else IpamResourceDiscoveryRegion,
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
  setIsDefault(IsDefault): {
    Properties+::: {
      IsDefault:
        if !std.isBoolean(IsDefault) then (error 'IsDefault must be a boolean') else IsDefault,
    },
  },
  setIpamResourceDiscoveryArn(IpamResourceDiscoveryArn): {
    Properties+::: {
      IpamResourceDiscoveryArn:
        if !std.isString(IpamResourceDiscoveryArn) then (error 'IpamResourceDiscoveryArn must be a string')
        else if std.isEmpty(IpamResourceDiscoveryArn) then (error 'IpamResourceDiscoveryArn must be not empty')
        else IpamResourceDiscoveryArn,
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
