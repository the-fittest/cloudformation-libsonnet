local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::Channel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::Channel Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IVS::Channel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAuthorized': d.fn('`withAuthorized` Authorized ', [d.arg('Authorized', d.T.boolean)]),
    withAuthorized(Authorized): {
      assert std.isBoolean(Authorized) : 'Authorized must be a boolean',
      Properties+::: { Authorized: Authorized },
    },
    '#withInsecureIngest': d.fn('`withInsecureIngest` InsecureIngest ', [d.arg('InsecureIngest', d.T.boolean)]),
    withInsecureIngest(InsecureIngest): {
      assert std.isBoolean(InsecureIngest) : 'InsecureIngest must be a boolean',
      Properties+::: { InsecureIngest: InsecureIngest },
    },
    '#withLatencyMode': d.fn('`withLatencyMode` LatencyMode ', [d.arg('LatencyMode', d.T.string)]),
    withLatencyMode(LatencyMode): {
      assert std.isString(LatencyMode) : 'LatencyMode must be a string',
      assert LatencyMode == 'NORMAL' || LatencyMode == 'LOW' : "LatencyMode must be either 'NORMAL' or 'LOW'",
      Properties+::: { LatencyMode: LatencyMode },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'STANDARD' || Type == 'BASIC' || Type == 'ADVANCED_SD' || Type == 'ADVANCED_HD' : "Type must be either 'STANDARD' or 'BASIC' or 'ADVANCED_SD' or 'ADVANCED_HD'",
      Properties+::: { Type: Type },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withPlaybackUrl': d.fn('`withPlaybackUrl` PlaybackUrl ', [d.arg('PlaybackUrl', d.T.string)]),
    withPlaybackUrl(PlaybackUrl): {
      assert std.isString(PlaybackUrl) : 'PlaybackUrl must be a string',
      Properties+::: { PlaybackUrl: PlaybackUrl },
    },
    '#withIngestEndpoint': d.fn('`withIngestEndpoint` IngestEndpoint ', [d.arg('IngestEndpoint', d.T.string)]),
    withIngestEndpoint(IngestEndpoint): {
      assert std.isString(IngestEndpoint) : 'IngestEndpoint must be a string',
      Properties+::: { IngestEndpoint: IngestEndpoint },
    },
    '#withRecordingConfigurationArn': d.fn('`withRecordingConfigurationArn` RecordingConfigurationArn ', [d.arg('RecordingConfigurationArn', d.T.string)]),
    withRecordingConfigurationArn(RecordingConfigurationArn): {
      assert std.isString(RecordingConfigurationArn) : 'RecordingConfigurationArn must be a string',
      Properties+::: { RecordingConfigurationArn: RecordingConfigurationArn },
    },
    '#withPreset': d.fn('`withPreset` Preset ', [d.arg('Preset', d.T.string)]),
    withPreset(Preset): {
      assert std.isString(Preset) : 'Preset must be a string',
      assert Preset == '' || Preset == 'HIGHER_BANDWIDTH_DELIVERY' || Preset == 'CONSTRAINED_BANDWIDTH_DELIVERY' : "Preset must be either '' or 'HIGHER_BANDWIDTH_DELIVERY' or 'CONSTRAINED_BANDWIDTH_DELIVERY'",
      Properties+::: { Preset: Preset },
    },
  },
  EncoderConfiguration: {
    '#': d.pkg(
      name='EncoderConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::EncoderConfiguration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::EncoderConfiguration Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IVS::EncoderConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withVideo': d.fn('`withVideo` Video ', [d.arg('Video', d.T.object)]),
    withVideo(Video): {
      assert std.isObject(Video) : 'Video must be a object',
      Properties+::: { Video: Video },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IngestConfiguration: {
    '#': d.pkg(
      name='IngestConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::IngestConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::IngestConfiguration Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IVS::IngestConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStageArn': d.fn('`withStageArn` StageArn ', [d.arg('StageArn', d.T.string)]),
    withStageArn(StageArn): {
      assert std.isString(StageArn) : 'StageArn must be a string',
      Properties+::: { StageArn: StageArn },
    },
    '#withParticipantId': d.fn('`withParticipantId` ParticipantId ', [d.arg('ParticipantId', d.T.string)]),
    withParticipantId(ParticipantId): {
      assert std.isString(ParticipantId) : 'ParticipantId must be a string',
      Properties+::: { ParticipantId: ParticipantId },
    },
    '#withIngestProtocol': d.fn('`withIngestProtocol` IngestProtocol ', [d.arg('IngestProtocol', d.T.string)]),
    withIngestProtocol(IngestProtocol): {
      assert std.isString(IngestProtocol) : 'IngestProtocol must be a string',
      assert IngestProtocol == 'RTMP' || IngestProtocol == 'RTMPS' : "IngestProtocol must be either 'RTMP' or 'RTMPS'",
      Properties+::: { IngestProtocol: IngestProtocol },
    },
    '#withInsecureIngest': d.fn('`withInsecureIngest` InsecureIngest ', [d.arg('InsecureIngest', d.T.boolean)]),
    withInsecureIngest(InsecureIngest): {
      assert std.isBoolean(InsecureIngest) : 'InsecureIngest must be a boolean',
      Properties+::: { InsecureIngest: InsecureIngest },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'ACTIVE' || State == 'INACTIVE' : "State must be either 'ACTIVE' or 'INACTIVE'",
      Properties+::: { State: State },
    },
    '#withStreamKey': d.fn('`withStreamKey` StreamKey ', [d.arg('StreamKey', d.T.string)]),
    withStreamKey(StreamKey): {
      assert std.isString(StreamKey) : 'StreamKey must be a string',
      Properties+::: { StreamKey: StreamKey },
    },
    '#withUserId': d.fn('`withUserId` UserId ', [d.arg('UserId', d.T.string)]),
    withUserId(UserId): {
      assert std.isString(UserId) : 'UserId must be a string',
      Properties+::: { UserId: UserId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PlaybackKeyPair: {
    '#': d.pkg(
      name='PlaybackKeyPair',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::PlaybackKeyPair',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::PlaybackKeyPair Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IVS::PlaybackKeyPair',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withPublicKeyMaterial': d.fn('`withPublicKeyMaterial` PublicKeyMaterial ', [d.arg('PublicKeyMaterial', d.T.string)]),
    withPublicKeyMaterial(PublicKeyMaterial): {
      assert std.isString(PublicKeyMaterial) : 'PublicKeyMaterial must be a string',
      Properties+::: { PublicKeyMaterial: PublicKeyMaterial },
    },
    '#withFingerprint': d.fn('`withFingerprint` Fingerprint ', [d.arg('Fingerprint', d.T.string)]),
    withFingerprint(Fingerprint): {
      assert std.isString(Fingerprint) : 'Fingerprint must be a string',
      Properties+::: { Fingerprint: Fingerprint },
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
  PlaybackRestrictionPolicy: {
    '#': d.pkg(
      name='PlaybackRestrictionPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::PlaybackRestrictionPolicy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::PlaybackRestrictionPolicy Resource
        * AllowedCountries A list of country codes that control geoblocking restriction. Allowed values are the officially assigned ISO 3166-1 alpha-2 codes. Default: All countries (an empty array).
        * AllowedOrigins A list of origin sites that control CORS restriction. Allowed values are the same as valid values of the Origin header defined at https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin
      |||,
      args=[
        d.arg('AllowedCountries', 'd.T.array'),
        d.arg('AllowedOrigins', 'd.T.array'),
      ]
    ),
    new(
      AllowedCountries,
      AllowedOrigins,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(AllowedCountries) : 'AllowedCountries must be a array',
        AllowedCountries: AllowedCountries,
        assert std.isArray(AllowedOrigins) : 'AllowedOrigins must be a array',
        AllowedOrigins: AllowedOrigins,
      },
      DependsOn:: [],
      Type: 'AWS::IVS::PlaybackRestrictionPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withEnableStrictOriginEnforcement': d.fn('`withEnableStrictOriginEnforcement` EnableStrictOriginEnforcement ', [d.arg('EnableStrictOriginEnforcement', d.T.boolean)]),
    withEnableStrictOriginEnforcement(EnableStrictOriginEnforcement): {
      assert std.isBoolean(EnableStrictOriginEnforcement) : 'EnableStrictOriginEnforcement must be a boolean',
      Properties+::: { EnableStrictOriginEnforcement: EnableStrictOriginEnforcement },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PublicKey: {
    '#': d.pkg(
      name='PublicKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::PublicKey',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::PublicKey Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IVS::PublicKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withPublicKeyMaterial': d.fn('`withPublicKeyMaterial` PublicKeyMaterial ', [d.arg('PublicKeyMaterial', d.T.string)]),
    withPublicKeyMaterial(PublicKeyMaterial): {
      assert std.isString(PublicKeyMaterial) : 'PublicKeyMaterial must be a string',
      Properties+::: { PublicKeyMaterial: PublicKeyMaterial },
    },
    '#withFingerprint': d.fn('`withFingerprint` Fingerprint ', [d.arg('Fingerprint', d.T.string)]),
    withFingerprint(Fingerprint): {
      assert std.isString(Fingerprint) : 'Fingerprint must be a string',
      Properties+::: { Fingerprint: Fingerprint },
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
  RecordingConfiguration: {
    '#': d.pkg(
      name='RecordingConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::RecordingConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::RecordingConfiguration Resource
        * DestinationConfiguration 
      |||,
      args=[
        d.arg('DestinationConfiguration', 'd.T.object'),
      ]
    ),
    new(
      DestinationConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DestinationConfiguration) : 'DestinationConfiguration must be a object',
        DestinationConfiguration: DestinationConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::IVS::RecordingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'CREATING' || State == 'CREATE_FAILED' || State == 'ACTIVE' : "State must be either 'CREATING' or 'CREATE_FAILED' or 'ACTIVE'",
      Properties+::: { State: State },
    },
    '#withRecordingReconnectWindowSeconds': d.fn('`withRecordingReconnectWindowSeconds` RecordingReconnectWindowSeconds ', [d.arg('RecordingReconnectWindowSeconds', d.T.integer)]),
    withRecordingReconnectWindowSeconds(RecordingReconnectWindowSeconds): {
      assert std.isNumber(RecordingReconnectWindowSeconds) : 'RecordingReconnectWindowSeconds must be a integer',
      Properties+::: { RecordingReconnectWindowSeconds: RecordingReconnectWindowSeconds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withThumbnailConfiguration': d.fn('`withThumbnailConfiguration` ThumbnailConfiguration ', [d.arg('ThumbnailConfiguration', d.T.object)]),
    withThumbnailConfiguration(ThumbnailConfiguration): {
      assert std.isObject(ThumbnailConfiguration) : 'ThumbnailConfiguration must be a object',
      Properties+::: { ThumbnailConfiguration: ThumbnailConfiguration },
    },
    '#withRenditionConfiguration': d.fn('`withRenditionConfiguration` RenditionConfiguration ', [d.arg('RenditionConfiguration', d.T.object)]),
    withRenditionConfiguration(RenditionConfiguration): {
      assert std.isObject(RenditionConfiguration) : 'RenditionConfiguration must be a object',
      Properties+::: { RenditionConfiguration: RenditionConfiguration },
    },
  },
  Stage: {
    '#': d.pkg(
      name='Stage',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Definition for type AWS::IVS::Stage.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::Stage Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IVS::Stage',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAutoParticipantRecordingConfiguration': d.fn('`withAutoParticipantRecordingConfiguration` AutoParticipantRecordingConfiguration ', [d.arg('AutoParticipantRecordingConfiguration', d.T.object)]),
    withAutoParticipantRecordingConfiguration(AutoParticipantRecordingConfiguration): {
      assert std.isObject(AutoParticipantRecordingConfiguration) : 'AutoParticipantRecordingConfiguration must be a object',
      Properties+::: { AutoParticipantRecordingConfiguration: AutoParticipantRecordingConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withActiveSessionId': d.fn('`withActiveSessionId` ActiveSessionId ', [d.arg('ActiveSessionId', d.T.string)]),
    withActiveSessionId(ActiveSessionId): {
      assert std.isString(ActiveSessionId) : 'ActiveSessionId must be a string',
      Properties+::: { ActiveSessionId: ActiveSessionId },
    },
  },
  StorageConfiguration: {
    '#': d.pkg(
      name='StorageConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::StorageConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::StorageConfiguration Resource
        * S3 
      |||,
      args=[
        d.arg('S3', 'd.T.object'),
      ]
    ),
    new(
      S3,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(S3) : 'S3 must be a object',
        S3: S3,
      },
      DependsOn:: [],
      Type: 'AWS::IVS::StorageConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  StreamKey: {
    '#': d.pkg(
      name='StreamKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVS.libsonnet',
      help='Resource Type definition for AWS::IVS::StreamKey',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVS::StreamKey Resource
        * ChannelArn Channel ARN for the stream.
      |||,
      args=[
        d.arg('ChannelArn', 'd.T.string'),
      ]
    ),
    new(
      ChannelArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelArn) : 'ChannelArn must be a string',
        ChannelArn: ChannelArn,
      },
      DependsOn:: [],
      Type: 'AWS::IVS::StreamKey',
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
    '#withValue': d.fn('`withValue` Value ', [d.arg('Value', d.T.string)]),
    withValue(Value): {
      assert std.isString(Value) : 'Value must be a string',
      Properties+::: { Value: Value },
    },
  },
}
