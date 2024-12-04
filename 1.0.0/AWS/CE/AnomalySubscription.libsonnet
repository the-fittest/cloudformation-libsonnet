{
  new(
    MonitorArnList,
    Subscribers,
    Frequency,
    SubscriptionName,
  ): {
    local base = self,
    Properties: {
      MonitorArnList: (if std.isArray(MonitorArnList) then MonitorArnList else [MonitorArnList]),
      Subscribers: (if std.isArray(Subscribers) then Subscribers else [Subscribers]),
      assert std.isString(Frequency) : 'Frequency must be a string',
      Frequency: Frequency,
      assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
      SubscriptionName: SubscriptionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CE::AnomalySubscription',
  },
  withSubscriptionArn(SubscriptionArn): {
    assert std.isString(SubscriptionArn) : 'SubscriptionArn must be a string',
    Properties+::: {
      SubscriptionArn: SubscriptionArn,
    },
  },
  withAccountId(AccountId): {
    assert std.isString(AccountId) : 'AccountId must be a string',
    Properties+::: {
      AccountId: AccountId,
    },
  },
  withThreshold(Threshold): {
    assert std.isNumber(Threshold) : 'Threshold must be a number',
    Properties+::: {
      Threshold: Threshold,
    },
  },
  withThresholdExpression(ThresholdExpression): {
    assert std.isString(ThresholdExpression) : 'ThresholdExpression must be a string',
    Properties+::: {
      ThresholdExpression: ThresholdExpression,
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
