{
  new(
    ClusterName,
    NodeType,
    ACLName,
  ): {
    local base = self,
    Properties: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else ClusterName,
      NodeType:
        if !std.isString(NodeType) then (error 'NodeType must be a string')
        else if std.isEmpty(NodeType) then (error 'NodeType must be not empty')
        else NodeType,
      ACLName:
        if !std.isString(ACLName) then (error 'ACLName must be a string')
        else if std.isEmpty(ACLName) then (error 'ACLName must be not empty')
        else ACLName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MemoryDB::Cluster',
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
  setNumReplicasPerShard(NumReplicasPerShard): {
    Properties+::: {
      NumReplicasPerShard:
        if !std.isNumber(NumReplicasPerShard) then (error 'NumReplicasPerShard must be an number')
        else NumReplicasPerShard,
    },
  },
  setSubnetGroupName(SubnetGroupName): {
    Properties+::: {
      SubnetGroupName:
        if !std.isString(SubnetGroupName) then (error 'SubnetGroupName must be a string')
        else if std.isEmpty(SubnetGroupName) then (error 'SubnetGroupName must be not empty')
        else SubnetGroupName,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setMaintenanceWindow(MaintenanceWindow): {
    Properties+::: {
      MaintenanceWindow:
        if !std.isString(MaintenanceWindow) then (error 'MaintenanceWindow must be a string')
        else if std.isEmpty(MaintenanceWindow) then (error 'MaintenanceWindow must be not empty')
        else MaintenanceWindow,
    },
  },
  setParameterGroupName(ParameterGroupName): {
    Properties+::: {
      ParameterGroupName:
        if !std.isString(ParameterGroupName) then (error 'ParameterGroupName must be a string')
        else if std.isEmpty(ParameterGroupName) then (error 'ParameterGroupName must be not empty')
        else ParameterGroupName,
    },
  },
  setParameterGroupStatus(ParameterGroupStatus): {
    Properties+::: {
      ParameterGroupStatus:
        if !std.isString(ParameterGroupStatus) then (error 'ParameterGroupStatus must be a string')
        else if std.isEmpty(ParameterGroupStatus) then (error 'ParameterGroupStatus must be not empty')
        else ParameterGroupStatus,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setSnapshotRetentionLimit(SnapshotRetentionLimit): {
    Properties+::: {
      SnapshotRetentionLimit:
        if !std.isNumber(SnapshotRetentionLimit) then (error 'SnapshotRetentionLimit must be an number')
        else SnapshotRetentionLimit,
    },
  },
  setSnapshotWindow(SnapshotWindow): {
    Properties+::: {
      SnapshotWindow:
        if !std.isString(SnapshotWindow) then (error 'SnapshotWindow must be a string')
        else if std.isEmpty(SnapshotWindow) then (error 'SnapshotWindow must be not empty')
        else SnapshotWindow,
    },
  },
  setSnsTopicArn(SnsTopicArn): {
    Properties+::: {
      SnsTopicArn:
        if !std.isString(SnsTopicArn) then (error 'SnsTopicArn must be a string')
        else if std.isEmpty(SnsTopicArn) then (error 'SnsTopicArn must be not empty')
        else SnsTopicArn,
    },
  },
  setSnsTopicStatus(SnsTopicStatus): {
    Properties+::: {
      SnsTopicStatus:
        if !std.isString(SnsTopicStatus) then (error 'SnsTopicStatus must be a string')
        else if std.isEmpty(SnsTopicStatus) then (error 'SnsTopicStatus must be not empty')
        else SnsTopicStatus,
    },
  },
  setTLSEnabled(TLSEnabled): {
    Properties+::: {
      TLSEnabled:
        if !std.isBoolean(TLSEnabled) then (error 'TLSEnabled must be a boolean') else TLSEnabled,
    },
  },
  setDataTiering(DataTiering): {
    Properties+::: {
      DataTiering:
        if !std.isObject(DataTiering) then (error 'DataTiering must be an object')
        else DataTiering,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setSnapshotArns(SnapshotArns): {
    Properties+::: {
      SnapshotArns:
        if !std.isArray(SnapshotArns) then (error 'SnapshotArns must be an array')
        else SnapshotArns,
    },
  },
  setSnapshotArnsMixin(SnapshotArns): {
    Properties+::: {
      SnapshotArns+: SnapshotArns,
    },
  },
  setSnapshotName(SnapshotName): {
    Properties+::: {
      SnapshotName:
        if !std.isString(SnapshotName) then (error 'SnapshotName must be a string')
        else if std.isEmpty(SnapshotName) then (error 'SnapshotName must be not empty')
        else SnapshotName,
    },
  },
  setFinalSnapshotName(FinalSnapshotName): {
    Properties+::: {
      FinalSnapshotName:
        if !std.isString(FinalSnapshotName) then (error 'FinalSnapshotName must be a string')
        else if std.isEmpty(FinalSnapshotName) then (error 'FinalSnapshotName must be not empty')
        else FinalSnapshotName,
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
  setClusterEndpoint(ClusterEndpoint): {
    Properties+::: {
      ClusterEndpoint:
        if !std.isObject(ClusterEndpoint) then (error 'ClusterEndpoint must be an object')
        else ClusterEndpoint,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
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
