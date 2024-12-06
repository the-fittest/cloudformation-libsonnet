{
  new(
    Source,
  ): {
    local base = self,
    Properties: {
      Source:
        if !std.isObject(Source) then (error 'Source must be an object')
        else if !std.objectHas(Source, 'Owner') then (error ' have attribute Owner')
        else Source,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::ConfigRule',
  },
  setConfigRuleId(ConfigRuleId): {
    Properties+::: {
      ConfigRuleId:
        if !std.isString(ConfigRuleId) then (error 'ConfigRuleId must be a string')
        else if std.isEmpty(ConfigRuleId) then (error 'ConfigRuleId must be not empty')
        else ConfigRuleId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setScope(Scope): {
    Properties+::: {
      Scope:
        if !std.isObject(Scope) then (error 'Scope must be an object')
        else Scope,
    },
  },
  setConfigRuleName(ConfigRuleName): {
    Properties+::: {
      ConfigRuleName:
        if !std.isString(ConfigRuleName) then (error 'ConfigRuleName must be a string')
        else if std.isEmpty(ConfigRuleName) then (error 'ConfigRuleName must be not empty')
        else ConfigRuleName,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCompliance(Compliance): {
    Properties+::: {
      Compliance:
        if !std.isObject(Compliance) then (error 'Compliance must be an object')
        else Compliance,
    },
  },
  setMaximumExecutionFrequency(MaximumExecutionFrequency): {
    Properties+::: {
      MaximumExecutionFrequency:
        if !std.isString(MaximumExecutionFrequency) then (error 'MaximumExecutionFrequency must be a string')
        else if std.isEmpty(MaximumExecutionFrequency) then (error 'MaximumExecutionFrequency must be not empty')
        else MaximumExecutionFrequency,
    },
  },
  setInputParameters(InputParameters): {
    Properties+::: {
      InputParameters: InputParameters,
    },
  },
  setEvaluationModes(EvaluationModes): {
    Properties+::: {
      EvaluationModes:
        if !std.isArray(EvaluationModes) then (error 'EvaluationModes must be an array')
        else EvaluationModes,
    },
  },
  pushEvaluationModes(EvaluationModes): {
    Properties+::: {
      EvaluationModes+: EvaluationModes,
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
