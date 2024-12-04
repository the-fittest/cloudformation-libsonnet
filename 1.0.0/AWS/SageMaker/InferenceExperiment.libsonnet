{
  new(
    Name,
    Type,
    RoleArn,
    EndpointName,
    ModelVariants,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'ShadowMode' : "Type should be 'ShadowMode'",
      Type: Type,
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      EndpointName: EndpointName,
      ModelVariants: (if std.isArray(ModelVariants) then ModelVariants else [ModelVariants]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::InferenceExperiment',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEndpointMetadata(EndpointMetadata): {
    assert std.isObject(EndpointMetadata) : 'EndpointMetadata must be a object',
    Properties+::: {
      EndpointMetadata: EndpointMetadata,
    },
  },
  withSchedule(Schedule): {
    assert std.isObject(Schedule) : 'Schedule must be a object',
    Properties+::: {
      Schedule: Schedule,
    },
  },
  withKmsKey(KmsKey): {
    assert std.isString(KmsKey) : 'KmsKey must be a string',
    Properties+::: {
      KmsKey: KmsKey,
    },
  },
  withDataStorageConfig(DataStorageConfig): {
    assert std.isObject(DataStorageConfig) : 'DataStorageConfig must be a object',
    Properties+::: {
      DataStorageConfig: DataStorageConfig,
    },
  },
  withShadowModeConfig(ShadowModeConfig): {
    assert std.isObject(ShadowModeConfig) : 'ShadowModeConfig must be a object',
    Properties+::: {
      ShadowModeConfig: ShadowModeConfig,
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
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withLastModifiedTime(LastModifiedTime): {
    assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
    Properties+::: {
      LastModifiedTime: LastModifiedTime,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'Creating' || Status == 'Created' || Status == 'Updating' || Status == 'Starting' || Status == 'Stopping' || Status == 'Running' || Status == 'Completed' || Status == 'Cancelled' : "Status should be 'Creating' or 'Created' or 'Updating' or 'Starting' or 'Stopping' or 'Running' or 'Completed' or 'Cancelled'",
    Properties+::: {
      Status: Status,
    },
  },
  withStatusReason(StatusReason): {
    assert std.isString(StatusReason) : 'StatusReason must be a string',
    Properties+::: {
      StatusReason: StatusReason,
    },
  },
  withDesiredState(DesiredState): {
    assert std.isString(DesiredState) : 'DesiredState must be a string',
    assert DesiredState == 'Running' || DesiredState == 'Completed' || DesiredState == 'Cancelled' : "DesiredState should be 'Running' or 'Completed' or 'Cancelled'",
    Properties+::: {
      DesiredState: DesiredState,
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
