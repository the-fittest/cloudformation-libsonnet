{
  new(
    AnomalyDetectorConfig,
    MetricSetList,
  ): {
    local base = self,
    Properties: {
      AnomalyDetectorConfig:
        if !std.isObject(AnomalyDetectorConfig) then (error 'AnomalyDetectorConfig must be an object')
        else if !std.objectHas(AnomalyDetectorConfig, 'AnomalyDetectorFrequency') then (error ' have attribute AnomalyDetectorFrequency')
        else AnomalyDetectorConfig,
      MetricSetList:
        if !std.isArray(MetricSetList) then (error 'MetricSetList must be an array')
        else if std.length(MetricSetList) < 1 then error ('MetricSetList cannot have less than 1 items')
        else if std.length(MetricSetList) > 1 then error ('MetricSetList cannot have more than 1 items')
        else MetricSetList,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LookoutMetrics::AnomalyDetector',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
    },
  },
  setAnomalyDetectorName(AnomalyDetectorName): {
    Properties+::: {
      AnomalyDetectorName:
        if !std.isString(AnomalyDetectorName) then (error 'AnomalyDetectorName must be a string')
        else if std.isEmpty(AnomalyDetectorName) then (error 'AnomalyDetectorName must be not empty')
        else if std.length(AnomalyDetectorName) < 1 then error ('AnomalyDetectorName should have at least 1 characters')
        else if std.length(AnomalyDetectorName) > 63 then error ('AnomalyDetectorName should have not more than 63 characters')
        else AnomalyDetectorName,
    },
  },
  setAnomalyDetectorDescription(AnomalyDetectorDescription): {
    Properties+::: {
      AnomalyDetectorDescription:
        if !std.isString(AnomalyDetectorDescription) then (error 'AnomalyDetectorDescription must be a string')
        else if std.isEmpty(AnomalyDetectorDescription) then (error 'AnomalyDetectorDescription must be not empty')
        else if std.length(AnomalyDetectorDescription) > 256 then error ('AnomalyDetectorDescription should have not more than 256 characters')
        else AnomalyDetectorDescription,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 20 then error ('KmsKeyArn should have at least 20 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
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
