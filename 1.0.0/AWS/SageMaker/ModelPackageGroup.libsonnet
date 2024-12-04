{
  new(
    ModelPackageGroupName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ModelPackageGroupName) : 'ModelPackageGroupName must be a string',
      ModelPackageGroupName: ModelPackageGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::ModelPackageGroup',
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
  withModelPackageGroupArn(ModelPackageGroupArn): {
    assert std.isString(ModelPackageGroupArn) : 'ModelPackageGroupArn must be a string',
    Properties+::: {
      ModelPackageGroupArn: ModelPackageGroupArn,
    },
  },
  withModelPackageGroupDescription(ModelPackageGroupDescription): {
    assert std.isString(ModelPackageGroupDescription) : 'ModelPackageGroupDescription must be a string',
    Properties+::: {
      ModelPackageGroupDescription: ModelPackageGroupDescription,
    },
  },
  withModelPackageGroupPolicy(ModelPackageGroupPolicy): {
    Properties+::: {
      ModelPackageGroupPolicy: ModelPackageGroupPolicy,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withModelPackageGroupStatus(ModelPackageGroupStatus): {
    assert std.isString(ModelPackageGroupStatus) : 'ModelPackageGroupStatus must be a string',
    assert ModelPackageGroupStatus == 'Pending' || ModelPackageGroupStatus == 'InProgress' || ModelPackageGroupStatus == 'Completed' || ModelPackageGroupStatus == 'Failed' || ModelPackageGroupStatus == 'Deleting' || ModelPackageGroupStatus == 'DeleteFailed' : "ModelPackageGroupStatus should be 'Pending' or 'InProgress' or 'Completed' or 'Failed' or 'Deleting' or 'DeleteFailed'",
    Properties+::: {
      ModelPackageGroupStatus: ModelPackageGroupStatus,
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
