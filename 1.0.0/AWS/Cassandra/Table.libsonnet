{
  new(
    KeyspaceName,
    PartitionKeyColumns,
  ): {
    local base = self,
    Properties: {
      assert std.isString(KeyspaceName) : 'KeyspaceName must be a string',
      KeyspaceName: KeyspaceName,
      PartitionKeyColumns: (if std.isArray(PartitionKeyColumns) then PartitionKeyColumns else [PartitionKeyColumns]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cassandra::Table',
  },
  withTableName(TableName): {
    assert std.isString(TableName) : 'TableName must be a string',
    Properties+::: {
      TableName: TableName,
    },
  },
  withRegularColumns(RegularColumns): {
    Properties+::: {
      RegularColumns: (if std.isArray(RegularColumns) then RegularColumns else [RegularColumns]),
    },
  },
  withRegularColumnsMixin(RegularColumns): {
    Properties+::: {
      RegularColumns+: (if std.isArray(RegularColumns) then RegularColumns else [RegularColumns]),
    },
  },
  withClusteringKeyColumns(ClusteringKeyColumns): {
    Properties+::: {
      ClusteringKeyColumns: (if std.isArray(ClusteringKeyColumns) then ClusteringKeyColumns else [ClusteringKeyColumns]),
    },
  },
  withClusteringKeyColumnsMixin(ClusteringKeyColumns): {
    Properties+::: {
      ClusteringKeyColumns+: (if std.isArray(ClusteringKeyColumns) then ClusteringKeyColumns else [ClusteringKeyColumns]),
    },
  },
  withBillingMode(BillingMode): {
    assert std.isObject(BillingMode) : 'BillingMode must be a object',
    Properties+::: {
      BillingMode: BillingMode,
    },
  },
  withPointInTimeRecoveryEnabled(PointInTimeRecoveryEnabled): {
    assert std.isBoolean(PointInTimeRecoveryEnabled) : 'PointInTimeRecoveryEnabled must be a boolean',
    Properties+::: {
      PointInTimeRecoveryEnabled: PointInTimeRecoveryEnabled,
    },
  },
  withClientSideTimestampsEnabled(ClientSideTimestampsEnabled): {
    assert std.isBoolean(ClientSideTimestampsEnabled) : 'ClientSideTimestampsEnabled must be a boolean',
    Properties+::: {
      ClientSideTimestampsEnabled: ClientSideTimestampsEnabled,
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
  withDefaultTimeToLive(DefaultTimeToLive): {
    assert std.isNumber(DefaultTimeToLive) : 'DefaultTimeToLive must be a number',
    Properties+::: {
      DefaultTimeToLive: DefaultTimeToLive,
    },
  },
  withEncryptionSpecification(EncryptionSpecification): {
    assert std.isObject(EncryptionSpecification) : 'EncryptionSpecification must be a object',
    Properties+::: {
      EncryptionSpecification: EncryptionSpecification,
    },
  },
  withAutoScalingSpecifications(AutoScalingSpecifications): {
    assert std.isObject(AutoScalingSpecifications) : 'AutoScalingSpecifications must be a object',
    Properties+::: {
      AutoScalingSpecifications: AutoScalingSpecifications,
    },
  },
  withReplicaSpecifications(ReplicaSpecifications): {
    Properties+::: {
      ReplicaSpecifications: (if std.isArray(ReplicaSpecifications) then ReplicaSpecifications else [ReplicaSpecifications]),
    },
  },
  withReplicaSpecificationsMixin(ReplicaSpecifications): {
    Properties+::: {
      ReplicaSpecifications+: (if std.isArray(ReplicaSpecifications) then ReplicaSpecifications else [ReplicaSpecifications]),
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
