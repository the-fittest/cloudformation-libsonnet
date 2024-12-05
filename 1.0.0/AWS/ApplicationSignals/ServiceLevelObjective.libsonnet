{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationSignals::ServiceLevelObjective',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isNumber(CreatedTime) then (error 'CreatedTime must be an number')
        else if CreatedTime < 946684800 then error ('CreatedTime should be at least 946684800')
        else CreatedTime,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isNumber(LastUpdatedTime) then (error 'LastUpdatedTime must be an number')
        else if LastUpdatedTime < 946684800 then error ('LastUpdatedTime should be at least 946684800')
        else LastUpdatedTime,
    },
  },
  setSli(Sli): {
    Properties+::: {
      Sli:
        if !std.isObject(Sli) then (error 'Sli must be an object')
        else if !std.objectHas(Sli, 'SliMetric') then (error ' have attribute SliMetric')
        else if !std.objectHas(Sli, 'MetricThreshold') then (error ' have attribute MetricThreshold')
        else if !std.objectHas(Sli, 'ComparisonOperator') then (error ' have attribute ComparisonOperator')
        else Sli,
    },
  },
  setRequestBasedSli(RequestBasedSli): {
    Properties+::: {
      RequestBasedSli:
        if !std.isObject(RequestBasedSli) then (error 'RequestBasedSli must be an object')
        else if !std.objectHas(RequestBasedSli, 'RequestBasedSliMetric') then (error ' have attribute RequestBasedSliMetric')
        else RequestBasedSli,
    },
  },
  setEvaluationType(EvaluationType): {
    Properties+::: {
      EvaluationType:
        if !std.isString(EvaluationType) then (error 'EvaluationType must be a string')
        else if std.isEmpty(EvaluationType) then (error 'EvaluationType must be not empty')
        else if EvaluationType != 'PeriodBased' && EvaluationType != 'RequestBased' then (error "EvaluationType should be 'PeriodBased' or 'RequestBased'")
        else EvaluationType,
    },
  },
  setGoal(Goal): {
    Properties+::: {
      Goal:
        if !std.isObject(Goal) then (error 'Goal must be an object')
        else Goal,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setBurnRateConfigurations(BurnRateConfigurations): {
    Properties+::: {
      BurnRateConfigurations:
        if !std.isArray(BurnRateConfigurations) then (error 'BurnRateConfigurations must be an array')
        else if std.length(BurnRateConfigurations) > 10 then error ('BurnRateConfigurations cannot have more than 10 items')
        else BurnRateConfigurations,
    },
  },
  setBurnRateConfigurationsMixin(BurnRateConfigurations): {
    Properties+::: {
      BurnRateConfigurations+: BurnRateConfigurations,
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
