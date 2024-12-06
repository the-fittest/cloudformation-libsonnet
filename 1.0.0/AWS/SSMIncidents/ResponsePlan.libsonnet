{
  new(
    Name,
    IncidentTemplate,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 200 then error ('Name should have not more than 200 characters')
        else Name,
      IncidentTemplate:
        if !std.isObject(IncidentTemplate) then (error 'IncidentTemplate must be an object')
        else if !std.objectHas(IncidentTemplate, 'Title') then (error ' have attribute Title')
        else if !std.objectHas(IncidentTemplate, 'Impact') then (error ' have attribute Impact')
        else IncidentTemplate,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSMIncidents::ResponsePlan',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1000 then error ('Arn should have not more than 1000 characters')
        else Arn,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 200 then error ('DisplayName should have not more than 200 characters')
        else DisplayName,
    },
  },
  setChatChannel(ChatChannel): {
    Properties+::: {
      ChatChannel:
        if !std.isObject(ChatChannel) then (error 'ChatChannel must be an object')
        else ChatChannel,
    },
  },
  setEngagements(Engagements): {
    Properties+::: {
      Engagements:
        if !std.isArray(Engagements) then (error 'Engagements must be an array')
        else if std.length(Engagements) > 5 then error ('Engagements cannot have more than 5 items')
        else Engagements,
    },
  },
  pushEngagements(Engagements): {
    Properties+::: {
      Engagements+: Engagements,
    },
  },
  setActions(Actions): {
    Properties+::: {
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else if std.length(Actions) > 1 then error ('Actions cannot have more than 1 items')
        else Actions,
    },
  },
  pushActions(Actions): {
    Properties+::: {
      Actions+: Actions,
    },
  },
  setIntegrations(Integrations): {
    Properties+::: {
      Integrations:
        if !std.isArray(Integrations) then (error 'Integrations must be an array')
        else if std.length(Integrations) > 1 then error ('Integrations cannot have more than 1 items')
        else Integrations,
    },
  },
  pushIntegrations(Integrations): {
    Properties+::: {
      Integrations+: Integrations,
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
