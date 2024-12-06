{
  new(
    Name,
    VideoContentSourceUrl,
    AdDecisionServerUrl,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
      VideoContentSourceUrl:
        if !std.isString(VideoContentSourceUrl) then (error 'VideoContentSourceUrl must be a string')
        else if std.isEmpty(VideoContentSourceUrl) then (error 'VideoContentSourceUrl must be not empty')
        else VideoContentSourceUrl,
      AdDecisionServerUrl:
        if !std.isString(AdDecisionServerUrl) then (error 'AdDecisionServerUrl must be a string')
        else if std.isEmpty(AdDecisionServerUrl) then (error 'AdDecisionServerUrl must be not empty')
        else AdDecisionServerUrl,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaTailor::PlaybackConfiguration',
  },
  setAvailSuppression(AvailSuppression): {
    Properties+::: {
      AvailSuppression:
        if !std.isObject(AvailSuppression) then (error 'AvailSuppression must be an object')
        else AvailSuppression,
    },
  },
  setBumper(Bumper): {
    Properties+::: {
      Bumper:
        if !std.isObject(Bumper) then (error 'Bumper must be an object')
        else Bumper,
    },
  },
  setCdnConfiguration(CdnConfiguration): {
    Properties+::: {
      CdnConfiguration:
        if !std.isObject(CdnConfiguration) then (error 'CdnConfiguration must be an object')
        else CdnConfiguration,
    },
  },
  setConfigurationAliases(ConfigurationAliases): {
    Properties+::: {
      ConfigurationAliases: ConfigurationAliases,
    },
  },
  setDashConfiguration(DashConfiguration): {
    Properties+::: {
      DashConfiguration:
        if !std.isObject(DashConfiguration) then (error 'DashConfiguration must be an object')
        else DashConfiguration,
    },
  },
  setLivePreRollConfiguration(LivePreRollConfiguration): {
    Properties+::: {
      LivePreRollConfiguration:
        if !std.isObject(LivePreRollConfiguration) then (error 'LivePreRollConfiguration must be an object')
        else LivePreRollConfiguration,
    },
  },
  setManifestProcessingRules(ManifestProcessingRules): {
    Properties+::: {
      ManifestProcessingRules:
        if !std.isObject(ManifestProcessingRules) then (error 'ManifestProcessingRules must be an object')
        else ManifestProcessingRules,
    },
  },
  setPersonalizationThresholdSeconds(PersonalizationThresholdSeconds): {
    Properties+::: {
      PersonalizationThresholdSeconds:
        if !std.isNumber(PersonalizationThresholdSeconds) then (error 'PersonalizationThresholdSeconds must be an number')
        else PersonalizationThresholdSeconds,
    },
  },
  setSessionInitializationEndpointPrefix(SessionInitializationEndpointPrefix): {
    Properties+::: {
      SessionInitializationEndpointPrefix:
        if !std.isString(SessionInitializationEndpointPrefix) then (error 'SessionInitializationEndpointPrefix must be a string')
        else if std.isEmpty(SessionInitializationEndpointPrefix) then (error 'SessionInitializationEndpointPrefix must be not empty')
        else SessionInitializationEndpointPrefix,
    },
  },
  setHlsConfiguration(HlsConfiguration): {
    Properties+::: {
      HlsConfiguration:
        if !std.isObject(HlsConfiguration) then (error 'HlsConfiguration must be an object')
        else HlsConfiguration,
    },
  },
  setPlaybackConfigurationArn(PlaybackConfigurationArn): {
    Properties+::: {
      PlaybackConfigurationArn:
        if !std.isString(PlaybackConfigurationArn) then (error 'PlaybackConfigurationArn must be a string')
        else if std.isEmpty(PlaybackConfigurationArn) then (error 'PlaybackConfigurationArn must be not empty')
        else PlaybackConfigurationArn,
    },
  },
  setPlaybackEndpointPrefix(PlaybackEndpointPrefix): {
    Properties+::: {
      PlaybackEndpointPrefix:
        if !std.isString(PlaybackEndpointPrefix) then (error 'PlaybackEndpointPrefix must be a string')
        else if std.isEmpty(PlaybackEndpointPrefix) then (error 'PlaybackEndpointPrefix must be not empty')
        else PlaybackEndpointPrefix,
    },
  },
  setSlateAdUrl(SlateAdUrl): {
    Properties+::: {
      SlateAdUrl:
        if !std.isString(SlateAdUrl) then (error 'SlateAdUrl must be a string')
        else if std.isEmpty(SlateAdUrl) then (error 'SlateAdUrl must be not empty')
        else SlateAdUrl,
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
  setTranscodeProfileName(TranscodeProfileName): {
    Properties+::: {
      TranscodeProfileName:
        if !std.isString(TranscodeProfileName) then (error 'TranscodeProfileName must be a string')
        else if std.isEmpty(TranscodeProfileName) then (error 'TranscodeProfileName must be not empty')
        else TranscodeProfileName,
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
