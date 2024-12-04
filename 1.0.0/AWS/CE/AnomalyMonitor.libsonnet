{
  new(
    MonitorName,
    MonitorType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(MonitorName) : 'MonitorName must be a string',
      MonitorName: MonitorName,
      assert std.isString(MonitorType) : 'MonitorType must be a string',
      MonitorType: MonitorType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CE::AnomalyMonitor',
  },
  withMonitorArn(MonitorArn): {
    assert std.isString(MonitorArn) : 'MonitorArn must be a string',
    Properties+::: {
      MonitorArn: MonitorArn,
    },
  },
  withCreationDate(CreationDate): {
    assert std.isString(CreationDate) : 'CreationDate must be a string',
    Properties+::: {
      CreationDate: CreationDate,
    },
  },
  withLastEvaluatedDate(LastEvaluatedDate): {
    assert std.isString(LastEvaluatedDate) : 'LastEvaluatedDate must be a string',
    Properties+::: {
      LastEvaluatedDate: LastEvaluatedDate,
    },
  },
  withLastUpdatedDate(LastUpdatedDate): {
    assert std.isString(LastUpdatedDate) : 'LastUpdatedDate must be a string',
    Properties+::: {
      LastUpdatedDate: LastUpdatedDate,
    },
  },
  withMonitorDimension(MonitorDimension): {
    assert std.isString(MonitorDimension) : 'MonitorDimension must be a string',
    Properties+::: {
      MonitorDimension: MonitorDimension,
    },
  },
  withMonitorSpecification(MonitorSpecification): {
    assert std.isString(MonitorSpecification) : 'MonitorSpecification must be a string',
    Properties+::: {
      MonitorSpecification: MonitorSpecification,
    },
  },
  withDimensionalValueCount(DimensionalValueCount): {
    assert std.isNumber(DimensionalValueCount) : 'DimensionalValueCount must be a number',
    Properties+::: {
      DimensionalValueCount: DimensionalValueCount,
    },
  },
  withResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
    },
  },
  withResourceTagsMixin(ResourceTags): {
    Properties+::: {
      ResourceTags+: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
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
