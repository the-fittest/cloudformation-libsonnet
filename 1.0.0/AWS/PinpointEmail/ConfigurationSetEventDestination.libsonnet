{
  new(
    ConfigurationSetName,
    EventDestinationName,
  ): {
    local base = self,
    Properties: {
      ConfigurationSetName:
        if !std.isString(ConfigurationSetName) then (error 'ConfigurationSetName must be a string')
        else if std.isEmpty(ConfigurationSetName) then (error 'ConfigurationSetName must be not empty')
        else ConfigurationSetName,
      EventDestinationName:
        if !std.isString(EventDestinationName) then (error 'EventDestinationName must be a string')
        else if std.isEmpty(EventDestinationName) then (error 'EventDestinationName must be not empty')
        else EventDestinationName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PinpointEmail::ConfigurationSetEventDestination',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setEventDestination(EventDestination): {
    Properties+::: {
      EventDestination:
        if !std.isObject(EventDestination) then (error 'EventDestination must be an object')
        else if !std.objectHas(EventDestination, 'MatchingEventTypes') then (error ' have attribute MatchingEventTypes')
        else EventDestination,
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
