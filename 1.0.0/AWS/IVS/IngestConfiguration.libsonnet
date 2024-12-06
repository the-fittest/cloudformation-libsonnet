{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IVS::IngestConfiguration',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
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
  setStageArn(StageArn): {
    Properties+::: {
      StageArn:
        if !std.isString(StageArn) then (error 'StageArn must be a string')
        else if std.isEmpty(StageArn) then (error 'StageArn must be not empty')
        else if std.length(StageArn) > 128 then error ('StageArn should have not more than 128 characters')
        else StageArn,
    },
  },
  setParticipantId(ParticipantId): {
    Properties+::: {
      ParticipantId:
        if !std.isString(ParticipantId) then (error 'ParticipantId must be a string')
        else if std.isEmpty(ParticipantId) then (error 'ParticipantId must be not empty')
        else if std.length(ParticipantId) > 64 then error ('ParticipantId should have not more than 64 characters')
        else ParticipantId,
    },
  },
  setIngestProtocol(IngestProtocol): {
    Properties+::: {
      IngestProtocol:
        if !std.isString(IngestProtocol) then (error 'IngestProtocol must be a string')
        else if std.isEmpty(IngestProtocol) then (error 'IngestProtocol must be not empty')
        else if IngestProtocol != 'RTMP' && IngestProtocol != 'RTMPS' then (error "IngestProtocol should be 'RTMP' or 'RTMPS'")
        else IngestProtocol,
    },
  },
  setInsecureIngest(InsecureIngest): {
    Properties+::: {
      InsecureIngest:
        if !std.isBoolean(InsecureIngest) then (error 'InsecureIngest must be a boolean') else InsecureIngest,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'ACTIVE' && State != 'INACTIVE' then (error "State should be 'ACTIVE' or 'INACTIVE'")
        else State,
    },
  },
  setStreamKey(StreamKey): {
    Properties+::: {
      StreamKey:
        if !std.isString(StreamKey) then (error 'StreamKey must be a string')
        else if std.isEmpty(StreamKey) then (error 'StreamKey must be not empty')
        else StreamKey,
    },
  },
  setUserId(UserId): {
    Properties+::: {
      UserId:
        if !std.isString(UserId) then (error 'UserId must be a string')
        else if std.isEmpty(UserId) then (error 'UserId must be not empty')
        else UserId,
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
