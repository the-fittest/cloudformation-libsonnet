{
  // AWS EntityResolution PolicyStatement
  PolicyStatement: {
    new(
      Arn,
      StatementId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Arn) : 'Arn must be a string',
        Arn: Arn,
        assert std.isString(StatementId) : 'StatementId must be a string',
        StatementId: StatementId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EntityResolution::PolicyStatement',
    },
    withEffect(Effect): {
      assert std.isString(Effect) : 'Effect must be a string',
      Properties+::: {
        Effect: Effect,
      },
    },
    withAction(Action): {
      Properties+::: {
        Action: (if std.isArray(Action) then Action else [Action]),
      },
    },
    withActionMixin(Action): {
      Properties+::: {
        Action+: (if std.isArray(Action) then Action else [Action]),
      },
    },
    withPrincipal(Principal): {
      Properties+::: {
        Principal: (if std.isArray(Principal) then Principal else [Principal]),
      },
    },
    withPrincipalMixin(Principal): {
      Properties+::: {
        Principal+: (if std.isArray(Principal) then Principal else [Principal]),
      },
    },
    withCondition(Condition): {
      assert std.isString(Condition) : 'Condition must be a string',
      Properties+::: {
        Condition: Condition,
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
