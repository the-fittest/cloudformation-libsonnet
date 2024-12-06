{
  new(
    Name,
    InstanceArn,
    TriggerEventSource,
    Function,
    Actions,
    PublishStatus,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      TriggerEventSource:
        if !std.isObject(TriggerEventSource) then (error 'TriggerEventSource must be an object')
        else if !std.objectHas(TriggerEventSource, 'EventSourceName') then (error ' have attribute EventSourceName')
        else TriggerEventSource,
      Function:
        if !std.isString(Function) then (error 'Function must be a string')
        else if std.isEmpty(Function) then (error 'Function must be not empty')
        else Function,
      Actions:
        if !std.isObject(Actions) then (error 'Actions must be an object')
        else Actions,
      PublishStatus:
        if !std.isString(PublishStatus) then (error 'PublishStatus must be a string')
        else if std.isEmpty(PublishStatus) then (error 'PublishStatus must be not empty')
        else if PublishStatus != 'DRAFT' && PublishStatus != 'PUBLISHED' then (error "PublishStatus should be 'DRAFT' or 'PUBLISHED'")
        else PublishStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::Rule',
  },
  setRuleArn(RuleArn): {
    Properties+::: {
      RuleArn:
        if !std.isString(RuleArn) then (error 'RuleArn must be a string')
        else if std.isEmpty(RuleArn) then (error 'RuleArn must be not empty')
        else RuleArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
