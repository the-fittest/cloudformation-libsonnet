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
    Type: 'AWS::CloudWatch::AnomalyDetector',
  },
  withMetricCharacteristics(MetricCharacteristics): {
    assert std.isObject(MetricCharacteristics) : 'MetricCharacteristics must be a object',
    Properties+::: {
      MetricCharacteristics: MetricCharacteristics,
    },
  },
  withMetricName(MetricName): {
    assert std.isString(MetricName) : 'MetricName must be a string',
    Properties+::: {
      MetricName: MetricName,
    },
  },
  withStat(Stat): {
    assert std.isString(Stat) : 'Stat must be a string',
    Properties+::: {
      Stat: Stat,
    },
  },
  withConfiguration(Configuration): {
    assert std.isObject(Configuration) : 'Configuration must be a object',
    Properties+::: {
      Configuration: Configuration,
    },
  },
  withMetricMathAnomalyDetector(MetricMathAnomalyDetector): {
    assert std.isObject(MetricMathAnomalyDetector) : 'MetricMathAnomalyDetector must be a object',
    Properties+::: {
      MetricMathAnomalyDetector: MetricMathAnomalyDetector,
    },
  },
  withDimensions(Dimensions): {
    Properties+::: {
      Dimensions: (if std.isArray(Dimensions) then Dimensions else [Dimensions]),
    },
  },
  withDimensionsMixin(Dimensions): {
    Properties+::: {
      Dimensions+: (if std.isArray(Dimensions) then Dimensions else [Dimensions]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withNamespace(Namespace): {
    assert std.isString(Namespace) : 'Namespace must be a string',
    Properties+::: {
      Namespace: Namespace,
    },
  },
  withSingleMetricAnomalyDetector(SingleMetricAnomalyDetector): {
    assert std.isObject(SingleMetricAnomalyDetector) : 'SingleMetricAnomalyDetector must be a object',
    Properties+::: {
      SingleMetricAnomalyDetector: SingleMetricAnomalyDetector,
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
