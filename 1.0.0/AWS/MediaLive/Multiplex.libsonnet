{
  new(
    AvailabilityZones,
    MultiplexSettings,
    Name,
  ): {
    local base = self,
    Properties: {
      AvailabilityZones:
        if !std.isArray(AvailabilityZones) then (error 'AvailabilityZones must be an array')
        else AvailabilityZones,
      MultiplexSettings:
        if !std.isObject(MultiplexSettings) then (error 'MultiplexSettings must be an object')
        else if !std.objectHas(MultiplexSettings, 'TransportStreamBitrate') then (error ' have attribute TransportStreamBitrate')
        else if !std.objectHas(MultiplexSettings, 'TransportStreamId') then (error ' have attribute TransportStreamId')
        else MultiplexSettings,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::Multiplex',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDestinations(Destinations): {
    Properties+::: {
      Destinations:
        if !std.isArray(Destinations) then (error 'Destinations must be an array')
        else Destinations,
    },
  },
  setDestinationsMixin(Destinations): {
    Properties+::: {
      Destinations+: Destinations,
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
  setPipelinesRunningCount(PipelinesRunningCount): {
    Properties+::: {
      PipelinesRunningCount:
        if !std.isNumber(PipelinesRunningCount) then (error 'PipelinesRunningCount must be an number')
        else PipelinesRunningCount,
    },
  },
  setProgramCount(ProgramCount): {
    Properties+::: {
      ProgramCount:
        if !std.isNumber(ProgramCount) then (error 'ProgramCount must be an number')
        else ProgramCount,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'CREATING' && State != 'CREATE_FAILED' && State != 'IDLE' && State != 'STARTING' && State != 'RUNNING' && State != 'RECOVERING' && State != 'STOPPING' && State != 'DELETING' && State != 'DELETED' then (error "State should be 'CREATING' or 'CREATE_FAILED' or 'IDLE' or 'STARTING' or 'RUNNING' or 'RECOVERING' or 'STOPPING' or 'DELETING' or 'DELETED'")
        else State,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
