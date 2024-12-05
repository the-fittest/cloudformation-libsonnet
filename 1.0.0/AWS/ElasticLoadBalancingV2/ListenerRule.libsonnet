{
  new(
    Actions,
    Priority,
    Conditions,
  ): {
    local base = self,
    Properties: {
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else Actions,
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else Priority,
      Conditions:
        if !std.isArray(Conditions) then (error 'Conditions must be an array')
        else Conditions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancingV2::ListenerRule',
  },
  setListenerArn(ListenerArn): {
    Properties+::: {
      ListenerArn:
        if !std.isString(ListenerArn) then (error 'ListenerArn must be a string')
        else if std.isEmpty(ListenerArn) then (error 'ListenerArn must be not empty')
        else ListenerArn,
    },
  },
  setRuleArn(RuleArn): {
    Properties+::: {
      RuleArn:
        if !std.isString(RuleArn) then (error 'RuleArn must be a string')
        else if std.isEmpty(RuleArn) then (error 'RuleArn must be not empty')
        else RuleArn,
    },
  },
  setIsDefault(IsDefault): {
    Properties+::: {
      IsDefault:
        if !std.isBoolean(IsDefault) then (error 'IsDefault must be a boolean') else IsDefault,
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
