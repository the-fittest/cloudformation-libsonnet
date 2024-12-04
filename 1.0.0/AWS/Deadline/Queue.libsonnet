{
  new(
    DisplayName,
    FarmId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      DisplayName: DisplayName,
      assert std.isString(FarmId) : 'FarmId must be a string',
      FarmId: FarmId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::Queue',
  },
  withAllowedStorageProfileIds(AllowedStorageProfileIds): {
    Properties+::: {
      AllowedStorageProfileIds: (if std.isArray(AllowedStorageProfileIds) then AllowedStorageProfileIds else [AllowedStorageProfileIds]),
    },
  },
  withAllowedStorageProfileIdsMixin(AllowedStorageProfileIds): {
    Properties+::: {
      AllowedStorageProfileIds+: (if std.isArray(AllowedStorageProfileIds) then AllowedStorageProfileIds else [AllowedStorageProfileIds]),
    },
  },
  withDefaultBudgetAction(DefaultBudgetAction): {
    assert std.isString(DefaultBudgetAction) : 'DefaultBudgetAction must be a string',
    assert DefaultBudgetAction == 'NONE' || DefaultBudgetAction == 'STOP_SCHEDULING_AND_COMPLETE_TASKS' || DefaultBudgetAction == 'STOP_SCHEDULING_AND_CANCEL_TASKS' : "DefaultBudgetAction should be 'NONE' or 'STOP_SCHEDULING_AND_COMPLETE_TASKS' or 'STOP_SCHEDULING_AND_CANCEL_TASKS'",
    Properties+::: {
      DefaultBudgetAction: DefaultBudgetAction,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withJobAttachmentSettings(JobAttachmentSettings): {
    assert std.isObject(JobAttachmentSettings) : 'JobAttachmentSettings must be a object',
    Properties+::: {
      JobAttachmentSettings: JobAttachmentSettings,
    },
  },
  withJobRunAsUser(JobRunAsUser): {
    assert std.isObject(JobRunAsUser) : 'JobRunAsUser must be a object',
    Properties+::: {
      JobRunAsUser: JobRunAsUser,
    },
  },
  withQueueId(QueueId): {
    assert std.isString(QueueId) : 'QueueId must be a string',
    Properties+::: {
      QueueId: QueueId,
    },
  },
  withRequiredFileSystemLocationNames(RequiredFileSystemLocationNames): {
    Properties+::: {
      RequiredFileSystemLocationNames: (if std.isArray(RequiredFileSystemLocationNames) then RequiredFileSystemLocationNames else [RequiredFileSystemLocationNames]),
    },
  },
  withRequiredFileSystemLocationNamesMixin(RequiredFileSystemLocationNames): {
    Properties+::: {
      RequiredFileSystemLocationNames+: (if std.isArray(RequiredFileSystemLocationNames) then RequiredFileSystemLocationNames else [RequiredFileSystemLocationNames]),
    },
  },
  withRoleArn(RoleArn): {
    assert std.isString(RoleArn) : 'RoleArn must be a string',
    Properties+::: {
      RoleArn: RoleArn,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
