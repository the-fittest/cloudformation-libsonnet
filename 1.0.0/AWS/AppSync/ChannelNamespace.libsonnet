{
  // AWS AppSync ChannelNamespace
  ChannelNamespace: {
    new(
      ApiId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApiId) : 'ApiId must be a string',
        ApiId: ApiId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppSync::ChannelNamespace',
    },
    withSubscribeAuthModes(SubscribeAuthModes): {
      Properties+::: {
        SubscribeAuthModes: (if std.isArray(SubscribeAuthModes) then SubscribeAuthModes else [SubscribeAuthModes]),
      },
    },
    withSubscribeAuthModesMixin(SubscribeAuthModes): {
      Properties+::: {
        SubscribeAuthModes+: (if std.isArray(SubscribeAuthModes) then SubscribeAuthModes else [SubscribeAuthModes]),
      },
    },
    withPublishAuthModes(PublishAuthModes): {
      Properties+::: {
        PublishAuthModes: (if std.isArray(PublishAuthModes) then PublishAuthModes else [PublishAuthModes]),
      },
    },
    withPublishAuthModesMixin(PublishAuthModes): {
      Properties+::: {
        PublishAuthModes+: (if std.isArray(PublishAuthModes) then PublishAuthModes else [PublishAuthModes]),
      },
    },
    withCodeHandlers(CodeHandlers): {
      assert std.isString(CodeHandlers) : 'CodeHandlers must be a string',
      Properties+::: {
        CodeHandlers: CodeHandlers,
      },
    },
    withCodeS3Location(CodeS3Location): {
      assert std.isString(CodeS3Location) : 'CodeS3Location must be a string',
      Properties+::: {
        CodeS3Location: CodeS3Location,
      },
    },
    withChannelNamespaceArn(ChannelNamespaceArn): {
      assert std.isString(ChannelNamespaceArn) : 'ChannelNamespaceArn must be a string',
      Properties+::: {
        ChannelNamespaceArn: ChannelNamespaceArn,
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
