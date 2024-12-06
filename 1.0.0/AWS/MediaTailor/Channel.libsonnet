{
  new(
    ChannelName,
    Outputs,
    PlaybackMode,
  ): {
    local base = self,
    Properties: {
      ChannelName:
        if !std.isString(ChannelName) then (error 'ChannelName must be a string')
        else if std.isEmpty(ChannelName) then (error 'ChannelName must be not empty')
        else ChannelName,
      Outputs:
        if !std.isArray(Outputs) then (error 'Outputs must be an array')
        else Outputs,
      PlaybackMode:
        if !std.isString(PlaybackMode) then (error 'PlaybackMode must be a string')
        else if std.isEmpty(PlaybackMode) then (error 'PlaybackMode must be not empty')
        else if PlaybackMode != 'LOOP' && PlaybackMode != 'LINEAR' then (error "PlaybackMode should be 'LOOP' or 'LINEAR'")
        else PlaybackMode,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaTailor::Channel',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAudiences(Audiences): {
    Properties+::: {
      Audiences:
        if !std.isArray(Audiences) then (error 'Audiences must be an array')
        else Audiences,
    },
  },
  pushAudiences(Audiences): {
    Properties+::: {
      Audiences+: Audiences,
    },
  },
  setFillerSlate(FillerSlate): {
    Properties+::: {
      FillerSlate:
        if !std.isObject(FillerSlate) then (error 'FillerSlate must be an object')
        else FillerSlate,
    },
  },
  setLogConfiguration(LogConfiguration): {
    Properties+::: {
      LogConfiguration:
        if !std.isObject(LogConfiguration) then (error 'LogConfiguration must be an object')
        else LogConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTier(Tier): {
    Properties+::: {
      Tier:
        if !std.isString(Tier) then (error 'Tier must be a string')
        else if std.isEmpty(Tier) then (error 'Tier must be not empty')
        else if Tier != 'BASIC' && Tier != 'STANDARD' then (error "Tier should be 'BASIC' or 'STANDARD'")
        else Tier,
    },
  },
  setTimeShiftConfiguration(TimeShiftConfiguration): {
    Properties+::: {
      TimeShiftConfiguration:
        if !std.isObject(TimeShiftConfiguration) then (error 'TimeShiftConfiguration must be an object')
        else if !std.objectHas(TimeShiftConfiguration, 'MaxTimeDelaySeconds') then (error ' have attribute MaxTimeDelaySeconds')
        else TimeShiftConfiguration,
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
