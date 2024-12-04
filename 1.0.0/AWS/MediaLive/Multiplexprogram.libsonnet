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
    Type: 'AWS::MediaLive::Multiplexprogram',
  },
  withChannelId(ChannelId): {
    assert std.isString(ChannelId) : 'ChannelId must be a string',
    Properties+::: {
      ChannelId: ChannelId,
    },
  },
  withMultiplexId(MultiplexId): {
    assert std.isString(MultiplexId) : 'MultiplexId must be a string',
    Properties+::: {
      MultiplexId: MultiplexId,
    },
  },
  withMultiplexProgramSettings(MultiplexProgramSettings): {
    assert std.isObject(MultiplexProgramSettings) : 'MultiplexProgramSettings must be a object',
    Properties+::: {
      MultiplexProgramSettings: MultiplexProgramSettings,
    },
  },
  withPreferredChannelPipeline(PreferredChannelPipeline): {
    assert std.isString(PreferredChannelPipeline) : 'PreferredChannelPipeline must be a string',
    assert PreferredChannelPipeline == 'CURRENTLY_ACTIVE' || PreferredChannelPipeline == 'PIPELINE_0' || PreferredChannelPipeline == 'PIPELINE_1' : "PreferredChannelPipeline should be 'CURRENTLY_ACTIVE' or 'PIPELINE_0' or 'PIPELINE_1'",
    Properties+::: {
      PreferredChannelPipeline: PreferredChannelPipeline,
    },
  },
  withPacketIdentifiersMap(PacketIdentifiersMap): {
    assert std.isObject(PacketIdentifiersMap) : 'PacketIdentifiersMap must be a object',
    Properties+::: {
      PacketIdentifiersMap: PacketIdentifiersMap,
    },
  },
  withPipelineDetails(PipelineDetails): {
    Properties+::: {
      PipelineDetails: (if std.isArray(PipelineDetails) then PipelineDetails else [PipelineDetails]),
    },
  },
  withPipelineDetailsMixin(PipelineDetails): {
    Properties+::: {
      PipelineDetails+: (if std.isArray(PipelineDetails) then PipelineDetails else [PipelineDetails]),
    },
  },
  withProgramName(ProgramName): {
    assert std.isString(ProgramName) : 'ProgramName must be a string',
    Properties+::: {
      ProgramName: ProgramName,
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
