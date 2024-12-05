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
    Type: 'AWS::EC2::VerifiedAccessInstance',
  },
  setVerifiedAccessInstanceId(VerifiedAccessInstanceId): {
    Properties+::: {
      VerifiedAccessInstanceId:
        if !std.isString(VerifiedAccessInstanceId) then (error 'VerifiedAccessInstanceId must be a string')
        else if std.isEmpty(VerifiedAccessInstanceId) then (error 'VerifiedAccessInstanceId must be not empty')
        else VerifiedAccessInstanceId,
    },
  },
  setVerifiedAccessTrustProviders(VerifiedAccessTrustProviders): {
    Properties+::: {
      VerifiedAccessTrustProviders:
        if !std.isArray(VerifiedAccessTrustProviders) then (error 'VerifiedAccessTrustProviders must be an array')
        else VerifiedAccessTrustProviders,
    },
  },
  setVerifiedAccessTrustProvidersMixin(VerifiedAccessTrustProviders): {
    Properties+::: {
      VerifiedAccessTrustProviders+: VerifiedAccessTrustProviders,
    },
  },
  setVerifiedAccessTrustProviderIds(VerifiedAccessTrustProviderIds): {
    Properties+::: {
      VerifiedAccessTrustProviderIds:
        if !std.isArray(VerifiedAccessTrustProviderIds) then (error 'VerifiedAccessTrustProviderIds must be an array')
        else VerifiedAccessTrustProviderIds,
    },
  },
  setVerifiedAccessTrustProviderIdsMixin(VerifiedAccessTrustProviderIds): {
    Properties+::: {
      VerifiedAccessTrustProviderIds+: VerifiedAccessTrustProviderIds,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setLoggingConfigurations(LoggingConfigurations): {
    Properties+::: {
      LoggingConfigurations:
        if !std.isObject(LoggingConfigurations) then (error 'LoggingConfigurations must be an object')
        else LoggingConfigurations,
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
  setFipsEnabled(FipsEnabled): {
    Properties+::: {
      FipsEnabled:
        if !std.isBoolean(FipsEnabled) then (error 'FipsEnabled must be a boolean') else FipsEnabled,
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
