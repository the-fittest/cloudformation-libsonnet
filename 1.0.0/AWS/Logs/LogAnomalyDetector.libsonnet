{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::LogAnomalyDetector',
  },
  withAccountId(AccountId): {
    assert std.isString(AccountId) : 'AccountId must be a string',
    Properties+::: {
      AccountId: AccountId,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withDetectorName(DetectorName): {
    assert std.isString(DetectorName) : 'DetectorName must be a string',
    Properties+::: {
      DetectorName: DetectorName,
    },
  },
  withLogGroupArnList(LogGroupArnList): {
    Properties+::: {
      LogGroupArnList: (if std.isArray(LogGroupArnList) then LogGroupArnList else [LogGroupArnList]),
    },
  },
  withLogGroupArnListMixin(LogGroupArnList): {
    Properties+::: {
      LogGroupArnList+: (if std.isArray(LogGroupArnList) then LogGroupArnList else [LogGroupArnList]),
    },
  },
  withEvaluationFrequency(EvaluationFrequency): {
    assert std.isString(EvaluationFrequency) : 'EvaluationFrequency must be a string',
    Properties+::: {
      EvaluationFrequency: EvaluationFrequency,
    },
  },
  withFilterPattern(FilterPattern): {
    assert std.isString(FilterPattern) : 'FilterPattern must be a string',
    Properties+::: {
      FilterPattern: FilterPattern,
    },
  },
  withAnomalyDetectorStatus(AnomalyDetectorStatus): {
    assert std.isString(AnomalyDetectorStatus) : 'AnomalyDetectorStatus must be a string',
    Properties+::: {
      AnomalyDetectorStatus: AnomalyDetectorStatus,
    },
  },
  withAnomalyVisibilityTime(AnomalyVisibilityTime): {
    assert std.isNumber(AnomalyVisibilityTime) : 'AnomalyVisibilityTime must be a number',
    Properties+::: {
      AnomalyVisibilityTime: AnomalyVisibilityTime,
    },
  },
  withCreationTimeStamp(CreationTimeStamp): {
    assert std.isNumber(CreationTimeStamp) : 'CreationTimeStamp must be a number',
    Properties+::: {
      CreationTimeStamp: CreationTimeStamp,
    },
  },
  withLastModifiedTimeStamp(LastModifiedTimeStamp): {
    assert std.isNumber(LastModifiedTimeStamp) : 'LastModifiedTimeStamp must be a number',
    Properties+::: {
      LastModifiedTimeStamp: LastModifiedTimeStamp,
    },
  },
  withAnomalyDetectorArn(AnomalyDetectorArn): {
    assert std.isString(AnomalyDetectorArn) : 'AnomalyDetectorArn must be a string',
    Properties+::: {
      AnomalyDetectorArn: AnomalyDetectorArn,
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
