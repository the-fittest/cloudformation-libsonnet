{
  new(
    FilterPattern,
    LogGroupName,
    MetricTransformations,
  ): {
    local base = self,
    Properties: {
      FilterPattern:
        if !std.isString(FilterPattern) then (error 'FilterPattern must be a string')
        else if std.isEmpty(FilterPattern) then (error 'FilterPattern must be not empty')
        else if std.length(FilterPattern) > 1024 then error ('FilterPattern should have not more than 1024 characters')
        else FilterPattern,
      LogGroupName:
        if !std.isString(LogGroupName) then (error 'LogGroupName must be a string')
        else if std.isEmpty(LogGroupName) then (error 'LogGroupName must be not empty')
        else if std.length(LogGroupName) < 1 then error ('LogGroupName should have at least 1 characters')
        else if std.length(LogGroupName) > 512 then error ('LogGroupName should have not more than 512 characters')
        else LogGroupName,
      MetricTransformations:
        if !std.isArray(MetricTransformations) then (error 'MetricTransformations must be an array')
        else if std.length(MetricTransformations) < 1 then error ('MetricTransformations cannot have less than 1 items')
        else if std.length(MetricTransformations) > 1 then error ('MetricTransformations cannot have more than 1 items')
        else MetricTransformations,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::MetricFilter',
  },
  setFilterName(FilterName): {
    Properties+::: {
      FilterName:
        if !std.isString(FilterName) then (error 'FilterName must be a string')
        else if std.isEmpty(FilterName) then (error 'FilterName must be not empty')
        else if std.length(FilterName) < 1 then error ('FilterName should have at least 1 characters')
        else if std.length(FilterName) > 512 then error ('FilterName should have not more than 512 characters')
        else FilterName,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
