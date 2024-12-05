{
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
      BudgetName:
        if !std.isString(BudgetName) then (error 'BudgetName must be a string')
        else if std.isEmpty(BudgetName) then (error 'BudgetName must be not empty')
        else BudgetName,
      NotificationType:
        if !std.isString(NotificationType) then (error 'NotificationType must be a string')
        else if std.isEmpty(NotificationType) then (error 'NotificationType must be not empty')
        else if NotificationType != 'ACTUAL' && NotificationType != 'FORECASTED' then (error "NotificationType should be 'ACTUAL' or 'FORECASTED'")
        else NotificationType,
      ActionType:
        if !std.isString(ActionType) then (error 'ActionType must be a string')
        else if std.isEmpty(ActionType) then (error 'ActionType must be not empty')
        else if ActionType != 'APPLY_IAM_POLICY' && ActionType != 'APPLY_SCP_POLICY' && ActionType != 'RUN_SSM_DOCUMENTS' then (error "ActionType should be 'APPLY_IAM_POLICY' or 'APPLY_SCP_POLICY' or 'RUN_SSM_DOCUMENTS'")
        else ActionType,
      ActionThreshold:
        if !std.isObject(ActionThreshold) then (error 'ActionThreshold must be an object')
        else if !std.objectHas(ActionThreshold, 'Value') then (error ' have attribute Value')
        else if !std.objectHas(ActionThreshold, 'Type') then (error ' have attribute Type')
        else ActionThreshold,
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else ExecutionRoleArn,
      Definition:
        if !std.isObject(Definition) then (error 'Definition must be an object')
        else Definition,
      Subscribers:
        if !std.isArray(Subscribers) then (error 'Subscribers must be an array')
        else if std.length(Subscribers) < 1 then error ('Subscribers cannot have less than 1 items')
        else if std.length(Subscribers) > 11 then error ('Subscribers cannot have more than 11 items')
        else Subscribers,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Budgets::BudgetsAction',
  },
  setActionId(ActionId): {
    Properties+::: {
      ActionId:
        if !std.isString(ActionId) then (error 'ActionId must be a string')
        else if std.isEmpty(ActionId) then (error 'ActionId must be not empty')
        else ActionId,
    },
  },
  setApprovalModel(ApprovalModel): {
    Properties+::: {
      ApprovalModel:
        if !std.isString(ApprovalModel) then (error 'ApprovalModel must be a string')
        else if std.isEmpty(ApprovalModel) then (error 'ApprovalModel must be not empty')
        else if ApprovalModel != 'AUTOMATIC' && ApprovalModel != 'MANUAL' then (error "ApprovalModel should be 'AUTOMATIC' or 'MANUAL'")
        else ApprovalModel,
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
