{
  new(
    MonitorArnList,
    Subscribers,
    Frequency,
    SubscriptionName,
  ): {
    local base = self,
    Properties: {
      MonitorArnList:
        if !std.isArray(MonitorArnList) then (error 'MonitorArnList must be an array')
        else MonitorArnList,
      Subscribers:
        if !std.isArray(Subscribers) then (error 'Subscribers must be an array')
        else Subscribers,
      Frequency:
        if !std.isString(Frequency) then (error 'Frequency must be a string')
        else if std.isEmpty(Frequency) then (error 'Frequency must be not empty')
        else if Frequency != 'DAILY' && Frequency != 'IMMEDIATE' && Frequency != 'WEEKLY' then (error "Frequency should be 'DAILY' or 'IMMEDIATE' or 'WEEKLY'")
        else Frequency,
      SubscriptionName:
        if !std.isString(SubscriptionName) then (error 'SubscriptionName must be a string')
        else if std.isEmpty(SubscriptionName) then (error 'SubscriptionName must be not empty')
        else if std.length(SubscriptionName) > 1024 then error ('SubscriptionName should have not more than 1024 characters')
        else SubscriptionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CE::AnomalySubscription',
  },
  setSubscriptionArn(SubscriptionArn): {
    Properties+::: {
      SubscriptionArn:
        if !std.isString(SubscriptionArn) then (error 'SubscriptionArn must be a string')
        else if std.isEmpty(SubscriptionArn) then (error 'SubscriptionArn must be not empty')
        else SubscriptionArn,
    },
  },
  setAccountId(AccountId): {
    Properties+::: {
      AccountId:
        if !std.isString(AccountId) then (error 'AccountId must be a string')
        else if std.isEmpty(AccountId) then (error 'AccountId must be not empty')
        else if std.length(AccountId) > 1024 then error ('AccountId should have not more than 1024 characters')
        else AccountId,
    },
  },
  setThreshold(Threshold): {
    Properties+::: {
      Threshold:
        if !std.isNumber(Threshold) then (error 'Threshold must be an number')
        else Threshold,
    },
  },
  setThresholdExpression(ThresholdExpression): {
    Properties+::: {
      ThresholdExpression:
        if !std.isString(ThresholdExpression) then (error 'ThresholdExpression must be a string')
        else if std.isEmpty(ThresholdExpression) then (error 'ThresholdExpression must be not empty')
        else ThresholdExpression,
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
