{
  new(
    MetricName,
  ): {
    local base = self,
    Properties: {
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else MetricName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::FleetMetric',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setQueryString(QueryString): {
    Properties+::: {
      QueryString:
        if !std.isString(QueryString) then (error 'QueryString must be a string')
        else if std.isEmpty(QueryString) then (error 'QueryString must be not empty')
        else QueryString,
    },
  },
  setPeriod(Period): {
    Properties+::: {
      Period:
        if !std.isNumber(Period) then (error 'Period must be an number')
        else Period,
    },
  },
  setAggregationField(AggregationField): {
    Properties+::: {
      AggregationField:
        if !std.isString(AggregationField) then (error 'AggregationField must be a string')
        else if std.isEmpty(AggregationField) then (error 'AggregationField must be not empty')
        else AggregationField,
    },
  },
  setQueryVersion(QueryVersion): {
    Properties+::: {
      QueryVersion:
        if !std.isString(QueryVersion) then (error 'QueryVersion must be a string')
        else if std.isEmpty(QueryVersion) then (error 'QueryVersion must be not empty')
        else QueryVersion,
    },
  },
  setIndexName(IndexName): {
    Properties+::: {
      IndexName:
        if !std.isString(IndexName) then (error 'IndexName must be a string')
        else if std.isEmpty(IndexName) then (error 'IndexName must be not empty')
        else IndexName,
    },
  },
  setUnit(Unit): {
    Properties+::: {
      Unit:
        if !std.isString(Unit) then (error 'Unit must be a string')
        else if std.isEmpty(Unit) then (error 'Unit must be not empty')
        else Unit,
    },
  },
  setAggregationType(AggregationType): {
    Properties+::: {
      AggregationType:
        if !std.isObject(AggregationType) then (error 'AggregationType must be an object')
        else if !std.objectHas(AggregationType, 'Name') then (error ' have attribute Name')
        else if !std.objectHas(AggregationType, 'Values') then (error ' have attribute Values')
        else AggregationType,
    },
  },
  setMetricArn(MetricArn): {
    Properties+::: {
      MetricArn:
        if !std.isString(MetricArn) then (error 'MetricArn must be a string')
        else if std.isEmpty(MetricArn) then (error 'MetricArn must be not empty')
        else MetricArn,
    },
  },
  setCreationDate(CreationDate): {
    Properties+::: {
      CreationDate:
        if !std.isString(CreationDate) then (error 'CreationDate must be a string')
        else if std.isEmpty(CreationDate) then (error 'CreationDate must be not empty')
        else CreationDate,
    },
  },
  setLastModifiedDate(LastModifiedDate): {
    Properties+::: {
      LastModifiedDate:
        if !std.isString(LastModifiedDate) then (error 'LastModifiedDate must be a string')
        else if std.isEmpty(LastModifiedDate) then (error 'LastModifiedDate must be not empty')
        else LastModifiedDate,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isNumber(Version) then (error 'Version must be an number')
        else Version,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
