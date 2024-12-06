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
    Type: 'AWS::EC2::IPAM',
  },
  setIpamId(IpamId): {
    Properties+::: {
      IpamId:
        if !std.isString(IpamId) then (error 'IpamId must be a string')
        else if std.isEmpty(IpamId) then (error 'IpamId must be not empty')
        else IpamId,
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
  setDefaultResourceDiscoveryId(DefaultResourceDiscoveryId): {
    Properties+::: {
      DefaultResourceDiscoveryId:
        if !std.isString(DefaultResourceDiscoveryId) then (error 'DefaultResourceDiscoveryId must be a string')
        else if std.isEmpty(DefaultResourceDiscoveryId) then (error 'DefaultResourceDiscoveryId must be not empty')
        else DefaultResourceDiscoveryId,
    },
  },
  setDefaultResourceDiscoveryAssociationId(DefaultResourceDiscoveryAssociationId): {
    Properties+::: {
      DefaultResourceDiscoveryAssociationId:
        if !std.isString(DefaultResourceDiscoveryAssociationId) then (error 'DefaultResourceDiscoveryAssociationId must be a string')
        else if std.isEmpty(DefaultResourceDiscoveryAssociationId) then (error 'DefaultResourceDiscoveryAssociationId must be not empty')
        else DefaultResourceDiscoveryAssociationId,
    },
  },
  setResourceDiscoveryAssociationCount(ResourceDiscoveryAssociationCount): {
    Properties+::: {
      ResourceDiscoveryAssociationCount:
        if !std.isNumber(ResourceDiscoveryAssociationCount) then (error 'ResourceDiscoveryAssociationCount must be an number')
        else ResourceDiscoveryAssociationCount,
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
  setPublicDefaultScopeId(PublicDefaultScopeId): {
    Properties+::: {
      PublicDefaultScopeId:
        if !std.isString(PublicDefaultScopeId) then (error 'PublicDefaultScopeId must be a string')
        else if std.isEmpty(PublicDefaultScopeId) then (error 'PublicDefaultScopeId must be not empty')
        else if std.length(PublicDefaultScopeId) > 255 then error ('PublicDefaultScopeId should have not more than 255 characters')
        else PublicDefaultScopeId,
    },
  },
  setPrivateDefaultScopeId(PrivateDefaultScopeId): {
    Properties+::: {
      PrivateDefaultScopeId:
        if !std.isString(PrivateDefaultScopeId) then (error 'PrivateDefaultScopeId must be a string')
        else if std.isEmpty(PrivateDefaultScopeId) then (error 'PrivateDefaultScopeId must be not empty')
        else PrivateDefaultScopeId,
    },
  },
  setScopeCount(ScopeCount): {
    Properties+::: {
      ScopeCount:
        if !std.isNumber(ScopeCount) then (error 'ScopeCount must be an number')
        else ScopeCount,
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
  setTier(Tier): {
    Properties+::: {
      Tier:
        if !std.isString(Tier) then (error 'Tier must be a string')
        else if std.isEmpty(Tier) then (error 'Tier must be not empty')
        else if Tier != 'free' && Tier != 'advanced' then (error "Tier should be 'free' or 'advanced'")
        else Tier,
    },
  },
  setEnablePrivateGua(EnablePrivateGua): {
    Properties+::: {
      EnablePrivateGua:
        if !std.isBoolean(EnablePrivateGua) then (error 'EnablePrivateGua must be a boolean') else EnablePrivateGua,
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
