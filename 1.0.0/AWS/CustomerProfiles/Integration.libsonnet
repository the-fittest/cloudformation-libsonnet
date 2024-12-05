{
  new(
    DomainName,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 64 then error ('DomainName should have not more than 64 characters')
        else DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::Integration',
  },
  setUri(Uri): {
    Properties+::: {
      Uri:
        if !std.isString(Uri) then (error 'Uri must be a string')
        else if std.isEmpty(Uri) then (error 'Uri must be not empty')
        else if std.length(Uri) < 1 then error ('Uri should have at least 1 characters')
        else if std.length(Uri) > 255 then error ('Uri should have not more than 255 characters')
        else Uri,
    },
  },
  setFlowDefinition(FlowDefinition): {
    Properties+::: {
      FlowDefinition:
        if !std.isObject(FlowDefinition) then (error 'FlowDefinition must be an object')
        else if !std.objectHas(FlowDefinition, 'FlowName') then (error ' have attribute FlowName')
        else if !std.objectHas(FlowDefinition, 'KmsArn') then (error ' have attribute KmsArn')
        else if !std.objectHas(FlowDefinition, 'Tasks') then (error ' have attribute Tasks')
        else if !std.objectHas(FlowDefinition, 'TriggerConfig') then (error ' have attribute TriggerConfig')
        else if !std.objectHas(FlowDefinition, 'SourceFlowConfig') then (error ' have attribute SourceFlowConfig')
        else FlowDefinition,
    },
  },
  setObjectTypeName(ObjectTypeName): {
    Properties+::: {
      ObjectTypeName:
        if !std.isString(ObjectTypeName) then (error 'ObjectTypeName must be a string')
        else if std.isEmpty(ObjectTypeName) then (error 'ObjectTypeName must be not empty')
        else if std.length(ObjectTypeName) < 1 then error ('ObjectTypeName should have at least 1 characters')
        else if std.length(ObjectTypeName) > 255 then error ('ObjectTypeName should have not more than 255 characters')
        else ObjectTypeName,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setLastUpdatedAt(LastUpdatedAt): {
    Properties+::: {
      LastUpdatedAt:
        if !std.isString(LastUpdatedAt) then (error 'LastUpdatedAt must be a string')
        else if std.isEmpty(LastUpdatedAt) then (error 'LastUpdatedAt must be not empty')
        else LastUpdatedAt,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setObjectTypeNames(ObjectTypeNames): {
    Properties+::: {
      ObjectTypeNames:
        if !std.isArray(ObjectTypeNames) then (error 'ObjectTypeNames must be an array')
        else ObjectTypeNames,
    },
  },
  setObjectTypeNamesMixin(ObjectTypeNames): {
    Properties+::: {
      ObjectTypeNames+: ObjectTypeNames,
    },
  },
  setEventTriggerNames(EventTriggerNames): {
    Properties+::: {
      EventTriggerNames:
        if !std.isArray(EventTriggerNames) then (error 'EventTriggerNames must be an array')
        else if std.length(EventTriggerNames) < 1 then error ('EventTriggerNames cannot have less than 1 items')
        else if std.length(EventTriggerNames) > 1 then error ('EventTriggerNames cannot have more than 1 items')
        else EventTriggerNames,
    },
  },
  setEventTriggerNamesMixin(EventTriggerNames): {
    Properties+::: {
      EventTriggerNames+: EventTriggerNames,
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
