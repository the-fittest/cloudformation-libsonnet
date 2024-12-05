{
  new(
    DisplayName,
    FarmId,
  ): {
    local base = self,
    Properties: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 100 then error ('DisplayName should have not more than 100 characters')
        else DisplayName,
      FarmId:
        if !std.isString(FarmId) then (error 'FarmId must be a string')
        else if std.isEmpty(FarmId) then (error 'FarmId must be not empty')
        else FarmId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::Queue',
  },
  setAllowedStorageProfileIds(AllowedStorageProfileIds): {
    Properties+::: {
      AllowedStorageProfileIds:
        if !std.isArray(AllowedStorageProfileIds) then (error 'AllowedStorageProfileIds must be an array')
        else if std.length(AllowedStorageProfileIds) > 20 then error ('AllowedStorageProfileIds cannot have more than 20 items')
        else AllowedStorageProfileIds,
    },
  },
  setAllowedStorageProfileIdsMixin(AllowedStorageProfileIds): {
    Properties+::: {
      AllowedStorageProfileIds+: AllowedStorageProfileIds,
    },
  },
  setDefaultBudgetAction(DefaultBudgetAction): {
    Properties+::: {
      DefaultBudgetAction:
        if !std.isString(DefaultBudgetAction) then (error 'DefaultBudgetAction must be a string')
        else if std.isEmpty(DefaultBudgetAction) then (error 'DefaultBudgetAction must be not empty')
        else if DefaultBudgetAction != 'NONE' && DefaultBudgetAction != 'STOP_SCHEDULING_AND_COMPLETE_TASKS' && DefaultBudgetAction != 'STOP_SCHEDULING_AND_CANCEL_TASKS' then (error "DefaultBudgetAction should be 'NONE' or 'STOP_SCHEDULING_AND_COMPLETE_TASKS' or 'STOP_SCHEDULING_AND_CANCEL_TASKS'")
        else DefaultBudgetAction,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 100 then error ('Description should have not more than 100 characters')
        else Description,
    },
  },
  setJobAttachmentSettings(JobAttachmentSettings): {
    Properties+::: {
      JobAttachmentSettings:
        if !std.isObject(JobAttachmentSettings) then (error 'JobAttachmentSettings must be an object')
        else if !std.objectHas(JobAttachmentSettings, 'RootPrefix') then (error ' have attribute RootPrefix')
        else if !std.objectHas(JobAttachmentSettings, 'S3BucketName') then (error ' have attribute S3BucketName')
        else JobAttachmentSettings,
    },
  },
  setJobRunAsUser(JobRunAsUser): {
    Properties+::: {
      JobRunAsUser:
        if !std.isObject(JobRunAsUser) then (error 'JobRunAsUser must be an object')
        else if !std.objectHas(JobRunAsUser, 'RunAs') then (error ' have attribute RunAs')
        else JobRunAsUser,
    },
  },
  setQueueId(QueueId): {
    Properties+::: {
      QueueId:
        if !std.isString(QueueId) then (error 'QueueId must be a string')
        else if std.isEmpty(QueueId) then (error 'QueueId must be not empty')
        else QueueId,
    },
  },
  setRequiredFileSystemLocationNames(RequiredFileSystemLocationNames): {
    Properties+::: {
      RequiredFileSystemLocationNames:
        if !std.isArray(RequiredFileSystemLocationNames) then (error 'RequiredFileSystemLocationNames must be an array')
        else if std.length(RequiredFileSystemLocationNames) > 20 then error ('RequiredFileSystemLocationNames cannot have more than 20 items')
        else RequiredFileSystemLocationNames,
    },
  },
  setRequiredFileSystemLocationNamesMixin(RequiredFileSystemLocationNames): {
    Properties+::: {
      RequiredFileSystemLocationNames+: RequiredFileSystemLocationNames,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
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
