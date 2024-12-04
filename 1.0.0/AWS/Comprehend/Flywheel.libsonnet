{
  new(
    FlywheelName,
    DataAccessRoleArn,
    DataLakeS3Uri,
  ): {
    local base = self,
    Properties: {
      assert std.isString(FlywheelName) : 'FlywheelName must be a string',
      FlywheelName: FlywheelName,
      assert std.isString(DataAccessRoleArn) : 'DataAccessRoleArn must be a string',
      DataAccessRoleArn: DataAccessRoleArn,
      assert std.isString(DataLakeS3Uri) : 'DataLakeS3Uri must be a string',
      DataLakeS3Uri: DataLakeS3Uri,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Comprehend::Flywheel',
  },
  withActiveModelArn(ActiveModelArn): {
    assert std.isString(ActiveModelArn) : 'ActiveModelArn must be a string',
    Properties+::: {
      ActiveModelArn: ActiveModelArn,
    },
  },
  withDataSecurityConfig(DataSecurityConfig): {
    assert std.isObject(DataSecurityConfig) : 'DataSecurityConfig must be a object',
    Properties+::: {
      DataSecurityConfig: DataSecurityConfig,
    },
  },
  withModelType(ModelType): {
    assert std.isString(ModelType) : 'ModelType must be a string',
    Properties+::: {
      ModelType: ModelType,
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
  withTaskConfig(TaskConfig): {
    assert std.isObject(TaskConfig) : 'TaskConfig must be a object',
    Properties+::: {
      TaskConfig: TaskConfig,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
