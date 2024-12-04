{
  // AWS MediaPackageV2 Channel
  Channel: {
    new(
      ChannelGroupName,
      ChannelName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::MediaPackageV2::Channel',
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
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withIngestEndpoints(IngestEndpoints): {
      Properties+::: {
        IngestEndpoints: (if std.isArray(IngestEndpoints) then IngestEndpoints else [IngestEndpoints]),
      },
    },
    withIngestEndpointsMixin(IngestEndpoints): {
      Properties+::: {
        IngestEndpoints+: (if std.isArray(IngestEndpoints) then IngestEndpoints else [IngestEndpoints]),
      },
    },
    withInputType(InputType): {
      assert std.isString(InputType) : 'InputType must be a string',
      Properties+::: {
        InputType: InputType,
      },
    },
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: {
        ModifiedAt: ModifiedAt,
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
