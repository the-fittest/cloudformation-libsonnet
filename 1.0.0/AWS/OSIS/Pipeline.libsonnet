{
  new(
    MaxUnits,
    MinUnits,
    PipelineConfigurationBody,
    PipelineName,
  ): {
    local base = self,
    Properties: {
      assert std.isNumber(MaxUnits) : 'MaxUnits must be a number',
      MaxUnits: MaxUnits,
      assert std.isNumber(MinUnits) : 'MinUnits must be a number',
      MinUnits: MinUnits,
      assert std.isString(PipelineConfigurationBody) : 'PipelineConfigurationBody must be a string',
      PipelineConfigurationBody: PipelineConfigurationBody,
      assert std.isString(PipelineName) : 'PipelineName must be a string',
      PipelineName: PipelineName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OSIS::Pipeline',
  },
  withBufferOptions(BufferOptions): {
    assert std.isObject(BufferOptions) : 'BufferOptions must be a object',
    Properties+::: {
      BufferOptions: BufferOptions,
    },
  },
  withEncryptionAtRestOptions(EncryptionAtRestOptions): {
    assert std.isObject(EncryptionAtRestOptions) : 'EncryptionAtRestOptions must be a object',
    Properties+::: {
      EncryptionAtRestOptions: EncryptionAtRestOptions,
    },
  },
  withLogPublishingOptions(LogPublishingOptions): {
    assert std.isObject(LogPublishingOptions) : 'LogPublishingOptions must be a object',
    Properties+::: {
      LogPublishingOptions: LogPublishingOptions,
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
  withVpcOptions(VpcOptions): {
    assert std.isObject(VpcOptions) : 'VpcOptions must be a object',
    Properties+::: {
      VpcOptions: VpcOptions,
    },
  },
  withVpcEndpoints(VpcEndpoints): {
    Properties+::: {
      VpcEndpoints: (if std.isArray(VpcEndpoints) then VpcEndpoints else [VpcEndpoints]),
    },
  },
  withVpcEndpointsMixin(VpcEndpoints): {
    Properties+::: {
      VpcEndpoints+: (if std.isArray(VpcEndpoints) then VpcEndpoints else [VpcEndpoints]),
    },
  },
  withVpcEndpointService(VpcEndpointService): {
    assert std.isString(VpcEndpointService) : 'VpcEndpointService must be a string',
    Properties+::: {
      VpcEndpointService: VpcEndpointService,
    },
  },
  withPipelineArn(PipelineArn): {
    assert std.isString(PipelineArn) : 'PipelineArn must be a string',
    Properties+::: {
      PipelineArn: PipelineArn,
    },
  },
  withIngestEndpointUrls(IngestEndpointUrls): {
    Properties+::: {
      IngestEndpointUrls: (if std.isArray(IngestEndpointUrls) then IngestEndpointUrls else [IngestEndpointUrls]),
    },
  },
  withIngestEndpointUrlsMixin(IngestEndpointUrls): {
    Properties+::: {
      IngestEndpointUrls+: (if std.isArray(IngestEndpointUrls) then IngestEndpointUrls else [IngestEndpointUrls]),
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
