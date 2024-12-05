{
  new(
    MonitorName,
    MonitorType,
  ): {
    local base = self,
    Properties: {
      MonitorName:
        if !std.isString(MonitorName) then (error 'MonitorName must be a string')
        else if std.isEmpty(MonitorName) then (error 'MonitorName must be not empty')
        else if std.length(MonitorName) > 1024 then error ('MonitorName should have not more than 1024 characters')
        else MonitorName,
      MonitorType:
        if !std.isString(MonitorType) then (error 'MonitorType must be a string')
        else if std.isEmpty(MonitorType) then (error 'MonitorType must be not empty')
        else if MonitorType != 'DIMENSIONAL' && MonitorType != 'CUSTOM' then (error "MonitorType should be 'DIMENSIONAL' or 'CUSTOM'")
        else MonitorType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CE::AnomalyMonitor',
  },
  setMonitorArn(MonitorArn): {
    Properties+::: {
      MonitorArn:
        if !std.isString(MonitorArn) then (error 'MonitorArn must be a string')
        else if std.isEmpty(MonitorArn) then (error 'MonitorArn must be not empty')
        else MonitorArn,
    },
  },
  setCreationDate(CreationDate): {
    Properties+::: {
      CreationDate:
        if !std.isString(CreationDate) then (error 'CreationDate must be a string')
        else if std.isEmpty(CreationDate) then (error 'CreationDate must be not empty')
        else if std.length(CreationDate) > 40 then error ('CreationDate should have not more than 40 characters')
        else CreationDate,
    },
  },
  setLastEvaluatedDate(LastEvaluatedDate): {
    Properties+::: {
      LastEvaluatedDate:
        if !std.isString(LastEvaluatedDate) then (error 'LastEvaluatedDate must be a string')
        else if std.isEmpty(LastEvaluatedDate) then (error 'LastEvaluatedDate must be not empty')
        else if std.length(LastEvaluatedDate) > 40 then error ('LastEvaluatedDate should have not more than 40 characters')
        else LastEvaluatedDate,
    },
  },
  setLastUpdatedDate(LastUpdatedDate): {
    Properties+::: {
      LastUpdatedDate:
        if !std.isString(LastUpdatedDate) then (error 'LastUpdatedDate must be a string')
        else if std.isEmpty(LastUpdatedDate) then (error 'LastUpdatedDate must be not empty')
        else if std.length(LastUpdatedDate) > 40 then error ('LastUpdatedDate should have not more than 40 characters')
        else LastUpdatedDate,
    },
  },
  setMonitorDimension(MonitorDimension): {
    Properties+::: {
      MonitorDimension:
        if !std.isString(MonitorDimension) then (error 'MonitorDimension must be a string')
        else if std.isEmpty(MonitorDimension) then (error 'MonitorDimension must be not empty')
        else if MonitorDimension != 'SERVICE' then (error "MonitorDimension should be 'SERVICE'")
        else MonitorDimension,
    },
  },
  setMonitorSpecification(MonitorSpecification): {
    Properties+::: {
      MonitorSpecification:
        if !std.isString(MonitorSpecification) then (error 'MonitorSpecification must be a string')
        else if std.isEmpty(MonitorSpecification) then (error 'MonitorSpecification must be not empty')
        else MonitorSpecification,
    },
  },
  setDimensionalValueCount(DimensionalValueCount): {
    Properties+::: {
      DimensionalValueCount:
        if !std.isNumber(DimensionalValueCount) then (error 'DimensionalValueCount must be an number')
        else DimensionalValueCount,
    },
  },
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isArray(ResourceTags) then (error 'ResourceTags must be an array')
        else if std.length(ResourceTags) > 200 then error ('ResourceTags cannot have more than 200 items')
        else ResourceTags,
    },
  },
  setResourceTagsMixin(ResourceTags): {
    Properties+::: {
      ResourceTags+: ResourceTags,
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
