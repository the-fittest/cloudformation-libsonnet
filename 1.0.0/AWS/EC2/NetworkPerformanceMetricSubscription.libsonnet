{
  new(
    Source,
    Destination,
    Metric,
    Statistic,
  ): {
    local base = self,
    Properties: {
      Source:
        if !std.isString(Source) then (error 'Source must be a string')
        else if std.isEmpty(Source) then (error 'Source must be not empty')
        else Source,
      Destination:
        if !std.isString(Destination) then (error 'Destination must be a string')
        else if std.isEmpty(Destination) then (error 'Destination must be not empty')
        else Destination,
      Metric:
        if !std.isString(Metric) then (error 'Metric must be a string')
        else if std.isEmpty(Metric) then (error 'Metric must be not empty')
        else Metric,
      Statistic:
        if !std.isString(Statistic) then (error 'Statistic must be a string')
        else if std.isEmpty(Statistic) then (error 'Statistic must be not empty')
        else Statistic,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkPerformanceMetricSubscription',
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
