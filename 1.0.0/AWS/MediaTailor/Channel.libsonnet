{
  new(
    ChannelName,
    Outputs,
    PlaybackMode,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ChannelName) : 'ChannelName must be a string',
      ChannelName: ChannelName,
      Outputs: (if std.isArray(Outputs) then Outputs else [Outputs]),
      assert std.isString(PlaybackMode) : 'PlaybackMode must be a string',
      assert PlaybackMode == 'LOOP' || PlaybackMode == 'LINEAR' : "PlaybackMode should be 'LOOP' or 'LINEAR'",
      PlaybackMode: PlaybackMode,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaTailor::Channel',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAudiences(Audiences): {
    Properties+::: {
      Audiences: (if std.isArray(Audiences) then Audiences else [Audiences]),
    },
  },
  withAudiencesMixin(Audiences): {
    Properties+::: {
      Audiences+: (if std.isArray(Audiences) then Audiences else [Audiences]),
    },
  },
  withFillerSlate(FillerSlate): {
    assert std.isObject(FillerSlate) : 'FillerSlate must be a object',
    Properties+::: {
      FillerSlate: FillerSlate,
    },
  },
  withLogConfiguration(LogConfiguration): {
    assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
    Properties+::: {
      LogConfiguration: LogConfiguration,
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
  withTier(Tier): {
    assert std.isString(Tier) : 'Tier must be a string',
    assert Tier == 'BASIC' || Tier == 'STANDARD' : "Tier should be 'BASIC' or 'STANDARD'",
    Properties+::: {
      Tier: Tier,
    },
  },
  withTimeShiftConfiguration(TimeShiftConfiguration): {
    assert std.isObject(TimeShiftConfiguration) : 'TimeShiftConfiguration must be a object',
    Properties+::: {
      TimeShiftConfiguration: TimeShiftConfiguration,
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
