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
    Type: 'AWS::AppStream::Stack',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setStorageConnectors(StorageConnectors): {
    Properties+::: {
      StorageConnectors:
        if !std.isArray(StorageConnectors) then (error 'StorageConnectors must be an array')
        else StorageConnectors,
    },
  },
  pushStorageConnectors(StorageConnectors): {
    Properties+::: {
      StorageConnectors+: StorageConnectors,
    },
  },
  setDeleteStorageConnectors(DeleteStorageConnectors): {
    Properties+::: {
      DeleteStorageConnectors:
        if !std.isBoolean(DeleteStorageConnectors) then (error 'DeleteStorageConnectors must be a boolean') else DeleteStorageConnectors,
    },
  },
  setEmbedHostDomains(EmbedHostDomains): {
    Properties+::: {
      EmbedHostDomains:
        if !std.isArray(EmbedHostDomains) then (error 'EmbedHostDomains must be an array')
        else EmbedHostDomains,
    },
  },
  pushEmbedHostDomains(EmbedHostDomains): {
    Properties+::: {
      EmbedHostDomains+: EmbedHostDomains,
    },
  },
  setUserSettings(UserSettings): {
    Properties+::: {
      UserSettings:
        if !std.isArray(UserSettings) then (error 'UserSettings must be an array')
        else UserSettings,
    },
  },
  pushUserSettings(UserSettings): {
    Properties+::: {
      UserSettings+: UserSettings,
    },
  },
  setAttributesToDelete(AttributesToDelete): {
    Properties+::: {
      AttributesToDelete:
        if !std.isArray(AttributesToDelete) then (error 'AttributesToDelete must be an array')
        else AttributesToDelete,
    },
  },
  pushAttributesToDelete(AttributesToDelete): {
    Properties+::: {
      AttributesToDelete+: AttributesToDelete,
    },
  },
  setRedirectURL(RedirectURL): {
    Properties+::: {
      RedirectURL:
        if !std.isString(RedirectURL) then (error 'RedirectURL must be a string')
        else if std.isEmpty(RedirectURL) then (error 'RedirectURL must be not empty')
        else RedirectURL,
    },
  },
  setStreamingExperienceSettings(StreamingExperienceSettings): {
    Properties+::: {
      StreamingExperienceSettings:
        if !std.isObject(StreamingExperienceSettings) then (error 'StreamingExperienceSettings must be an object')
        else StreamingExperienceSettings,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setFeedbackURL(FeedbackURL): {
    Properties+::: {
      FeedbackURL:
        if !std.isString(FeedbackURL) then (error 'FeedbackURL must be a string')
        else if std.isEmpty(FeedbackURL) then (error 'FeedbackURL must be not empty')
        else FeedbackURL,
    },
  },
  setApplicationSettings(ApplicationSettings): {
    Properties+::: {
      ApplicationSettings:
        if !std.isObject(ApplicationSettings) then (error 'ApplicationSettings must be an object')
        else if !std.objectHas(ApplicationSettings, 'Enabled') then (error ' have attribute Enabled')
        else ApplicationSettings,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else DisplayName,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setAccessEndpoints(AccessEndpoints): {
    Properties+::: {
      AccessEndpoints:
        if !std.isArray(AccessEndpoints) then (error 'AccessEndpoints must be an array')
        else AccessEndpoints,
    },
  },
  pushAccessEndpoints(AccessEndpoints): {
    Properties+::: {
      AccessEndpoints+: AccessEndpoints,
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
