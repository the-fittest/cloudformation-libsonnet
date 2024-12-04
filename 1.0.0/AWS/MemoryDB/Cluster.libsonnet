{
  new(
    ClusterName,
    NodeType,
    ACLName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      ClusterName: ClusterName,
      assert std.isString(NodeType) : 'NodeType must be a string',
      NodeType: NodeType,
      assert std.isString(ACLName) : 'ACLName must be a string',
      ACLName: ACLName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MemoryDB::Cluster',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withMultiRegionClusterName(MultiRegionClusterName): {
    assert std.isString(MultiRegionClusterName) : 'MultiRegionClusterName must be a string',
    Properties+::: {
      MultiRegionClusterName: MultiRegionClusterName,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withNumShards(NumShards): {
    assert std.isNumber(NumShards) : 'NumShards must be a number',
    Properties+::: {
      NumShards: NumShards,
    },
  },
  withNumReplicasPerShard(NumReplicasPerShard): {
    assert std.isNumber(NumReplicasPerShard) : 'NumReplicasPerShard must be a number',
    Properties+::: {
      NumReplicasPerShard: NumReplicasPerShard,
    },
  },
  withSubnetGroupName(SubnetGroupName): {
    assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
    Properties+::: {
      SubnetGroupName: SubnetGroupName,
    },
  },
  withSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withMaintenanceWindow(MaintenanceWindow): {
    assert std.isString(MaintenanceWindow) : 'MaintenanceWindow must be a string',
    Properties+::: {
      MaintenanceWindow: MaintenanceWindow,
    },
  },
  withParameterGroupName(ParameterGroupName): {
    assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
    Properties+::: {
      ParameterGroupName: ParameterGroupName,
    },
  },
  withParameterGroupStatus(ParameterGroupStatus): {
    assert std.isString(ParameterGroupStatus) : 'ParameterGroupStatus must be a string',
    Properties+::: {
      ParameterGroupStatus: ParameterGroupStatus,
    },
  },
  withPort(Port): {
    assert std.isNumber(Port) : 'Port must be a number',
    Properties+::: {
      Port: Port,
    },
  },
  withSnapshotRetentionLimit(SnapshotRetentionLimit): {
    assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a number',
    Properties+::: {
      SnapshotRetentionLimit: SnapshotRetentionLimit,
    },
  },
  withSnapshotWindow(SnapshotWindow): {
    assert std.isString(SnapshotWindow) : 'SnapshotWindow must be a string',
    Properties+::: {
      SnapshotWindow: SnapshotWindow,
    },
  },
  withSnsTopicArn(SnsTopicArn): {
    assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
    Properties+::: {
      SnsTopicArn: SnsTopicArn,
    },
  },
  withSnsTopicStatus(SnsTopicStatus): {
    assert std.isString(SnsTopicStatus) : 'SnsTopicStatus must be a string',
    Properties+::: {
      SnsTopicStatus: SnsTopicStatus,
    },
  },
  withTLSEnabled(TLSEnabled): {
    assert std.isBoolean(TLSEnabled) : 'TLSEnabled must be a boolean',
    Properties+::: {
      TLSEnabled: TLSEnabled,
    },
  },
  withDataTiering(DataTiering): {
    assert std.isObject(DataTiering) : 'DataTiering must be a object',
    Properties+::: {
      DataTiering: DataTiering,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withSnapshotArns(SnapshotArns): {
    Properties+::: {
      SnapshotArns: (if std.isArray(SnapshotArns) then SnapshotArns else [SnapshotArns]),
    },
  },
  withSnapshotArnsMixin(SnapshotArns): {
    Properties+::: {
      SnapshotArns+: (if std.isArray(SnapshotArns) then SnapshotArns else [SnapshotArns]),
    },
  },
  withSnapshotName(SnapshotName): {
    assert std.isString(SnapshotName) : 'SnapshotName must be a string',
    Properties+::: {
      SnapshotName: SnapshotName,
    },
  },
  withFinalSnapshotName(FinalSnapshotName): {
    assert std.isString(FinalSnapshotName) : 'FinalSnapshotName must be a string',
    Properties+::: {
      FinalSnapshotName: FinalSnapshotName,
    },
  },
  withARN(ARN): {
    assert std.isString(ARN) : 'ARN must be a string',
    Properties+::: {
      ARN: ARN,
    },
  },
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    Properties+::: {
      Engine: Engine,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withClusterEndpoint(ClusterEndpoint): {
    assert std.isObject(ClusterEndpoint) : 'ClusterEndpoint must be a object',
    Properties+::: {
      ClusterEndpoint: ClusterEndpoint,
    },
  },
  withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
    Properties+::: {
      AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
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
