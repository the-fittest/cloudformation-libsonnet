{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::XRay::SamplingRule',
  },
  setSamplingRule(SamplingRule): {
    Properties+::: {
      SamplingRule:
        if !std.isObject(SamplingRule) then (error 'SamplingRule must be an object')
        else if !std.objectHas(SamplingRule, 'FixedRate') then (error ' have attribute FixedRate')
        else if !std.objectHas(SamplingRule, 'Host') then (error ' have attribute Host')
        else if !std.objectHas(SamplingRule, 'HTTPMethod') then (error ' have attribute HTTPMethod')
        else if !std.objectHas(SamplingRule, 'Priority') then (error ' have attribute Priority')
        else if !std.objectHas(SamplingRule, 'ReservoirSize') then (error ' have attribute ReservoirSize')
        else if !std.objectHas(SamplingRule, 'ResourceARN') then (error ' have attribute ResourceARN')
        else if !std.objectHas(SamplingRule, 'ServiceName') then (error ' have attribute ServiceName')
        else if !std.objectHas(SamplingRule, 'ServiceType') then (error ' have attribute ServiceType')
        else if !std.objectHas(SamplingRule, 'URLPath') then (error ' have attribute URLPath')
        else SamplingRule,
    },
  },
  setSamplingRuleRecord(SamplingRuleRecord): {
    Properties+::: {
      SamplingRuleRecord:
        if !std.isObject(SamplingRuleRecord) then (error 'SamplingRuleRecord must be an object')
        else SamplingRuleRecord,
    },
  },
  setSamplingRuleUpdate(SamplingRuleUpdate): {
    Properties+::: {
      SamplingRuleUpdate:
        if !std.isObject(SamplingRuleUpdate) then (error 'SamplingRuleUpdate must be an object')
        else SamplingRuleUpdate,
    },
  },
  setRuleARN(RuleARN): {
    Properties+::: {
      RuleARN:
        if !std.isString(RuleARN) then (error 'RuleARN must be a string')
        else if std.isEmpty(RuleARN) then (error 'RuleARN must be not empty')
        else RuleARN,
    },
  },
  setRuleName(RuleName): {
    Properties+::: {
      RuleName:
        if !std.isString(RuleName) then (error 'RuleName must be a string')
        else if std.isEmpty(RuleName) then (error 'RuleName must be not empty')
        else if std.length(RuleName) < 1 then error ('RuleName should have at least 1 characters')
        else if std.length(RuleName) > 32 then error ('RuleName should have not more than 32 characters')
        else RuleName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
