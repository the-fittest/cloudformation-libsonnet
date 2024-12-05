{
  new(
    KeyspaceName,
    PartitionKeyColumns,
  ): {
    local base = self,
    Properties: {
      KeyspaceName:
        if !std.isString(KeyspaceName) then (error 'KeyspaceName must be a string')
        else if std.isEmpty(KeyspaceName) then (error 'KeyspaceName must be not empty')
        else KeyspaceName,
      PartitionKeyColumns:
        if !std.isArray(PartitionKeyColumns) then (error 'PartitionKeyColumns must be an array')
        else if std.length(PartitionKeyColumns) < 1 then error ('PartitionKeyColumns cannot have less than 1 items')
        else PartitionKeyColumns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cassandra::Table',
  },
  setTableName(TableName): {
    Properties+::: {
      TableName:
        if !std.isString(TableName) then (error 'TableName must be a string')
        else if std.isEmpty(TableName) then (error 'TableName must be not empty')
        else TableName,
    },
  },
  setRegularColumns(RegularColumns): {
    Properties+::: {
      RegularColumns:
        if !std.isArray(RegularColumns) then (error 'RegularColumns must be an array')
        else RegularColumns,
    },
  },
  setRegularColumnsMixin(RegularColumns): {
    Properties+::: {
      RegularColumns+: RegularColumns,
    },
  },
  setClusteringKeyColumns(ClusteringKeyColumns): {
    Properties+::: {
      ClusteringKeyColumns:
        if !std.isArray(ClusteringKeyColumns) then (error 'ClusteringKeyColumns must be an array')
        else ClusteringKeyColumns,
    },
  },
  setClusteringKeyColumnsMixin(ClusteringKeyColumns): {
    Properties+::: {
      ClusteringKeyColumns+: ClusteringKeyColumns,
    },
  },
  setBillingMode(BillingMode): {
    Properties+::: {
      BillingMode:
        if !std.isObject(BillingMode) then (error 'BillingMode must be an object')
        else if !std.objectHas(BillingMode, 'Mode') then (error ' have attribute Mode')
        else BillingMode,
    },
  },
  setPointInTimeRecoveryEnabled(PointInTimeRecoveryEnabled): {
    Properties+::: {
      PointInTimeRecoveryEnabled:
        if !std.isBoolean(PointInTimeRecoveryEnabled) then (error 'PointInTimeRecoveryEnabled must be a boolean') else PointInTimeRecoveryEnabled,
    },
  },
  setClientSideTimestampsEnabled(ClientSideTimestampsEnabled): {
    Properties+::: {
      ClientSideTimestampsEnabled:
        if !std.isBoolean(ClientSideTimestampsEnabled) then (error 'ClientSideTimestampsEnabled must be a boolean') else ClientSideTimestampsEnabled,
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
  setDefaultTimeToLive(DefaultTimeToLive): {
    Properties+::: {
      DefaultTimeToLive:
        if !std.isNumber(DefaultTimeToLive) then (error 'DefaultTimeToLive must be an number')
        else DefaultTimeToLive,
    },
  },
  setEncryptionSpecification(EncryptionSpecification): {
    Properties+::: {
      EncryptionSpecification:
        if !std.isObject(EncryptionSpecification) then (error 'EncryptionSpecification must be an object')
        else if !std.objectHas(EncryptionSpecification, 'EncryptionType') then (error ' have attribute EncryptionType')
        else EncryptionSpecification,
    },
  },
  setAutoScalingSpecifications(AutoScalingSpecifications): {
    Properties+::: {
      AutoScalingSpecifications:
        if !std.isObject(AutoScalingSpecifications) then (error 'AutoScalingSpecifications must be an object')
        else AutoScalingSpecifications,
    },
  },
  setReplicaSpecifications(ReplicaSpecifications): {
    Properties+::: {
      ReplicaSpecifications:
        if !std.isArray(ReplicaSpecifications) then (error 'ReplicaSpecifications must be an array')
        else if std.length(ReplicaSpecifications) < 1 then error ('ReplicaSpecifications cannot have less than 1 items')
        else ReplicaSpecifications,
    },
  },
  setReplicaSpecificationsMixin(ReplicaSpecifications): {
    Properties+::: {
      ReplicaSpecifications+: ReplicaSpecifications,
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
