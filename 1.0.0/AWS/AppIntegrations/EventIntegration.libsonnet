{
  new(
    Name,
    EventBridgeBus,
    EventFilter,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      EventBridgeBus:
        if !std.isString(EventBridgeBus) then (error 'EventBridgeBus must be a string')
        else if std.isEmpty(EventBridgeBus) then (error 'EventBridgeBus must be not empty')
        else if std.length(EventBridgeBus) < 1 then error ('EventBridgeBus should have at least 1 characters')
        else if std.length(EventBridgeBus) > 255 then error ('EventBridgeBus should have not more than 255 characters')
        else EventBridgeBus,
      EventFilter:
        if !std.isObject(EventFilter) then (error 'EventFilter must be an object')
        else if !std.objectHas(EventFilter, 'Source') then (error ' have attribute Source')
        else EventFilter,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppIntegrations::EventIntegration',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setEventIntegrationArn(EventIntegrationArn): {
    Properties+::: {
      EventIntegrationArn:
        if !std.isString(EventIntegrationArn) then (error 'EventIntegrationArn must be a string')
        else if std.isEmpty(EventIntegrationArn) then (error 'EventIntegrationArn must be not empty')
        else if std.length(EventIntegrationArn) < 1 then error ('EventIntegrationArn should have at least 1 characters')
        else if std.length(EventIntegrationArn) > 2048 then error ('EventIntegrationArn should have not more than 2048 characters')
        else EventIntegrationArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
