{
  new(
    Type,
    Capacity,
    RuleGroupName,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'STATELESS' && Type != 'STATEFUL' then (error "Type should be 'STATELESS' or 'STATEFUL'")
        else Type,
      Capacity:
        if !std.isNumber(Capacity) then (error 'Capacity must be an number')
        else Capacity,
      RuleGroupName:
        if !std.isString(RuleGroupName) then (error 'RuleGroupName must be a string')
        else if std.isEmpty(RuleGroupName) then (error 'RuleGroupName must be not empty')
        else if std.length(RuleGroupName) < 1 then error ('RuleGroupName should have at least 1 characters')
        else if std.length(RuleGroupName) > 128 then error ('RuleGroupName should have not more than 128 characters')
        else RuleGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkFirewall::RuleGroup',
  },
  setRuleGroupArn(RuleGroupArn): {
    Properties+::: {
      RuleGroupArn:
        if !std.isString(RuleGroupArn) then (error 'RuleGroupArn must be a string')
        else if std.isEmpty(RuleGroupArn) then (error 'RuleGroupArn must be not empty')
        else if std.length(RuleGroupArn) < 1 then error ('RuleGroupArn should have at least 1 characters')
        else if std.length(RuleGroupArn) > 256 then error ('RuleGroupArn should have not more than 256 characters')
        else RuleGroupArn,
    },
  },
  setRuleGroupId(RuleGroupId): {
    Properties+::: {
      RuleGroupId:
        if !std.isString(RuleGroupId) then (error 'RuleGroupId must be a string')
        else if std.isEmpty(RuleGroupId) then (error 'RuleGroupId must be not empty')
        else if std.length(RuleGroupId) < 36 then error ('RuleGroupId should have at least 36 characters')
        else if std.length(RuleGroupId) > 36 then error ('RuleGroupId should have not more than 36 characters')
        else RuleGroupId,
    },
  },
  setRuleGroup(RuleGroup): {
    Properties+::: {
      RuleGroup:
        if !std.isObject(RuleGroup) then (error 'RuleGroup must be an object')
        else if !std.objectHas(RuleGroup, 'RulesSource') then (error ' have attribute RulesSource')
        else RuleGroup,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
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
