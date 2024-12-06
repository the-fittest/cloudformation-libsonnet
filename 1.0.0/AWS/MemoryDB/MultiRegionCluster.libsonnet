{
  new(
    NodeType,
  ): {
    local base = self,
    Properties: {
      NodeType:
        if !std.isString(NodeType) then (error 'NodeType must be a string')
        else if std.isEmpty(NodeType) then (error 'NodeType must be not empty')
        else NodeType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MemoryDB::MultiRegionCluster',
  },
  setMultiRegionClusterNameSuffix(MultiRegionClusterNameSuffix): {
    Properties+::: {
      MultiRegionClusterNameSuffix:
        if !std.isString(MultiRegionClusterNameSuffix) then (error 'MultiRegionClusterNameSuffix must be a string')
        else if std.isEmpty(MultiRegionClusterNameSuffix) then (error 'MultiRegionClusterNameSuffix must be not empty')
        else MultiRegionClusterNameSuffix,
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
  setMultiRegionClusterName(MultiRegionClusterName): {
    Properties+::: {
      MultiRegionClusterName:
        if !std.isString(MultiRegionClusterName) then (error 'MultiRegionClusterName must be a string')
        else if std.isEmpty(MultiRegionClusterName) then (error 'MultiRegionClusterName must be not empty')
        else MultiRegionClusterName,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setNumShards(NumShards): {
    Properties+::: {
      NumShards:
        if !std.isNumber(NumShards) then (error 'NumShards must be an number')
        else NumShards,
    },
  },
  setMultiRegionParameterGroupName(MultiRegionParameterGroupName): {
    Properties+::: {
      MultiRegionParameterGroupName:
        if !std.isString(MultiRegionParameterGroupName) then (error 'MultiRegionParameterGroupName must be a string')
        else if std.isEmpty(MultiRegionParameterGroupName) then (error 'MultiRegionParameterGroupName must be not empty')
        else MultiRegionParameterGroupName,
    },
  },
  setTLSEnabled(TLSEnabled): {
    Properties+::: {
      TLSEnabled:
        if !std.isBoolean(TLSEnabled) then (error 'TLSEnabled must be a boolean') else TLSEnabled,
    },
  },
  setARN(ARN): {
    Properties+::: {
      ARN:
        if !std.isString(ARN) then (error 'ARN must be a string')
        else if std.isEmpty(ARN) then (error 'ARN must be not empty')
        else ARN,
    },
  },
  setEngine(Engine): {
    Properties+::: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else Engine,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setUpdateStrategy(UpdateStrategy): {
    Properties+::: {
      UpdateStrategy:
        if !std.isString(UpdateStrategy) then (error 'UpdateStrategy must be a string')
        else if std.isEmpty(UpdateStrategy) then (error 'UpdateStrategy must be not empty')
        else if UpdateStrategy != 'COORDINATED' && UpdateStrategy != 'UNCOORDINATED' then (error "UpdateStrategy should be 'COORDINATED' or 'UNCOORDINATED'")
        else UpdateStrategy,
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
