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
    Type: 'AWS::MediaLive::Multiplexprogram',
  },
  setChannelId(ChannelId): {
    Properties+::: {
      ChannelId:
        if !std.isString(ChannelId) then (error 'ChannelId must be a string')
        else if std.isEmpty(ChannelId) then (error 'ChannelId must be not empty')
        else ChannelId,
    },
  },
  setMultiplexId(MultiplexId): {
    Properties+::: {
      MultiplexId:
        if !std.isString(MultiplexId) then (error 'MultiplexId must be a string')
        else if std.isEmpty(MultiplexId) then (error 'MultiplexId must be not empty')
        else MultiplexId,
    },
  },
  setMultiplexProgramSettings(MultiplexProgramSettings): {
    Properties+::: {
      MultiplexProgramSettings:
        if !std.isObject(MultiplexProgramSettings) then (error 'MultiplexProgramSettings must be an object')
        else if !std.objectHas(MultiplexProgramSettings, 'ProgramNumber') then (error ' have attribute ProgramNumber')
        else MultiplexProgramSettings,
    },
  },
  setPreferredChannelPipeline(PreferredChannelPipeline): {
    Properties+::: {
      PreferredChannelPipeline:
        if !std.isString(PreferredChannelPipeline) then (error 'PreferredChannelPipeline must be a string')
        else if std.isEmpty(PreferredChannelPipeline) then (error 'PreferredChannelPipeline must be not empty')
        else if PreferredChannelPipeline != 'CURRENTLY_ACTIVE' && PreferredChannelPipeline != 'PIPELINE_0' && PreferredChannelPipeline != 'PIPELINE_1' then (error "PreferredChannelPipeline should be 'CURRENTLY_ACTIVE' or 'PIPELINE_0' or 'PIPELINE_1'")
        else PreferredChannelPipeline,
    },
  },
  setPacketIdentifiersMap(PacketIdentifiersMap): {
    Properties+::: {
      PacketIdentifiersMap:
        if !std.isObject(PacketIdentifiersMap) then (error 'PacketIdentifiersMap must be an object')
        else PacketIdentifiersMap,
    },
  },
  setPipelineDetails(PipelineDetails): {
    Properties+::: {
      PipelineDetails:
        if !std.isArray(PipelineDetails) then (error 'PipelineDetails must be an array')
        else PipelineDetails,
    },
  },
  pushPipelineDetails(PipelineDetails): {
    Properties+::: {
      PipelineDetails+: PipelineDetails,
    },
  },
  setProgramName(ProgramName): {
    Properties+::: {
      ProgramName:
        if !std.isString(ProgramName) then (error 'ProgramName must be a string')
        else if std.isEmpty(ProgramName) then (error 'ProgramName must be not empty')
        else ProgramName,
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
