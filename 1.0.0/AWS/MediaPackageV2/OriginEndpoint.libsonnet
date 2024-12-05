{
  new(
    ChannelGroupName,
    ChannelName,
    OriginEndpointName,
    ContainerType,
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
      OriginEndpointName:
        if !std.isString(OriginEndpointName) then (error 'OriginEndpointName must be a string')
        else if std.isEmpty(OriginEndpointName) then (error 'OriginEndpointName must be not empty')
        else if std.length(OriginEndpointName) < 1 then error ('OriginEndpointName should have at least 1 characters')
        else if std.length(OriginEndpointName) > 256 then error ('OriginEndpointName should have not more than 256 characters')
        else OriginEndpointName,
      ContainerType:
        if !std.isString(ContainerType) then (error 'ContainerType must be a string')
        else if std.isEmpty(ContainerType) then (error 'ContainerType must be not empty')
        else if ContainerType != 'TS' && ContainerType != 'CMAF' then (error "ContainerType should be 'TS' or 'CMAF'")
        else ContainerType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaPackageV2::OriginEndpoint',
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
  setDashManifests(DashManifests): {
    Properties+::: {
      DashManifests:
        if !std.isArray(DashManifests) then (error 'DashManifests must be an array')
        else DashManifests,
    },
  },
  setDashManifestsMixin(DashManifests): {
    Properties+::: {
      DashManifests+: DashManifests,
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
  setForceEndpointErrorConfiguration(ForceEndpointErrorConfiguration): {
    Properties+::: {
      ForceEndpointErrorConfiguration:
        if !std.isObject(ForceEndpointErrorConfiguration) then (error 'ForceEndpointErrorConfiguration must be an object')
        else ForceEndpointErrorConfiguration,
    },
  },
  setHlsManifests(HlsManifests): {
    Properties+::: {
      HlsManifests:
        if !std.isArray(HlsManifests) then (error 'HlsManifests must be an array')
        else HlsManifests,
    },
  },
  setHlsManifestsMixin(HlsManifests): {
    Properties+::: {
      HlsManifests+: HlsManifests,
    },
  },
  setLowLatencyHlsManifests(LowLatencyHlsManifests): {
    Properties+::: {
      LowLatencyHlsManifests:
        if !std.isArray(LowLatencyHlsManifests) then (error 'LowLatencyHlsManifests must be an array')
        else LowLatencyHlsManifests,
    },
  },
  setLowLatencyHlsManifestsMixin(LowLatencyHlsManifests): {
    Properties+::: {
      LowLatencyHlsManifests+: LowLatencyHlsManifests,
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
  setSegment(Segment): {
    Properties+::: {
      Segment:
        if !std.isObject(Segment) then (error 'Segment must be an object')
        else Segment,
    },
  },
  setStartoverWindowSeconds(StartoverWindowSeconds): {
    Properties+::: {
      StartoverWindowSeconds:
        if !std.isNumber(StartoverWindowSeconds) then (error 'StartoverWindowSeconds must be an number')
        else if StartoverWindowSeconds < 60 then error ('StartoverWindowSeconds should be at least 60')
        else if StartoverWindowSeconds > 1209600 then error ('StartoverWindowSeconds should be not more than 1209600')
        else StartoverWindowSeconds,
    },
  },
  setDashManifestUrls(DashManifestUrls): {
    Properties+::: {
      DashManifestUrls:
        if !std.isArray(DashManifestUrls) then (error 'DashManifestUrls must be an array')
        else DashManifestUrls,
    },
  },
  setDashManifestUrlsMixin(DashManifestUrls): {
    Properties+::: {
      DashManifestUrls+: DashManifestUrls,
    },
  },
  setHlsManifestUrls(HlsManifestUrls): {
    Properties+::: {
      HlsManifestUrls:
        if !std.isArray(HlsManifestUrls) then (error 'HlsManifestUrls must be an array')
        else HlsManifestUrls,
    },
  },
  setHlsManifestUrlsMixin(HlsManifestUrls): {
    Properties+::: {
      HlsManifestUrls+: HlsManifestUrls,
    },
  },
  setLowLatencyHlsManifestUrls(LowLatencyHlsManifestUrls): {
    Properties+::: {
      LowLatencyHlsManifestUrls:
        if !std.isArray(LowLatencyHlsManifestUrls) then (error 'LowLatencyHlsManifestUrls must be an array')
        else LowLatencyHlsManifestUrls,
    },
  },
  setLowLatencyHlsManifestUrlsMixin(LowLatencyHlsManifestUrls): {
    Properties+::: {
      LowLatencyHlsManifestUrls+: LowLatencyHlsManifestUrls,
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
