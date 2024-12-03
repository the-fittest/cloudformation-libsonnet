local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaTailor.libsonnet',
      help='Definition of AWS::MediaTailor::Channel Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaTailor::Channel Resource
        * ChannelName 
        * Outputs &lt;p&gt;The channels output properties.&lt;/p&gt;
        * PlaybackMode 
      |||,
      args=[
        d.arg('ChannelName', 'd.T.string'),
        d.arg('Outputs', 'd.T.array'),
        d.arg('PlaybackMode', 'd.T.string'),
      ]
    ),
    new(
      ChannelName,
      Outputs,
      PlaybackMode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
        assert std.isArray(Outputs) : 'Outputs must be a array',
        Outputs: Outputs,
        assert std.isString(PlaybackMode) : 'PlaybackMode must be a string',
        PlaybackMode: PlaybackMode,
      },
      DependsOn:: [],
      Type: 'AWS::MediaTailor::Channel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAudiences': d.fn('`withAudiences` Audiences ', [d.arg('Audiences', d.T.array)]),
    withAudiences(Audiences): {
      assert std.isArray(Audiences) : 'Audiences must be a array',
      Properties+::: { Audiences: Audiences },
    },
    '#withFillerSlate': d.fn('`withFillerSlate` FillerSlate ', [d.arg('FillerSlate', d.T.object)]),
    withFillerSlate(FillerSlate): {
      assert std.isObject(FillerSlate) : 'FillerSlate must be a object',
      Properties+::: { FillerSlate: FillerSlate },
    },
    '#withLogConfiguration': d.fn('`withLogConfiguration` LogConfiguration ', [d.arg('LogConfiguration', d.T.object)]),
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: { LogConfiguration: LogConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTier': d.fn('`withTier` Tier ', [d.arg('Tier', d.T.string)]),
    withTier(Tier): {
      assert std.isString(Tier) : 'Tier must be a string',
      Properties+::: { Tier: Tier },
    },
    '#withTimeShiftConfiguration': d.fn('`withTimeShiftConfiguration` TimeShiftConfiguration ', [d.arg('TimeShiftConfiguration', d.T.object)]),
    withTimeShiftConfiguration(TimeShiftConfiguration): {
      assert std.isObject(TimeShiftConfiguration) : 'TimeShiftConfiguration must be a object',
      Properties+::: { TimeShiftConfiguration: TimeShiftConfiguration },
    },
  },
  ChannelPolicy: {
    '#': d.pkg(
      name='ChannelPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaTailor.libsonnet',
      help='Definition of AWS::MediaTailor::ChannelPolicy Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaTailor::ChannelPolicy Resource
        * ChannelName 
        * Policy &lt;p&gt;The IAM policy for the channel. IAM policies are used to control access to your channel.&lt;/p&gt;
      |||,
      args=[
        d.arg('ChannelName', 'd.T.string'),
        d.arg('Policy', ''),
      ]
    ),
    new(
      ChannelName,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
        // Type: object,string
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::MediaTailor::ChannelPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  LiveSource: {
    '#': d.pkg(
      name='LiveSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaTailor.libsonnet',
      help='Definition of AWS::MediaTailor::LiveSource Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaTailor::LiveSource Resource
        * HttpPackageConfigurations &lt;p&gt;A list of HTTP package configuration parameters for this live source.&lt;/p&gt;
        * LiveSourceName 
        * SourceLocationName 
      |||,
      args=[
        d.arg('HttpPackageConfigurations', 'd.T.array'),
        d.arg('LiveSourceName', 'd.T.string'),
        d.arg('SourceLocationName', 'd.T.string'),
      ]
    ),
    new(
      HttpPackageConfigurations,
      LiveSourceName,
      SourceLocationName,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(HttpPackageConfigurations) : 'HttpPackageConfigurations must be a array',
        HttpPackageConfigurations: HttpPackageConfigurations,
        assert std.isString(LiveSourceName) : 'LiveSourceName must be a string',
        LiveSourceName: LiveSourceName,
        assert std.isString(SourceLocationName) : 'SourceLocationName must be a string',
        SourceLocationName: SourceLocationName,
      },
      DependsOn:: [],
      Type: 'AWS::MediaTailor::LiveSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PlaybackConfiguration: {
    '#': d.pkg(
      name='PlaybackConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaTailor.libsonnet',
      help='Resource schema for AWS::MediaTailor::PlaybackConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaTailor::PlaybackConfiguration Resource
        * Name The identifier for the playback configuration.
        * VideoContentSourceUrl The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.
        * AdDecisionServerUrl The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('VideoContentSourceUrl', 'd.T.string'),
        d.arg('AdDecisionServerUrl', 'd.T.string'),
      ]
    ),
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
      Type: 'AWS::MediaTailor::PlaybackConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAvailSuppression': d.fn('`withAvailSuppression` AvailSuppression ', [d.arg('AvailSuppression', d.T.object)]),
    withAvailSuppression(AvailSuppression): {
      assert std.isObject(AvailSuppression) : 'AvailSuppression must be a object',
      Properties+::: { AvailSuppression: AvailSuppression },
    },
    '#withBumper': d.fn('`withBumper` Bumper ', [d.arg('Bumper', d.T.object)]),
    withBumper(Bumper): {
      assert std.isObject(Bumper) : 'Bumper must be a object',
      Properties+::: { Bumper: Bumper },
    },
    '#withCdnConfiguration': d.fn('`withCdnConfiguration` CdnConfiguration ', [d.arg('CdnConfiguration', d.T.object)]),
    withCdnConfiguration(CdnConfiguration): {
      assert std.isObject(CdnConfiguration) : 'CdnConfiguration must be a object',
      Properties+::: { CdnConfiguration: CdnConfiguration },
    },
    '#withConfigurationAliases': d.fn('`withConfigurationAliases` ConfigurationAliases ', [d.arg('ConfigurationAliases')]),
    withConfigurationAliases(ConfigurationAliases): {
      // Type: undefined
      Properties+::: { ConfigurationAliases: ConfigurationAliases },
    },
    '#withDashConfiguration': d.fn('`withDashConfiguration` DashConfiguration ', [d.arg('DashConfiguration', d.T.object)]),
    withDashConfiguration(DashConfiguration): {
      assert std.isObject(DashConfiguration) : 'DashConfiguration must be a object',
      Properties+::: { DashConfiguration: DashConfiguration },
    },
    '#withLivePreRollConfiguration': d.fn('`withLivePreRollConfiguration` LivePreRollConfiguration ', [d.arg('LivePreRollConfiguration', d.T.object)]),
    withLivePreRollConfiguration(LivePreRollConfiguration): {
      assert std.isObject(LivePreRollConfiguration) : 'LivePreRollConfiguration must be a object',
      Properties+::: { LivePreRollConfiguration: LivePreRollConfiguration },
    },
    '#withManifestProcessingRules': d.fn('`withManifestProcessingRules` ManifestProcessingRules ', [d.arg('ManifestProcessingRules', d.T.object)]),
    withManifestProcessingRules(ManifestProcessingRules): {
      assert std.isObject(ManifestProcessingRules) : 'ManifestProcessingRules must be a object',
      Properties+::: { ManifestProcessingRules: ManifestProcessingRules },
    },
    '#withPersonalizationThresholdSeconds': d.fn('`withPersonalizationThresholdSeconds` PersonalizationThresholdSeconds ', [d.arg('PersonalizationThresholdSeconds', d.T.integer)]),
    withPersonalizationThresholdSeconds(PersonalizationThresholdSeconds): {
      assert std.isNumber(PersonalizationThresholdSeconds) : 'PersonalizationThresholdSeconds must be a integer',
      Properties+::: { PersonalizationThresholdSeconds: PersonalizationThresholdSeconds },
    },
    '#withSessionInitializationEndpointPrefix': d.fn('`withSessionInitializationEndpointPrefix` SessionInitializationEndpointPrefix ', [d.arg('SessionInitializationEndpointPrefix', d.T.string)]),
    withSessionInitializationEndpointPrefix(SessionInitializationEndpointPrefix): {
      assert std.isString(SessionInitializationEndpointPrefix) : 'SessionInitializationEndpointPrefix must be a string',
      Properties+::: { SessionInitializationEndpointPrefix: SessionInitializationEndpointPrefix },
    },
    '#withHlsConfiguration': d.fn('`withHlsConfiguration` HlsConfiguration ', [d.arg('HlsConfiguration', d.T.object)]),
    withHlsConfiguration(HlsConfiguration): {
      assert std.isObject(HlsConfiguration) : 'HlsConfiguration must be a object',
      Properties+::: { HlsConfiguration: HlsConfiguration },
    },
    '#withPlaybackConfigurationArn': d.fn('`withPlaybackConfigurationArn` PlaybackConfigurationArn ', [d.arg('PlaybackConfigurationArn', d.T.string)]),
    withPlaybackConfigurationArn(PlaybackConfigurationArn): {
      assert std.isString(PlaybackConfigurationArn) : 'PlaybackConfigurationArn must be a string',
      Properties+::: { PlaybackConfigurationArn: PlaybackConfigurationArn },
    },
    '#withPlaybackEndpointPrefix': d.fn('`withPlaybackEndpointPrefix` PlaybackEndpointPrefix ', [d.arg('PlaybackEndpointPrefix', d.T.string)]),
    withPlaybackEndpointPrefix(PlaybackEndpointPrefix): {
      assert std.isString(PlaybackEndpointPrefix) : 'PlaybackEndpointPrefix must be a string',
      Properties+::: { PlaybackEndpointPrefix: PlaybackEndpointPrefix },
    },
    '#withSlateAdUrl': d.fn('`withSlateAdUrl` SlateAdUrl ', [d.arg('SlateAdUrl', d.T.string)]),
    withSlateAdUrl(SlateAdUrl): {
      assert std.isString(SlateAdUrl) : 'SlateAdUrl must be a string',
      Properties+::: { SlateAdUrl: SlateAdUrl },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTranscodeProfileName': d.fn('`withTranscodeProfileName` TranscodeProfileName ', [d.arg('TranscodeProfileName', d.T.string)]),
    withTranscodeProfileName(TranscodeProfileName): {
      assert std.isString(TranscodeProfileName) : 'TranscodeProfileName must be a string',
      Properties+::: { TranscodeProfileName: TranscodeProfileName },
    },
  },
  SourceLocation: {
    '#': d.pkg(
      name='SourceLocation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaTailor.libsonnet',
      help='Definition of AWS::MediaTailor::SourceLocation Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaTailor::SourceLocation Resource
        * HttpConfiguration 
        * SourceLocationName 
      |||,
      args=[
        d.arg('HttpConfiguration', 'd.T.object'),
        d.arg('SourceLocationName', 'd.T.string'),
      ]
    ),
    new(
      HttpConfiguration,
      SourceLocationName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(HttpConfiguration) : 'HttpConfiguration must be a object',
        HttpConfiguration: HttpConfiguration,
        assert std.isString(SourceLocationName) : 'SourceLocationName must be a string',
        SourceLocationName: SourceLocationName,
      },
      DependsOn:: [],
      Type: 'AWS::MediaTailor::SourceLocation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessConfiguration': d.fn('`withAccessConfiguration` AccessConfiguration ', [d.arg('AccessConfiguration', d.T.object)]),
    withAccessConfiguration(AccessConfiguration): {
      assert std.isObject(AccessConfiguration) : 'AccessConfiguration must be a object',
      Properties+::: { AccessConfiguration: AccessConfiguration },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDefaultSegmentDeliveryConfiguration': d.fn('`withDefaultSegmentDeliveryConfiguration` DefaultSegmentDeliveryConfiguration ', [d.arg('DefaultSegmentDeliveryConfiguration', d.T.object)]),
    withDefaultSegmentDeliveryConfiguration(DefaultSegmentDeliveryConfiguration): {
      assert std.isObject(DefaultSegmentDeliveryConfiguration) : 'DefaultSegmentDeliveryConfiguration must be a object',
      Properties+::: { DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration },
    },
    '#withSegmentDeliveryConfigurations': d.fn('`withSegmentDeliveryConfigurations` SegmentDeliveryConfigurations ', [d.arg('SegmentDeliveryConfigurations', d.T.array)]),
    withSegmentDeliveryConfigurations(SegmentDeliveryConfigurations): {
      assert std.isArray(SegmentDeliveryConfigurations) : 'SegmentDeliveryConfigurations must be a array',
      Properties+::: { SegmentDeliveryConfigurations: SegmentDeliveryConfigurations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VodSource: {
    '#': d.pkg(
      name='VodSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaTailor.libsonnet',
      help='Definition of AWS::MediaTailor::VodSource Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaTailor::VodSource Resource
        * HttpPackageConfigurations &lt;p&gt;A list of HTTP package configuration parameters for this VOD source.&lt;/p&gt;
        * SourceLocationName 
        * VodSourceName 
      |||,
      args=[
        d.arg('HttpPackageConfigurations', 'd.T.array'),
        d.arg('SourceLocationName', 'd.T.string'),
        d.arg('VodSourceName', 'd.T.string'),
      ]
    ),
    new(
      HttpPackageConfigurations,
      SourceLocationName,
      VodSourceName,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(HttpPackageConfigurations) : 'HttpPackageConfigurations must be a array',
        HttpPackageConfigurations: HttpPackageConfigurations,
        assert std.isString(SourceLocationName) : 'SourceLocationName must be a string',
        SourceLocationName: SourceLocationName,
        assert std.isString(VodSourceName) : 'VodSourceName must be a string',
        VodSourceName: VodSourceName,
      },
      DependsOn:: [],
      Type: 'AWS::MediaTailor::VodSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
