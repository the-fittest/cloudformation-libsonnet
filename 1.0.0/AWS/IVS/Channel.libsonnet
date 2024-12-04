{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IVS::Channel',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withAuthorized(Authorized): {
    assert std.isBoolean(Authorized) : 'Authorized must be a boolean',
    Properties+::: {
      Authorized: Authorized,
    },
  },
  withInsecureIngest(InsecureIngest): {
    assert std.isBoolean(InsecureIngest) : 'InsecureIngest must be a boolean',
    Properties+::: {
      InsecureIngest: InsecureIngest,
    },
  },
  withLatencyMode(LatencyMode): {
    assert std.isString(LatencyMode) : 'LatencyMode must be a string',
    Properties+::: {
      LatencyMode: LatencyMode,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    Properties+::: {
      Type: Type,
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
  withPlaybackUrl(PlaybackUrl): {
    assert std.isString(PlaybackUrl) : 'PlaybackUrl must be a string',
    Properties+::: {
      PlaybackUrl: PlaybackUrl,
    },
  },
  withIngestEndpoint(IngestEndpoint): {
    assert std.isString(IngestEndpoint) : 'IngestEndpoint must be a string',
    Properties+::: {
      IngestEndpoint: IngestEndpoint,
    },
  },
  withRecordingConfigurationArn(RecordingConfigurationArn): {
    assert std.isString(RecordingConfigurationArn) : 'RecordingConfigurationArn must be a string',
    Properties+::: {
      RecordingConfigurationArn: RecordingConfigurationArn,
    },
  },
  withPreset(Preset): {
    assert std.isString(Preset) : 'Preset must be a string',
    Properties+::: {
      Preset: Preset,
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
}
