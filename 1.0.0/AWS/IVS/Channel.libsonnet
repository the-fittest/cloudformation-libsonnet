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
    Type: 'AWS::IVS::Channel',
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
  setAuthorized(Authorized): {
    Properties+::: {
      Authorized:
        if !std.isBoolean(Authorized) then (error 'Authorized must be a boolean') else Authorized,
    },
  },
  setInsecureIngest(InsecureIngest): {
    Properties+::: {
      InsecureIngest:
        if !std.isBoolean(InsecureIngest) then (error 'InsecureIngest must be a boolean') else InsecureIngest,
    },
  },
  setLatencyMode(LatencyMode): {
    Properties+::: {
      LatencyMode:
        if !std.isString(LatencyMode) then (error 'LatencyMode must be a string')
        else if std.isEmpty(LatencyMode) then (error 'LatencyMode must be not empty')
        else if LatencyMode != 'NORMAL' && LatencyMode != 'LOW' then (error "LatencyMode should be 'NORMAL' or 'LOW'")
        else LatencyMode,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'STANDARD' && Type != 'BASIC' && Type != 'ADVANCED_SD' && Type != 'ADVANCED_HD' then (error "Type should be 'STANDARD' or 'BASIC' or 'ADVANCED_SD' or 'ADVANCED_HD'")
        else Type,
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
  setPlaybackUrl(PlaybackUrl): {
    Properties+::: {
      PlaybackUrl:
        if !std.isString(PlaybackUrl) then (error 'PlaybackUrl must be a string')
        else if std.isEmpty(PlaybackUrl) then (error 'PlaybackUrl must be not empty')
        else PlaybackUrl,
    },
  },
  setIngestEndpoint(IngestEndpoint): {
    Properties+::: {
      IngestEndpoint:
        if !std.isString(IngestEndpoint) then (error 'IngestEndpoint must be a string')
        else if std.isEmpty(IngestEndpoint) then (error 'IngestEndpoint must be not empty')
        else IngestEndpoint,
    },
  },
  setRecordingConfigurationArn(RecordingConfigurationArn): {
    Properties+::: {
      RecordingConfigurationArn:
        if !std.isString(RecordingConfigurationArn) then (error 'RecordingConfigurationArn must be a string')
        else if std.isEmpty(RecordingConfigurationArn) then (error 'RecordingConfigurationArn must be not empty')
        else if std.length(RecordingConfigurationArn) > 128 then error ('RecordingConfigurationArn should have not more than 128 characters')
        else RecordingConfigurationArn,
    },
  },
  setPreset(Preset): {
    Properties+::: {
      Preset:
        if !std.isString(Preset) then (error 'Preset must be a string')
        else if std.isEmpty(Preset) then (error 'Preset must be not empty')
        else if Preset != '' && Preset != 'HIGHER_BANDWIDTH_DELIVERY' && Preset != 'CONSTRAINED_BANDWIDTH_DELIVERY' then (error "Preset should be '' or 'HIGHER_BANDWIDTH_DELIVERY' or 'CONSTRAINED_BANDWIDTH_DELIVERY'")
        else Preset,
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
