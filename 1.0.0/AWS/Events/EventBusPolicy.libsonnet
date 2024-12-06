{
  new(
    StatementId,
  ): {
    local base = self,
    Properties: {
      StatementId:
        if !std.isString(StatementId) then (error 'StatementId must be a string')
        else if std.isEmpty(StatementId) then (error 'StatementId must be not empty')
        else StatementId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Events::EventBusPolicy',
  },
  setEventBusName(EventBusName): {
    Properties+::: {
      EventBusName:
        if !std.isString(EventBusName) then (error 'EventBusName must be a string')
        else if std.isEmpty(EventBusName) then (error 'EventBusName must be not empty')
        else EventBusName,
    },
  },
  setCondition(Condition): {
    Properties+::: {
      Condition:
        if !std.isObject(Condition) then (error 'Condition must be an object')
        else Condition,
    },
  },
  setAction(Action): {
    Properties+::: {
      Action:
        if !std.isString(Action) then (error 'Action must be a string')
        else if std.isEmpty(Action) then (error 'Action must be not empty')
        else Action,
    },
  },
  setStatement(Statement): {
    Properties+::: {
      Statement:
        if !std.isObject(Statement) then (error 'Statement must be an object')
        else Statement,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setPrincipal(Principal): {
    Properties+::: {
      Principal:
        if !std.isString(Principal) then (error 'Principal must be a string')
        else if std.isEmpty(Principal) then (error 'Principal must be not empty')
        else Principal,
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
