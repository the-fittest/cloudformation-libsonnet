{
  new(
    ChannelGroupName,
    ChannelName,
  ): {
    local base = self,
    Properties: {
      ChannelGroupName:
        if !std.isString(ChannelGroupName) then (error 'ChannelGroupName must be a string')
        else if std.isEmpty(ChannelGroupName) then (error 'ChannelGroupName must be not empty')
        else if std.length(ChannelGroupName) < 1 then error ('ChannelGroupName should have at least 1 characters')
        else if std.length(ChannelGroupName) > 256 then error ('ChannelGroupName should have not more than 256 characters')
        else ChannelGroupName,
      ChannelName:
        if !std.isString(ChannelName) then (error 'ChannelName must be a string')
        else if std.isEmpty(ChannelName) then (error 'ChannelName must be not empty')
        else if std.length(ChannelName) < 1 then error ('ChannelName should have at least 1 characters')
        else if std.length(ChannelName) > 256 then error ('ChannelName should have not more than 256 characters')
        else ChannelName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaPackageV2::Channel',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setIngestEndpoints(IngestEndpoints): {
    Properties+::: {
      IngestEndpoints:
        if !std.isArray(IngestEndpoints) then (error 'IngestEndpoints must be an array')
        else IngestEndpoints,
    },
  },
  setIngestEndpointsMixin(IngestEndpoints): {
    Properties+::: {
      IngestEndpoints+: IngestEndpoints,
    },
  },
  setInputType(InputType): {
    Properties+::: {
      InputType:
        if !std.isString(InputType) then (error 'InputType must be a string')
        else if std.isEmpty(InputType) then (error 'InputType must be not empty')
        else if InputType != 'HLS' && InputType != 'CMAF' then (error "InputType should be 'HLS' or 'CMAF'")
        else InputType,
    },
  },
  setModifiedAt(ModifiedAt): {
    Properties+::: {
      ModifiedAt:
        if !std.isString(ModifiedAt) then (error 'ModifiedAt must be a string')
        else if std.isEmpty(ModifiedAt) then (error 'ModifiedAt must be not empty')
        else ModifiedAt,
    },
  },
  setIngestEndpointUrls(IngestEndpointUrls): {
    Properties+::: {
      IngestEndpointUrls:
        if !std.isArray(IngestEndpointUrls) then (error 'IngestEndpointUrls must be an array')
        else IngestEndpointUrls,
    },
  },
  setIngestEndpointUrlsMixin(IngestEndpointUrls): {
    Properties+::: {
      IngestEndpointUrls+: IngestEndpointUrls,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
