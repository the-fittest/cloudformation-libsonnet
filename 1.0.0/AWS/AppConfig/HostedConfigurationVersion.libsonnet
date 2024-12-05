{
  new(
    ApplicationId,
    ConfigurationProfileId,
    Content,
    ContentType,
  ): {
    local base = self,
    Properties: {
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
      ConfigurationProfileId:
        if !std.isString(ConfigurationProfileId) then (error 'ConfigurationProfileId must be a string')
        else if std.isEmpty(ConfigurationProfileId) then (error 'ConfigurationProfileId must be not empty')
        else ConfigurationProfileId,
      Content:
        if !std.isString(Content) then (error 'Content must be a string')
        else if std.isEmpty(Content) then (error 'Content must be not empty')
        else Content,
      ContentType:
        if !std.isString(ContentType) then (error 'ContentType must be a string')
        else if std.isEmpty(ContentType) then (error 'ContentType must be not empty')
        else if std.length(ContentType) < 1 then error ('ContentType should have at least 1 characters')
        else if std.length(ContentType) > 255 then error ('ContentType should have not more than 255 characters')
        else ContentType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppConfig::HostedConfigurationVersion',
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
  setLatestVersionNumber(LatestVersionNumber): {
    Properties+::: {
      LatestVersionNumber:
        if !std.isNumber(LatestVersionNumber) then (error 'LatestVersionNumber must be an number')
        else LatestVersionNumber,
    },
  },
  setVersionLabel(VersionLabel): {
    Properties+::: {
      VersionLabel:
        if !std.isString(VersionLabel) then (error 'VersionLabel must be a string')
        else if std.isEmpty(VersionLabel) then (error 'VersionLabel must be not empty')
        else if std.length(VersionLabel) > 64 then error ('VersionLabel should have not more than 64 characters')
        else VersionLabel,
    },
  },
  setVersionNumber(VersionNumber): {
    Properties+::: {
      VersionNumber:
        if !std.isString(VersionNumber) then (error 'VersionNumber must be a string')
        else if std.isEmpty(VersionNumber) then (error 'VersionNumber must be not empty')
        else VersionNumber,
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
