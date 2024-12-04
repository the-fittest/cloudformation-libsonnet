{
  // AWS ApplicationAutoScaling ScalableTarget
  ScalableTarget: {
    new(
      ResourceId,
      ServiceNamespace,
      ScalableDimension,
      MinCapacity,
      MaxCapacity,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
        assert std.isString(ServiceNamespace) : 'ServiceNamespace must be a string',
        ServiceNamespace: ServiceNamespace,
        assert std.isString(ScalableDimension) : 'ScalableDimension must be a string',
        ScalableDimension: ScalableDimension,
        assert std.isNumber(MinCapacity) : 'MinCapacity must be a number',
        MinCapacity: MinCapacity,
        assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a number',
        MaxCapacity: MaxCapacity,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ApplicationAutoScaling::ScalableTarget',
    },
    withScheduledActions(ScheduledActions): {
      Properties+::: {
        ScheduledActions: (if std.isArray(ScheduledActions) then ScheduledActions else [ScheduledActions]),
      },
    },
    withScheduledActionsMixin(ScheduledActions): {
      Properties+::: {
        ScheduledActions+: (if std.isArray(ScheduledActions) then ScheduledActions else [ScheduledActions]),
      },
    },
    withSuspendedState(SuspendedState): {
      assert std.isObject(SuspendedState) : 'SuspendedState must be a object',
      Properties+::: {
        SuspendedState: SuspendedState,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withRoleARN(RoleARN): {
      assert std.isString(RoleARN) : 'RoleARN must be a string',
      Properties+::: {
        RoleARN: RoleARN,
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
  },
}
