{
  new(
    Budget,
  ): {
    local base = self,
    Properties: {
      Budget:
        if !std.isObject(Budget) then (error 'Budget must be an object')
        else if !std.objectHas(Budget, 'TimeUnit') then (error ' have attribute TimeUnit')
        else if !std.objectHas(Budget, 'BudgetType') then (error ' have attribute BudgetType')
        else Budget,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Budgets::Budget',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setNotificationsWithSubscribers(NotificationsWithSubscribers): {
    Properties+::: {
      NotificationsWithSubscribers:
        if !std.isArray(NotificationsWithSubscribers) then (error 'NotificationsWithSubscribers must be an array')
        else NotificationsWithSubscribers,
    },
  },
  setNotificationsWithSubscribersMixin(NotificationsWithSubscribers): {
    Properties+::: {
      NotificationsWithSubscribers+: NotificationsWithSubscribers,
    },
  },
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isArray(ResourceTags) then (error 'ResourceTags must be an array')
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
