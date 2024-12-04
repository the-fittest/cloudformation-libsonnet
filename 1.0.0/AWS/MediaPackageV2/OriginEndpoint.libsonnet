{
  // AWS MediaPackageV2 OriginEndpoint
  OriginEndpoint: {
    new(
      ChannelGroupName,
      ChannelName,
      OriginEndpointName,
      ContainerType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
        assert std.isString(OriginEndpointName) : 'OriginEndpointName must be a string',
        OriginEndpointName: OriginEndpointName,
        assert std.isString(ContainerType) : 'ContainerType must be a string',
        ContainerType: ContainerType,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::MediaPackageV2::OriginEndpoint',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withDashManifests(DashManifests): {
      Properties+::: {
        DashManifests: (if std.isArray(DashManifests) then DashManifests else [DashManifests]),
      },
    },
    withDashManifestsMixin(DashManifests): {
      Properties+::: {
        DashManifests+: (if std.isArray(DashManifests) then DashManifests else [DashManifests]),
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withForceEndpointErrorConfiguration(ForceEndpointErrorConfiguration): {
      assert std.isObject(ForceEndpointErrorConfiguration) : 'ForceEndpointErrorConfiguration must be a object',
      Properties+::: {
        ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration,
      },
    },
    withHlsManifests(HlsManifests): {
      Properties+::: {
        HlsManifests: (if std.isArray(HlsManifests) then HlsManifests else [HlsManifests]),
      },
    },
    withHlsManifestsMixin(HlsManifests): {
      Properties+::: {
        HlsManifests+: (if std.isArray(HlsManifests) then HlsManifests else [HlsManifests]),
      },
    },
    withLowLatencyHlsManifests(LowLatencyHlsManifests): {
      Properties+::: {
        LowLatencyHlsManifests: (if std.isArray(LowLatencyHlsManifests) then LowLatencyHlsManifests else [LowLatencyHlsManifests]),
      },
    },
    withLowLatencyHlsManifestsMixin(LowLatencyHlsManifests): {
      Properties+::: {
        LowLatencyHlsManifests+: (if std.isArray(LowLatencyHlsManifests) then LowLatencyHlsManifests else [LowLatencyHlsManifests]),
      },
    },
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: {
        ModifiedAt: ModifiedAt,
      },
    },
    withSegment(Segment): {
      assert std.isObject(Segment) : 'Segment must be a object',
      Properties+::: {
        Segment: Segment,
      },
    },
    withStartoverWindowSeconds(StartoverWindowSeconds): {
      assert std.isNumber(StartoverWindowSeconds) : 'StartoverWindowSeconds must be a number',
      Properties+::: {
        StartoverWindowSeconds: StartoverWindowSeconds,
      },
    },
    withDashManifestUrls(DashManifestUrls): {
      Properties+::: {
        DashManifestUrls: (if std.isArray(DashManifestUrls) then DashManifestUrls else [DashManifestUrls]),
      },
    },
    withDashManifestUrlsMixin(DashManifestUrls): {
      Properties+::: {
        DashManifestUrls+: (if std.isArray(DashManifestUrls) then DashManifestUrls else [DashManifestUrls]),
      },
    },
    withHlsManifestUrls(HlsManifestUrls): {
      Properties+::: {
        HlsManifestUrls: (if std.isArray(HlsManifestUrls) then HlsManifestUrls else [HlsManifestUrls]),
      },
    },
    withHlsManifestUrlsMixin(HlsManifestUrls): {
      Properties+::: {
        HlsManifestUrls+: (if std.isArray(HlsManifestUrls) then HlsManifestUrls else [HlsManifestUrls]),
      },
    },
    withLowLatencyHlsManifestUrls(LowLatencyHlsManifestUrls): {
      Properties+::: {
        LowLatencyHlsManifestUrls: (if std.isArray(LowLatencyHlsManifestUrls) then LowLatencyHlsManifestUrls else [LowLatencyHlsManifestUrls]),
      },
    },
    withLowLatencyHlsManifestUrlsMixin(LowLatencyHlsManifestUrls): {
      Properties+::: {
        LowLatencyHlsManifestUrls+: (if std.isArray(LowLatencyHlsManifestUrls) then LowLatencyHlsManifestUrls else [LowLatencyHlsManifestUrls]),
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
  },
}
