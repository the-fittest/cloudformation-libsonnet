{
  new(
    SettingsJson,
  ): {
    local base = self,
    Properties: {
      SettingsJson:
        if !std.isObject(SettingsJson) then (error 'SettingsJson must be an object')
        else SettingsJson,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConvert::JobTemplate',
  },
  setCategory(Category): {
    Properties+::: {
      Category:
        if !std.isString(Category) then (error 'Category must be a string')
        else if std.isEmpty(Category) then (error 'Category must be not empty')
        else Category,
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
  setAccelerationSettings(AccelerationSettings): {
    Properties+::: {
      AccelerationSettings:
        if !std.isObject(AccelerationSettings) then (error 'AccelerationSettings must be an object')
        else if !std.objectHas(AccelerationSettings, 'Mode') then (error ' have attribute Mode')
        else AccelerationSettings,
    },
  },
  setPriority(Priority): {
    Properties+::: {
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else Priority,
    },
  },
  setStatusUpdateInterval(StatusUpdateInterval): {
    Properties+::: {
      StatusUpdateInterval:
        if !std.isString(StatusUpdateInterval) then (error 'StatusUpdateInterval must be a string')
        else if std.isEmpty(StatusUpdateInterval) then (error 'StatusUpdateInterval must be not empty')
        else StatusUpdateInterval,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setQueue(Queue): {
    Properties+::: {
      Queue:
        if !std.isString(Queue) then (error 'Queue must be a string')
        else if std.isEmpty(Queue) then (error 'Queue must be not empty')
        else Queue,
    },
  },
  setHopDestinations(HopDestinations): {
    Properties+::: {
      HopDestinations:
        if !std.isArray(HopDestinations) then (error 'HopDestinations must be an array')
        else HopDestinations,
    },
  },
  pushHopDestinations(HopDestinations): {
    Properties+::: {
      HopDestinations+: HopDestinations,
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
