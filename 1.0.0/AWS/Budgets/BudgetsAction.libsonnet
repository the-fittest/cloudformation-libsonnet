{
  // AWS Budgets BudgetsAction
  BudgetsAction: {
    new(
      BudgetName,
      NotificationType,
      ActionType,
      ActionThreshold,
      ExecutionRoleArn,
      Definition,
      Subscribers,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BudgetName) : 'BudgetName must be a string',
        BudgetName: BudgetName,
        assert std.isString(NotificationType) : 'NotificationType must be a string',
        NotificationType: NotificationType,
        assert std.isString(ActionType) : 'ActionType must be a string',
        ActionType: ActionType,
        assert std.isObject(ActionThreshold) : 'ActionThreshold must be an object',
        ActionThreshold: ActionThreshold,
        assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
        ExecutionRoleArn: ExecutionRoleArn,
        assert std.isObject(Definition) : 'Definition must be an object',
        Definition: Definition,
        Subscribers: (if std.isArray(Subscribers) then Subscribers else [Subscribers]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Budgets::BudgetsAction',
    },
    withActionId(ActionId): {
      assert std.isString(ActionId) : 'ActionId must be a string',
      Properties+::: {
        ActionId: ActionId,
      },
    },
    withApprovalModel(ApprovalModel): {
      assert std.isString(ApprovalModel) : 'ApprovalModel must be a string',
      Properties+::: {
        ApprovalModel: ApprovalModel,
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
  },
}
