{
  new(
    GroupName,
  ): {
    local base = self,
    Properties: {
      GroupName:
        if !std.isString(GroupName) then (error 'GroupName must be a string')
        else if std.isEmpty(GroupName) then (error 'GroupName must be not empty')
        else if std.length(GroupName) < 1 then error ('GroupName should have at least 1 characters')
        else if std.length(GroupName) > 32 then error ('GroupName should have not more than 32 characters')
        else GroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::XRay::Group',
  },
  setFilterExpression(FilterExpression): {
    Properties+::: {
      FilterExpression:
        if !std.isString(FilterExpression) then (error 'FilterExpression must be a string')
        else if std.isEmpty(FilterExpression) then (error 'FilterExpression must be not empty')
        else FilterExpression,
    },
  },
  setGroupARN(GroupARN): {
    Properties+::: {
      GroupARN:
        if !std.isString(GroupARN) then (error 'GroupARN must be a string')
        else if std.isEmpty(GroupARN) then (error 'GroupARN must be not empty')
        else if std.length(GroupARN) < 1 then error ('GroupARN should have at least 1 characters')
        else if std.length(GroupARN) > 400 then error ('GroupARN should have not more than 400 characters')
        else GroupARN,
    },
  },
  setInsightsConfiguration(InsightsConfiguration): {
    Properties+::: {
      InsightsConfiguration:
        if !std.isObject(InsightsConfiguration) then (error 'InsightsConfiguration must be an object')
        else InsightsConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
