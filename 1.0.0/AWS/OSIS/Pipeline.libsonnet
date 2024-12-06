{
  new(
    MaxUnits,
    MinUnits,
    PipelineConfigurationBody,
    PipelineName,
  ): {
    local base = self,
    Properties: {
      MaxUnits:
        if !std.isNumber(MaxUnits) then (error 'MaxUnits must be an number')
        else if MaxUnits < 1 then error ('MaxUnits should be at least 1')
        else if MaxUnits > 384 then error ('MaxUnits should be not more than 384')
        else MaxUnits,
      MinUnits:
        if !std.isNumber(MinUnits) then (error 'MinUnits must be an number')
        else if MinUnits < 1 then error ('MinUnits should be at least 1')
        else if MinUnits > 384 then error ('MinUnits should be not more than 384')
        else MinUnits,
      PipelineConfigurationBody:
        if !std.isString(PipelineConfigurationBody) then (error 'PipelineConfigurationBody must be a string')
        else if std.isEmpty(PipelineConfigurationBody) then (error 'PipelineConfigurationBody must be not empty')
        else if std.length(PipelineConfigurationBody) < 1 then error ('PipelineConfigurationBody should have at least 1 characters')
        else if std.length(PipelineConfigurationBody) > 24000 then error ('PipelineConfigurationBody should have not more than 24000 characters')
        else PipelineConfigurationBody,
      PipelineName:
        if !std.isString(PipelineName) then (error 'PipelineName must be a string')
        else if std.isEmpty(PipelineName) then (error 'PipelineName must be not empty')
        else if std.length(PipelineName) < 3 then error ('PipelineName should have at least 3 characters')
        else if std.length(PipelineName) > 28 then error ('PipelineName should have not more than 28 characters')
        else PipelineName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OSIS::Pipeline',
  },
  setBufferOptions(BufferOptions): {
    Properties+::: {
      BufferOptions:
        if !std.isObject(BufferOptions) then (error 'BufferOptions must be an object')
        else if !std.objectHas(BufferOptions, 'PersistentBufferEnabled') then (error ' have attribute PersistentBufferEnabled')
        else BufferOptions,
    },
  },
  setEncryptionAtRestOptions(EncryptionAtRestOptions): {
    Properties+::: {
      EncryptionAtRestOptions:
        if !std.isObject(EncryptionAtRestOptions) then (error 'EncryptionAtRestOptions must be an object')
        else if !std.objectHas(EncryptionAtRestOptions, 'KmsKeyArn') then (error ' have attribute KmsKeyArn')
        else EncryptionAtRestOptions,
    },
  },
  setLogPublishingOptions(LogPublishingOptions): {
    Properties+::: {
      LogPublishingOptions:
        if !std.isObject(LogPublishingOptions) then (error 'LogPublishingOptions must be an object')
        else LogPublishingOptions,
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
  setVpcOptions(VpcOptions): {
    Properties+::: {
      VpcOptions:
        if !std.isObject(VpcOptions) then (error 'VpcOptions must be an object')
        else if !std.objectHas(VpcOptions, 'SubnetIds') then (error ' have attribute SubnetIds')
        else VpcOptions,
    },
  },
  setVpcEndpoints(VpcEndpoints): {
    Properties+::: {
      VpcEndpoints:
        if !std.isArray(VpcEndpoints) then (error 'VpcEndpoints must be an array')
        else VpcEndpoints,
    },
  },
  pushVpcEndpoints(VpcEndpoints): {
    Properties+::: {
      VpcEndpoints+: VpcEndpoints,
    },
  },
  setVpcEndpointService(VpcEndpointService): {
    Properties+::: {
      VpcEndpointService:
        if !std.isString(VpcEndpointService) then (error 'VpcEndpointService must be a string')
        else if std.isEmpty(VpcEndpointService) then (error 'VpcEndpointService must be not empty')
        else if std.length(VpcEndpointService) < 1 then error ('VpcEndpointService should have at least 1 characters')
        else if std.length(VpcEndpointService) > 128 then error ('VpcEndpointService should have not more than 128 characters')
        else VpcEndpointService,
    },
  },
  setPipelineArn(PipelineArn): {
    Properties+::: {
      PipelineArn:
        if !std.isString(PipelineArn) then (error 'PipelineArn must be a string')
        else if std.isEmpty(PipelineArn) then (error 'PipelineArn must be not empty')
        else if std.length(PipelineArn) < 46 then error ('PipelineArn should have at least 46 characters')
        else if std.length(PipelineArn) > 76 then error ('PipelineArn should have not more than 76 characters')
        else PipelineArn,
    },
  },
  setIngestEndpointUrls(IngestEndpointUrls): {
    Properties+::: {
      IngestEndpointUrls:
        if !std.isArray(IngestEndpointUrls) then (error 'IngestEndpointUrls must be an array')
        else IngestEndpointUrls,
    },
  },
  pushIngestEndpointUrls(IngestEndpointUrls): {
    Properties+::: {
      IngestEndpointUrls+: IngestEndpointUrls,
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
