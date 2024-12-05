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
    Type: 'AWS::EC2::NetworkInsightsAccessScope',
  },
  setNetworkInsightsAccessScopeId(NetworkInsightsAccessScopeId): {
    Properties+::: {
      NetworkInsightsAccessScopeId:
        if !std.isString(NetworkInsightsAccessScopeId) then (error 'NetworkInsightsAccessScopeId must be a string')
        else if std.isEmpty(NetworkInsightsAccessScopeId) then (error 'NetworkInsightsAccessScopeId must be not empty')
        else NetworkInsightsAccessScopeId,
    },
  },
  setNetworkInsightsAccessScopeArn(NetworkInsightsAccessScopeArn): {
    Properties+::: {
      NetworkInsightsAccessScopeArn:
        if !std.isString(NetworkInsightsAccessScopeArn) then (error 'NetworkInsightsAccessScopeArn must be a string')
        else if std.isEmpty(NetworkInsightsAccessScopeArn) then (error 'NetworkInsightsAccessScopeArn must be not empty')
        else NetworkInsightsAccessScopeArn,
    },
  },
  setCreatedDate(CreatedDate): {
    Properties+::: {
      CreatedDate:
        if !std.isString(CreatedDate) then (error 'CreatedDate must be a string')
        else if std.isEmpty(CreatedDate) then (error 'CreatedDate must be not empty')
        else CreatedDate,
    },
  },
  setUpdatedDate(UpdatedDate): {
    Properties+::: {
      UpdatedDate:
        if !std.isString(UpdatedDate) then (error 'UpdatedDate must be a string')
        else if std.isEmpty(UpdatedDate) then (error 'UpdatedDate must be not empty')
        else UpdatedDate,
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
  setMatchPaths(MatchPaths): {
    Properties+::: {
      MatchPaths:
        if !std.isArray(MatchPaths) then (error 'MatchPaths must be an array')
        else MatchPaths,
    },
  },
  setMatchPathsMixin(MatchPaths): {
    Properties+::: {
      MatchPaths+: MatchPaths,
    },
  },
  setExcludePaths(ExcludePaths): {
    Properties+::: {
      ExcludePaths:
        if !std.isArray(ExcludePaths) then (error 'ExcludePaths must be an array')
        else ExcludePaths,
    },
  },
  setExcludePathsMixin(ExcludePaths): {
    Properties+::: {
      ExcludePaths+: ExcludePaths,
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
