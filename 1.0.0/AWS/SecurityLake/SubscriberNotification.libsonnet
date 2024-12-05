{
  new(
    SubscriberArn,
    NotificationConfiguration,
  ): {
    local base = self,
    Properties: {
      SubscriberArn:
        if !std.isString(SubscriberArn) then (error 'SubscriberArn must be a string')
        else if std.isEmpty(SubscriberArn) then (error 'SubscriberArn must be not empty')
        else SubscriberArn,
      NotificationConfiguration:
        if !std.isObject(NotificationConfiguration) then (error 'NotificationConfiguration must be an object')
        else NotificationConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityLake::SubscriberNotification',
  },
  setSubscriberEndpoint(SubscriberEndpoint): {
    Properties+::: {
      SubscriberEndpoint:
        if !std.isString(SubscriberEndpoint) then (error 'SubscriberEndpoint must be a string')
        else if std.isEmpty(SubscriberEndpoint) then (error 'SubscriberEndpoint must be not empty')
        else SubscriberEndpoint,
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
