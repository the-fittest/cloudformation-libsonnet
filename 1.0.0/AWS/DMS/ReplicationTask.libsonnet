{
  new(
    TableMappings,
    SourceEndpointArn,
    MigrationType,
    TargetEndpointArn,
    ReplicationInstanceArn,
  ): {
    local base = self,
    Properties: {
      TableMappings:
        if !std.isString(TableMappings) then (error 'TableMappings must be a string')
        else if std.isEmpty(TableMappings) then (error 'TableMappings must be not empty')
        else TableMappings,
      SourceEndpointArn:
        if !std.isString(SourceEndpointArn) then (error 'SourceEndpointArn must be a string')
        else if std.isEmpty(SourceEndpointArn) then (error 'SourceEndpointArn must be not empty')
        else SourceEndpointArn,
      MigrationType:
        if !std.isString(MigrationType) then (error 'MigrationType must be a string')
        else if std.isEmpty(MigrationType) then (error 'MigrationType must be not empty')
        else MigrationType,
      TargetEndpointArn:
        if !std.isString(TargetEndpointArn) then (error 'TargetEndpointArn must be a string')
        else if std.isEmpty(TargetEndpointArn) then (error 'TargetEndpointArn must be not empty')
        else TargetEndpointArn,
      ReplicationInstanceArn:
        if !std.isString(ReplicationInstanceArn) then (error 'ReplicationInstanceArn must be a string')
        else if std.isEmpty(ReplicationInstanceArn) then (error 'ReplicationInstanceArn must be not empty')
        else ReplicationInstanceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::ReplicationTask',
  },
  setReplicationTaskSettings(ReplicationTaskSettings): {
    Properties+::: {
      ReplicationTaskSettings:
        if !std.isString(ReplicationTaskSettings) then (error 'ReplicationTaskSettings must be a string')
        else if std.isEmpty(ReplicationTaskSettings) then (error 'ReplicationTaskSettings must be not empty')
        else ReplicationTaskSettings,
    },
  },
  setCdcStartPosition(CdcStartPosition): {
    Properties+::: {
      CdcStartPosition:
        if !std.isString(CdcStartPosition) then (error 'CdcStartPosition must be a string')
        else if std.isEmpty(CdcStartPosition) then (error 'CdcStartPosition must be not empty')
        else CdcStartPosition,
    },
  },
  setCdcStopPosition(CdcStopPosition): {
    Properties+::: {
      CdcStopPosition:
        if !std.isString(CdcStopPosition) then (error 'CdcStopPosition must be a string')
        else if std.isEmpty(CdcStopPosition) then (error 'CdcStopPosition must be not empty')
        else CdcStopPosition,
    },
  },
  setTaskData(TaskData): {
    Properties+::: {
      TaskData:
        if !std.isString(TaskData) then (error 'TaskData must be a string')
        else if std.isEmpty(TaskData) then (error 'TaskData must be not empty')
        else TaskData,
    },
  },
  setCdcStartTime(CdcStartTime): {
    Properties+::: {
      CdcStartTime:
        if !std.isNumber(CdcStartTime) then (error 'CdcStartTime must be an number')
        else CdcStartTime,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else ResourceIdentifier,
    },
  },
  setReplicationTaskIdentifier(ReplicationTaskIdentifier): {
    Properties+::: {
      ReplicationTaskIdentifier:
        if !std.isString(ReplicationTaskIdentifier) then (error 'ReplicationTaskIdentifier must be a string')
        else if std.isEmpty(ReplicationTaskIdentifier) then (error 'ReplicationTaskIdentifier must be not empty')
        else ReplicationTaskIdentifier,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
