{
  new(
    Type,
    Actions,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else Actions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::Trigger',
  },
  setStartOnCreation(StartOnCreation): {
    Properties+::: {
      StartOnCreation:
        if !std.isBoolean(StartOnCreation) then (error 'StartOnCreation must be a boolean') else StartOnCreation,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setEventBatchingCondition(EventBatchingCondition): {
    Properties+::: {
      EventBatchingCondition:
        if !std.isObject(EventBatchingCondition) then (error 'EventBatchingCondition must be an object')
        else if !std.objectHas(EventBatchingCondition, 'BatchSize') then (error ' have attribute BatchSize')
        else EventBatchingCondition,
    },
  },
  setWorkflowName(WorkflowName): {
    Properties+::: {
      WorkflowName:
        if !std.isString(WorkflowName) then (error 'WorkflowName must be a string')
        else if std.isEmpty(WorkflowName) then (error 'WorkflowName must be not empty')
        else WorkflowName,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isString(Schedule) then (error 'Schedule must be a string')
        else if std.isEmpty(Schedule) then (error 'Schedule must be not empty')
        else Schedule,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setPredicate(Predicate): {
    Properties+::: {
      Predicate:
        if !std.isObject(Predicate) then (error 'Predicate must be an object')
        else Predicate,
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
