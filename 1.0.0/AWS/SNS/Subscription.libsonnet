{
  new(
    TopicArn,
    Protocol,
  ): {
    local base = self,
    Properties: {
      TopicArn:
        if !std.isString(TopicArn) then (error 'TopicArn must be a string')
        else if std.isEmpty(TopicArn) then (error 'TopicArn must be not empty')
        else TopicArn,
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else Protocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SNS::Subscription',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setReplayPolicy(ReplayPolicy): {
    Properties+::: {
      ReplayPolicy: ReplayPolicy,
    },
  },
  setRawMessageDelivery(RawMessageDelivery): {
    Properties+::: {
      RawMessageDelivery:
        if !std.isBoolean(RawMessageDelivery) then (error 'RawMessageDelivery must be a boolean') else RawMessageDelivery,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setFilterPolicy(FilterPolicy): {
    Properties+::: {
      FilterPolicy: FilterPolicy,
    },
  },
  setRedrivePolicy(RedrivePolicy): {
    Properties+::: {
      RedrivePolicy: RedrivePolicy,
    },
  },
  setDeliveryPolicy(DeliveryPolicy): {
    Properties+::: {
      DeliveryPolicy: DeliveryPolicy,
    },
  },
  setRegion(Region): {
    Properties+::: {
      Region:
        if !std.isString(Region) then (error 'Region must be a string')
        else if std.isEmpty(Region) then (error 'Region must be not empty')
        else Region,
    },
  },
  setSubscriptionRoleArn(SubscriptionRoleArn): {
    Properties+::: {
      SubscriptionRoleArn:
        if !std.isString(SubscriptionRoleArn) then (error 'SubscriptionRoleArn must be a string')
        else if std.isEmpty(SubscriptionRoleArn) then (error 'SubscriptionRoleArn must be not empty')
        else SubscriptionRoleArn,
    },
  },
  setFilterPolicyScope(FilterPolicyScope): {
    Properties+::: {
      FilterPolicyScope:
        if !std.isString(FilterPolicyScope) then (error 'FilterPolicyScope must be a string')
        else if std.isEmpty(FilterPolicyScope) then (error 'FilterPolicyScope must be not empty')
        else FilterPolicyScope,
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
