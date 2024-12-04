{
  new(
    MetricName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(MetricName) : 'MetricName must be a string',
      MetricName: MetricName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::FleetMetric',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withQueryString(QueryString): {
    assert std.isString(QueryString) : 'QueryString must be a string',
    Properties+::: {
      QueryString: QueryString,
    },
  },
  withPeriod(Period): {
    assert std.isNumber(Period) : 'Period must be a number',
    Properties+::: {
      Period: Period,
    },
  },
  withAggregationField(AggregationField): {
    assert std.isString(AggregationField) : 'AggregationField must be a string',
    Properties+::: {
      AggregationField: AggregationField,
    },
  },
  withQueryVersion(QueryVersion): {
    assert std.isString(QueryVersion) : 'QueryVersion must be a string',
    Properties+::: {
      QueryVersion: QueryVersion,
    },
  },
  withIndexName(IndexName): {
    assert std.isString(IndexName) : 'IndexName must be a string',
    Properties+::: {
      IndexName: IndexName,
    },
  },
  withUnit(Unit): {
    assert std.isString(Unit) : 'Unit must be a string',
    Properties+::: {
      Unit: Unit,
    },
  },
  withAggregationType(AggregationType): {
    assert std.isObject(AggregationType) : 'AggregationType must be a object',
    Properties+::: {
      AggregationType: AggregationType,
    },
  },
  withMetricArn(MetricArn): {
    assert std.isString(MetricArn) : 'MetricArn must be a string',
    Properties+::: {
      MetricArn: MetricArn,
    },
  },
  withCreationDate(CreationDate): {
    assert std.isString(CreationDate) : 'CreationDate must be a string',
    Properties+::: {
      CreationDate: CreationDate,
    },
  },
  withLastModifiedDate(LastModifiedDate): {
    assert std.isString(LastModifiedDate) : 'LastModifiedDate must be a string',
    Properties+::: {
      LastModifiedDate: LastModifiedDate,
    },
  },
  withVersion(Version): {
    assert std.isNumber(Version) : 'Version must be a number',
    Properties+::: {
      Version: Version,
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
