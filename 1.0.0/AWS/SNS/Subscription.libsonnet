{
  new(
    TopicArn,
    Protocol,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TopicArn) : 'TopicArn must be a string',
      TopicArn: TopicArn,
      assert std.isString(Protocol) : 'Protocol must be a string',
      Protocol: Protocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SNS::Subscription',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withReplayPolicy(ReplayPolicy): {
    Properties+::: {
      ReplayPolicy: ReplayPolicy,
    },
  },
  withRawMessageDelivery(RawMessageDelivery): {
    assert std.isBoolean(RawMessageDelivery) : 'RawMessageDelivery must be a boolean',
    Properties+::: {
      RawMessageDelivery: RawMessageDelivery,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withFilterPolicy(FilterPolicy): {
    Properties+::: {
      FilterPolicy: FilterPolicy,
    },
  },
  withRedrivePolicy(RedrivePolicy): {
    Properties+::: {
      RedrivePolicy: RedrivePolicy,
    },
  },
  withDeliveryPolicy(DeliveryPolicy): {
    Properties+::: {
      DeliveryPolicy: DeliveryPolicy,
    },
  },
  withRegion(Region): {
    assert std.isString(Region) : 'Region must be a string',
    Properties+::: {
      Region: Region,
    },
  },
  withSubscriptionRoleArn(SubscriptionRoleArn): {
    assert std.isString(SubscriptionRoleArn) : 'SubscriptionRoleArn must be a string',
    Properties+::: {
      SubscriptionRoleArn: SubscriptionRoleArn,
    },
  },
  withFilterPolicyScope(FilterPolicyScope): {
    assert std.isString(FilterPolicyScope) : 'FilterPolicyScope must be a string',
    Properties+::: {
      FilterPolicyScope: FilterPolicyScope,
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
