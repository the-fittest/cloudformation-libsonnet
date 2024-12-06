{
  new(
    ReplicatorName,
    ReplicationInfoList,
    KafkaClusters,
    ServiceExecutionRoleArn,
  ): {
    local base = self,
    Properties: {
      ReplicatorName:
        if !std.isString(ReplicatorName) then (error 'ReplicatorName must be a string')
        else if std.isEmpty(ReplicatorName) then (error 'ReplicatorName must be not empty')
        else if std.length(ReplicatorName) < 1 then error ('ReplicatorName should have at least 1 characters')
        else if std.length(ReplicatorName) > 128 then error ('ReplicatorName should have not more than 128 characters')
        else ReplicatorName,
      ReplicationInfoList:
        if !std.isArray(ReplicationInfoList) then (error 'ReplicationInfoList must be an array')
        else if std.length(ReplicationInfoList) < 1 then error ('ReplicationInfoList cannot have less than 1 items')
        else if std.length(ReplicationInfoList) > 1 then error ('ReplicationInfoList cannot have more than 1 items')
        else ReplicationInfoList,
      KafkaClusters:
        if !std.isArray(KafkaClusters) then (error 'KafkaClusters must be an array')
        else if std.length(KafkaClusters) < 2 then error ('KafkaClusters cannot have less than 2 items')
        else if std.length(KafkaClusters) > 2 then error ('KafkaClusters cannot have more than 2 items')
        else KafkaClusters,
      ServiceExecutionRoleArn:
        if !std.isString(ServiceExecutionRoleArn) then (error 'ServiceExecutionRoleArn must be a string')
        else if std.isEmpty(ServiceExecutionRoleArn) then (error 'ServiceExecutionRoleArn must be not empty')
        else ServiceExecutionRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MSK::Replicator',
  },
  setReplicatorArn(ReplicatorArn): {
    Properties+::: {
      ReplicatorArn:
        if !std.isString(ReplicatorArn) then (error 'ReplicatorArn must be a string')
        else if std.isEmpty(ReplicatorArn) then (error 'ReplicatorArn must be not empty')
        else ReplicatorArn,
    },
  },
  setCurrentVersion(CurrentVersion): {
    Properties+::: {
      CurrentVersion:
        if !std.isString(CurrentVersion) then (error 'CurrentVersion must be a string')
        else if std.isEmpty(CurrentVersion) then (error 'CurrentVersion must be not empty')
        else CurrentVersion,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
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
