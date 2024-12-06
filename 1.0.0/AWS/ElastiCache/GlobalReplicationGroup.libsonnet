{
  new(
    Members,
  ): {
    local base = self,
    Properties: {
      Members:
        if !std.isArray(Members) then (error 'Members must be an array')
        else if std.length(Members) < 1 then error ('Members cannot have less than 1 items')
        else Members,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::GlobalReplicationGroup',
  },
  setGlobalReplicationGroupIdSuffix(GlobalReplicationGroupIdSuffix): {
    Properties+::: {
      GlobalReplicationGroupIdSuffix:
        if !std.isString(GlobalReplicationGroupIdSuffix) then (error 'GlobalReplicationGroupIdSuffix must be a string')
        else if std.isEmpty(GlobalReplicationGroupIdSuffix) then (error 'GlobalReplicationGroupIdSuffix must be not empty')
        else GlobalReplicationGroupIdSuffix,
    },
  },
  setAutomaticFailoverEnabled(AutomaticFailoverEnabled): {
    Properties+::: {
      AutomaticFailoverEnabled:
        if !std.isBoolean(AutomaticFailoverEnabled) then (error 'AutomaticFailoverEnabled must be a boolean') else AutomaticFailoverEnabled,
    },
  },
  setCacheNodeType(CacheNodeType): {
    Properties+::: {
      CacheNodeType:
        if !std.isString(CacheNodeType) then (error 'CacheNodeType must be a string')
        else if std.isEmpty(CacheNodeType) then (error 'CacheNodeType must be not empty')
        else CacheNodeType,
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
  setEngine(Engine): {
    Properties+::: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else Engine,
    },
  },
  setCacheParameterGroupName(CacheParameterGroupName): {
    Properties+::: {
      CacheParameterGroupName:
        if !std.isString(CacheParameterGroupName) then (error 'CacheParameterGroupName must be a string')
        else if std.isEmpty(CacheParameterGroupName) then (error 'CacheParameterGroupName must be not empty')
        else CacheParameterGroupName,
    },
  },
  setGlobalNodeGroupCount(GlobalNodeGroupCount): {
    Properties+::: {
      GlobalNodeGroupCount:
        if !std.isNumber(GlobalNodeGroupCount) then (error 'GlobalNodeGroupCount must be an number')
        else GlobalNodeGroupCount,
    },
  },
  setGlobalReplicationGroupDescription(GlobalReplicationGroupDescription): {
    Properties+::: {
      GlobalReplicationGroupDescription:
        if !std.isString(GlobalReplicationGroupDescription) then (error 'GlobalReplicationGroupDescription must be a string')
        else if std.isEmpty(GlobalReplicationGroupDescription) then (error 'GlobalReplicationGroupDescription must be not empty')
        else GlobalReplicationGroupDescription,
    },
  },
  setGlobalReplicationGroupId(GlobalReplicationGroupId): {
    Properties+::: {
      GlobalReplicationGroupId:
        if !std.isString(GlobalReplicationGroupId) then (error 'GlobalReplicationGroupId must be a string')
        else if std.isEmpty(GlobalReplicationGroupId) then (error 'GlobalReplicationGroupId must be not empty')
        else GlobalReplicationGroupId,
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
  setRegionalConfigurations(RegionalConfigurations): {
    Properties+::: {
      RegionalConfigurations:
        if !std.isArray(RegionalConfigurations) then (error 'RegionalConfigurations must be an array')
        else RegionalConfigurations,
    },
  },
  pushRegionalConfigurations(RegionalConfigurations): {
    Properties+::: {
      RegionalConfigurations+: RegionalConfigurations,
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
