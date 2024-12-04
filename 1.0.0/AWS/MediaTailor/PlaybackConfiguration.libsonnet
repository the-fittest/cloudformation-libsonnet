{
  // AWS MediaTailor PlaybackConfiguration
  PlaybackConfiguration: {
    new(
      Name,
      VideoContentSourceUrl,
      AdDecisionServerUrl,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(VideoContentSourceUrl) : 'VideoContentSourceUrl must be a string',
        VideoContentSourceUrl: VideoContentSourceUrl,
        assert std.isString(AdDecisionServerUrl) : 'AdDecisionServerUrl must be a string',
        AdDecisionServerUrl: AdDecisionServerUrl,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::MediaTailor::PlaybackConfiguration',
    },
    withAvailSuppression(AvailSuppression): {
      assert std.isObject(AvailSuppression) : 'AvailSuppression must be a object',
      Properties+::: {
        AvailSuppression: AvailSuppression,
      },
    },
    withBumper(Bumper): {
      assert std.isObject(Bumper) : 'Bumper must be a object',
      Properties+::: {
        Bumper: Bumper,
      },
    },
    withCdnConfiguration(CdnConfiguration): {
      assert std.isObject(CdnConfiguration) : 'CdnConfiguration must be a object',
      Properties+::: {
        CdnConfiguration: CdnConfiguration,
      },
    },
    withConfigurationAliases(ConfigurationAliases): {
      Properties+::: {
        ConfigurationAliases: ConfigurationAliases,
      },
    },
    withDashConfiguration(DashConfiguration): {
      assert std.isObject(DashConfiguration) : 'DashConfiguration must be a object',
      Properties+::: {
        DashConfiguration: DashConfiguration,
      },
    },
    withLivePreRollConfiguration(LivePreRollConfiguration): {
      assert std.isObject(LivePreRollConfiguration) : 'LivePreRollConfiguration must be a object',
      Properties+::: {
        LivePreRollConfiguration: LivePreRollConfiguration,
      },
    },
    withManifestProcessingRules(ManifestProcessingRules): {
      assert std.isObject(ManifestProcessingRules) : 'ManifestProcessingRules must be a object',
      Properties+::: {
        ManifestProcessingRules: ManifestProcessingRules,
      },
    },
    withPersonalizationThresholdSeconds(PersonalizationThresholdSeconds): {
      assert std.isNumber(PersonalizationThresholdSeconds) : 'PersonalizationThresholdSeconds must be a number',
      Properties+::: {
        PersonalizationThresholdSeconds: PersonalizationThresholdSeconds,
      },
    },
    withSessionInitializationEndpointPrefix(SessionInitializationEndpointPrefix): {
      assert std.isString(SessionInitializationEndpointPrefix) : 'SessionInitializationEndpointPrefix must be a string',
      Properties+::: {
        SessionInitializationEndpointPrefix: SessionInitializationEndpointPrefix,
      },
    },
    withHlsConfiguration(HlsConfiguration): {
      assert std.isObject(HlsConfiguration) : 'HlsConfiguration must be a object',
      Properties+::: {
        HlsConfiguration: HlsConfiguration,
      },
    },
    withPlaybackConfigurationArn(PlaybackConfigurationArn): {
      assert std.isString(PlaybackConfigurationArn) : 'PlaybackConfigurationArn must be a string',
      Properties+::: {
        PlaybackConfigurationArn: PlaybackConfigurationArn,
      },
    },
    withPlaybackEndpointPrefix(PlaybackEndpointPrefix): {
      assert std.isString(PlaybackEndpointPrefix) : 'PlaybackEndpointPrefix must be a string',
      Properties+::: {
        PlaybackEndpointPrefix: PlaybackEndpointPrefix,
      },
    },
    withSlateAdUrl(SlateAdUrl): {
      assert std.isString(SlateAdUrl) : 'SlateAdUrl must be a string',
      Properties+::: {
        SlateAdUrl: SlateAdUrl,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTranscodeProfileName(TranscodeProfileName): {
      assert std.isString(TranscodeProfileName) : 'TranscodeProfileName must be a string',
      Properties+::: {
        TranscodeProfileName: TranscodeProfileName,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
