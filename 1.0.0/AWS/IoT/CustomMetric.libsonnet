{
  new(
    MetricType,
  ): {
    local base = self,
    Properties: {
      MetricType:
        if !std.isString(MetricType) then (error 'MetricType must be a string')
        else if std.isEmpty(MetricType) then (error 'MetricType must be not empty')
        else if MetricType != 'string-list' && MetricType != 'ip-address-list' && MetricType != 'number-list' && MetricType != 'number' then (error "MetricType should be 'string-list' or 'ip-address-list' or 'number-list' or 'number'")
        else MetricType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::CustomMetric',
  },
  setMetricName(MetricName): {
    Properties+::: {
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else if std.length(MetricName) < 1 then error ('MetricName should have at least 1 characters')
        else if std.length(MetricName) > 128 then error ('MetricName should have not more than 128 characters')
        else MetricName,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) > 128 then error ('DisplayName should have not more than 128 characters')
        else DisplayName,
    },
  },
  setMetricArn(MetricArn): {
    Properties+::: {
      MetricArn:
        if !std.isString(MetricArn) then (error 'MetricArn must be a string')
        else if std.isEmpty(MetricArn) then (error 'MetricArn must be not empty')
        else if std.length(MetricArn) < 20 then error ('MetricArn should have at least 20 characters')
        else if std.length(MetricArn) > 2048 then error ('MetricArn should have not more than 2048 characters')
        else MetricArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
