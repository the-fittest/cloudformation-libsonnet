{
  new(
    Arn,
    StatementId,
  ): {
    local base = self,
    Properties: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
      StatementId:
        if !std.isString(StatementId) then (error 'StatementId must be a string')
        else if std.isEmpty(StatementId) then (error 'StatementId must be not empty')
        else if std.length(StatementId) < 1 then error ('StatementId should have at least 1 characters')
        else if std.length(StatementId) > 64 then error ('StatementId should have not more than 64 characters')
        else StatementId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EntityResolution::PolicyStatement',
  },
  setEffect(Effect): {
    Properties+::: {
      Effect:
        if !std.isString(Effect) then (error 'Effect must be a string')
        else if std.isEmpty(Effect) then (error 'Effect must be not empty')
        else if Effect != 'Allow' && Effect != 'Deny' then (error "Effect should be 'Allow' or 'Deny'")
        else Effect,
    },
  },
  setAction(Action): {
    Properties+::: {
      Action:
        if !std.isArray(Action) then (error 'Action must be an array')
        else Action,
    },
  },
  pushAction(Action): {
    Properties+::: {
      Action+: Action,
    },
  },
  setPrincipal(Principal): {
    Properties+::: {
      Principal:
        if !std.isArray(Principal) then (error 'Principal must be an array')
        else Principal,
    },
  },
  pushPrincipal(Principal): {
    Properties+::: {
      Principal+: Principal,
    },
  },
  setCondition(Condition): {
    Properties+::: {
      Condition:
        if !std.isString(Condition) then (error 'Condition must be a string')
        else if std.isEmpty(Condition) then (error 'Condition must be not empty')
        else if std.length(Condition) < 1 then error ('Condition should have at least 1 characters')
        else if std.length(Condition) > 40960 then error ('Condition should have not more than 40960 characters')
        else Condition,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
