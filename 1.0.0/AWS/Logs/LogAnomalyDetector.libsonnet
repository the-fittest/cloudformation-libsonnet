{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::LogAnomalyDetector',
  },
  setAccountId(AccountId): {
    Properties+::: {
      AccountId:
        if !std.isString(AccountId) then (error 'AccountId must be a string')
        else if std.isEmpty(AccountId) then (error 'AccountId must be not empty')
        else AccountId,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else if std.length(KmsKeyId) > 256 then error ('KmsKeyId should have not more than 256 characters')
        else KmsKeyId,
    },
  },
  setDetectorName(DetectorName): {
    Properties+::: {
      DetectorName:
        if !std.isString(DetectorName) then (error 'DetectorName must be a string')
        else if std.isEmpty(DetectorName) then (error 'DetectorName must be not empty')
        else DetectorName,
    },
  },
  setLogGroupArnList(LogGroupArnList): {
    Properties+::: {
      LogGroupArnList:
        if !std.isArray(LogGroupArnList) then (error 'LogGroupArnList must be an array')
        else LogGroupArnList,
    },
  },
  setLogGroupArnListMixin(LogGroupArnList): {
    Properties+::: {
      LogGroupArnList+: LogGroupArnList,
    },
  },
  setEvaluationFrequency(EvaluationFrequency): {
    Properties+::: {
      EvaluationFrequency:
        if !std.isString(EvaluationFrequency) then (error 'EvaluationFrequency must be a string')
        else if std.isEmpty(EvaluationFrequency) then (error 'EvaluationFrequency must be not empty')
        else if EvaluationFrequency != 'FIVE_MIN' && EvaluationFrequency != 'TEN_MIN' && EvaluationFrequency != 'FIFTEEN_MIN' && EvaluationFrequency != 'THIRTY_MIN' && EvaluationFrequency != 'ONE_HOUR' then (error "EvaluationFrequency should be 'FIVE_MIN' or 'TEN_MIN' or 'FIFTEEN_MIN' or 'THIRTY_MIN' or 'ONE_HOUR'")
        else EvaluationFrequency,
    },
  },
  setFilterPattern(FilterPattern): {
    Properties+::: {
      FilterPattern:
        if !std.isString(FilterPattern) then (error 'FilterPattern must be a string')
        else if std.isEmpty(FilterPattern) then (error 'FilterPattern must be not empty')
        else FilterPattern,
    },
  },
  setAnomalyDetectorStatus(AnomalyDetectorStatus): {
    Properties+::: {
      AnomalyDetectorStatus:
        if !std.isString(AnomalyDetectorStatus) then (error 'AnomalyDetectorStatus must be a string')
        else if std.isEmpty(AnomalyDetectorStatus) then (error 'AnomalyDetectorStatus must be not empty')
        else AnomalyDetectorStatus,
    },
  },
  setAnomalyVisibilityTime(AnomalyVisibilityTime): {
    Properties+::: {
      AnomalyVisibilityTime:
        if !std.isNumber(AnomalyVisibilityTime) then (error 'AnomalyVisibilityTime must be an number')
        else AnomalyVisibilityTime,
    },
  },
  setCreationTimeStamp(CreationTimeStamp): {
    Properties+::: {
      CreationTimeStamp:
        if !std.isNumber(CreationTimeStamp) then (error 'CreationTimeStamp must be an number')
        else CreationTimeStamp,
    },
  },
  setLastModifiedTimeStamp(LastModifiedTimeStamp): {
    Properties+::: {
      LastModifiedTimeStamp:
        if !std.isNumber(LastModifiedTimeStamp) then (error 'LastModifiedTimeStamp must be an number')
        else LastModifiedTimeStamp,
    },
  },
  setAnomalyDetectorArn(AnomalyDetectorArn): {
    Properties+::: {
      AnomalyDetectorArn:
        if !std.isString(AnomalyDetectorArn) then (error 'AnomalyDetectorArn must be a string')
        else if std.isEmpty(AnomalyDetectorArn) then (error 'AnomalyDetectorArn must be not empty')
        else AnomalyDetectorArn,
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
