{
  new(
    BackupPlan,
  ): {
    local base = self,
    Properties: {
      BackupPlan:
        if !std.isObject(BackupPlan) then (error 'BackupPlan must be an object')
        else if !std.objectHas(BackupPlan, 'BackupPlanName') then (error ' have attribute BackupPlanName')
        else if !std.objectHas(BackupPlan, 'BackupPlanRule') then (error ' have attribute BackupPlanRule')
        else BackupPlan,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::BackupPlan',
  },
  setBackupPlanTags(BackupPlanTags): {
    Properties+::: {
      BackupPlanTags:
        if !std.isObject(BackupPlanTags) then (error 'BackupPlanTags must be an object')
        else BackupPlanTags,
    },
  },
  setBackupPlanArn(BackupPlanArn): {
    Properties+::: {
      BackupPlanArn:
        if !std.isString(BackupPlanArn) then (error 'BackupPlanArn must be a string')
        else if std.isEmpty(BackupPlanArn) then (error 'BackupPlanArn must be not empty')
        else BackupPlanArn,
    },
  },
  setBackupPlanId(BackupPlanId): {
    Properties+::: {
      BackupPlanId:
        if !std.isString(BackupPlanId) then (error 'BackupPlanId must be a string')
        else if std.isEmpty(BackupPlanId) then (error 'BackupPlanId must be not empty')
        else BackupPlanId,
    },
  },
  setVersionId(VersionId): {
    Properties+::: {
      VersionId:
        if !std.isString(VersionId) then (error 'VersionId must be a string')
        else if std.isEmpty(VersionId) then (error 'VersionId must be not empty')
        else VersionId,
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
