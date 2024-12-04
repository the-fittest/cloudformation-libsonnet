{
  // AWS AppStream Stack
  Stack: {
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
      Type: 'AWS::AppStream::Stack',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withStorageConnectors(StorageConnectors): {
      Properties+::: {
        StorageConnectors: (if std.isArray(StorageConnectors) then StorageConnectors else [StorageConnectors]),
      },
    },
    withStorageConnectorsMixin(StorageConnectors): {
      Properties+::: {
        StorageConnectors+: (if std.isArray(StorageConnectors) then StorageConnectors else [StorageConnectors]),
      },
    },
    withDeleteStorageConnectors(DeleteStorageConnectors): {
      assert std.isBoolean(DeleteStorageConnectors) : 'DeleteStorageConnectors must be a boolean',
      Properties+::: {
        DeleteStorageConnectors: DeleteStorageConnectors,
      },
    },
    withEmbedHostDomains(EmbedHostDomains): {
      Properties+::: {
        EmbedHostDomains: (if std.isArray(EmbedHostDomains) then EmbedHostDomains else [EmbedHostDomains]),
      },
    },
    withEmbedHostDomainsMixin(EmbedHostDomains): {
      Properties+::: {
        EmbedHostDomains+: (if std.isArray(EmbedHostDomains) then EmbedHostDomains else [EmbedHostDomains]),
      },
    },
    withUserSettings(UserSettings): {
      Properties+::: {
        UserSettings: (if std.isArray(UserSettings) then UserSettings else [UserSettings]),
      },
    },
    withUserSettingsMixin(UserSettings): {
      Properties+::: {
        UserSettings+: (if std.isArray(UserSettings) then UserSettings else [UserSettings]),
      },
    },
    withAttributesToDelete(AttributesToDelete): {
      Properties+::: {
        AttributesToDelete: (if std.isArray(AttributesToDelete) then AttributesToDelete else [AttributesToDelete]),
      },
    },
    withAttributesToDeleteMixin(AttributesToDelete): {
      Properties+::: {
        AttributesToDelete+: (if std.isArray(AttributesToDelete) then AttributesToDelete else [AttributesToDelete]),
      },
    },
    withRedirectURL(RedirectURL): {
      assert std.isString(RedirectURL) : 'RedirectURL must be a string',
      Properties+::: {
        RedirectURL: RedirectURL,
      },
    },
    withStreamingExperienceSettings(StreamingExperienceSettings): {
      assert std.isObject(StreamingExperienceSettings) : 'StreamingExperienceSettings must be a object',
      Properties+::: {
        StreamingExperienceSettings: StreamingExperienceSettings,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withFeedbackURL(FeedbackURL): {
      assert std.isString(FeedbackURL) : 'FeedbackURL must be a string',
      Properties+::: {
        FeedbackURL: FeedbackURL,
      },
    },
    withApplicationSettings(ApplicationSettings): {
      assert std.isObject(ApplicationSettings) : 'ApplicationSettings must be a object',
      Properties+::: {
        ApplicationSettings: ApplicationSettings,
      },
    },
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: {
        DisplayName: DisplayName,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
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
    withAccessEndpoints(AccessEndpoints): {
      Properties+::: {
        AccessEndpoints: (if std.isArray(AccessEndpoints) then AccessEndpoints else [AccessEndpoints]),
      },
    },
    withAccessEndpointsMixin(AccessEndpoints): {
      Properties+::: {
        AccessEndpoints+: (if std.isArray(AccessEndpoints) then AccessEndpoints else [AccessEndpoints]),
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
