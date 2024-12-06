{
  new(
    DestinationConfiguration,
  ): {
    local base = self,
    Properties: {
      DestinationConfiguration:
        if !std.isObject(DestinationConfiguration) then (error 'DestinationConfiguration must be an object')
        else DestinationConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IVS::RecordingConfiguration',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 128 then error ('Arn should have not more than 128 characters')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'CREATING' && State != 'CREATE_FAILED' && State != 'ACTIVE' then (error "State should be 'CREATING' or 'CREATE_FAILED' or 'ACTIVE'")
        else State,
    },
  },
  setRecordingReconnectWindowSeconds(RecordingReconnectWindowSeconds): {
    Properties+::: {
      RecordingReconnectWindowSeconds:
        if !std.isNumber(RecordingReconnectWindowSeconds) then (error 'RecordingReconnectWindowSeconds must be an number')
        else if RecordingReconnectWindowSeconds > 300 then error ('RecordingReconnectWindowSeconds should be not more than 300')
        else RecordingReconnectWindowSeconds,
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
  setThumbnailConfiguration(ThumbnailConfiguration): {
    Properties+::: {
      ThumbnailConfiguration:
        if !std.isObject(ThumbnailConfiguration) then (error 'ThumbnailConfiguration must be an object')
        else ThumbnailConfiguration,
    },
  },
  setRenditionConfiguration(RenditionConfiguration): {
    Properties+::: {
      RenditionConfiguration:
        if !std.isObject(RenditionConfiguration) then (error 'RenditionConfiguration must be an object')
        else RenditionConfiguration,
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
