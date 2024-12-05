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
    Type: 'AWS::CloudWatch::AnomalyDetector',
  },
  setMetricCharacteristics(MetricCharacteristics): {
    Properties+::: {
      MetricCharacteristics:
        if !std.isObject(MetricCharacteristics) then (error 'MetricCharacteristics must be an object')
        else MetricCharacteristics,
    },
  },
  setMetricName(MetricName): {
    Properties+::: {
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else MetricName,
    },
  },
  setStat(Stat): {
    Properties+::: {
      Stat:
        if !std.isString(Stat) then (error 'Stat must be a string')
        else if std.isEmpty(Stat) then (error 'Stat must be not empty')
        else Stat,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration:
        if !std.isObject(Configuration) then (error 'Configuration must be an object')
        else Configuration,
    },
  },
  setMetricMathAnomalyDetector(MetricMathAnomalyDetector): {
    Properties+::: {
      MetricMathAnomalyDetector:
        if !std.isObject(MetricMathAnomalyDetector) then (error 'MetricMathAnomalyDetector must be an object')
        else MetricMathAnomalyDetector,
    },
  },
  setDimensions(Dimensions): {
    Properties+::: {
      Dimensions:
        if !std.isArray(Dimensions) then (error 'Dimensions must be an array')
        else Dimensions,
    },
  },
  setDimensionsMixin(Dimensions): {
    Properties+::: {
      Dimensions+: Dimensions,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setNamespace(Namespace): {
    Properties+::: {
      Namespace:
        if !std.isString(Namespace) then (error 'Namespace must be a string')
        else if std.isEmpty(Namespace) then (error 'Namespace must be not empty')
        else Namespace,
    },
  },
  setSingleMetricAnomalyDetector(SingleMetricAnomalyDetector): {
    Properties+::: {
      SingleMetricAnomalyDetector:
        if !std.isObject(SingleMetricAnomalyDetector) then (error 'SingleMetricAnomalyDetector must be an object')
        else SingleMetricAnomalyDetector,
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
