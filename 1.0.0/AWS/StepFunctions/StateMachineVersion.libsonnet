{
  new(
    StateMachineArn,
  ): {
    local base = self,
    Properties: {
      StateMachineArn:
        if !std.isString(StateMachineArn) then (error 'StateMachineArn must be a string')
        else if std.isEmpty(StateMachineArn) then (error 'StateMachineArn must be not empty')
        else if std.length(StateMachineArn) < 1 then error ('StateMachineArn should have at least 1 characters')
        else if std.length(StateMachineArn) > 2048 then error ('StateMachineArn should have not more than 2048 characters')
        else StateMachineArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::StepFunctions::StateMachineVersion',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setStateMachineRevisionId(StateMachineRevisionId): {
    Properties+::: {
      StateMachineRevisionId:
        if !std.isString(StateMachineRevisionId) then (error 'StateMachineRevisionId must be a string')
        else if std.isEmpty(StateMachineRevisionId) then (error 'StateMachineRevisionId must be not empty')
        else if std.length(StateMachineRevisionId) < 1 then error ('StateMachineRevisionId should have at least 1 characters')
        else if std.length(StateMachineRevisionId) > 2048 then error ('StateMachineRevisionId should have not more than 2048 characters')
        else StateMachineRevisionId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
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
