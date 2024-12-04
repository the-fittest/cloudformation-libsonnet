{
  // AWS EC2 NetworkInsightsAccessScope
  NetworkInsightsAccessScope: {
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
      Type: 'AWS::EC2::NetworkInsightsAccessScope',
    },
    withNetworkInsightsAccessScopeId(NetworkInsightsAccessScopeId): {
      assert std.isString(NetworkInsightsAccessScopeId) : 'NetworkInsightsAccessScopeId must be a string',
      Properties+::: {
        NetworkInsightsAccessScopeId: NetworkInsightsAccessScopeId,
      },
    },
    withNetworkInsightsAccessScopeArn(NetworkInsightsAccessScopeArn): {
      assert std.isString(NetworkInsightsAccessScopeArn) : 'NetworkInsightsAccessScopeArn must be a string',
      Properties+::: {
        NetworkInsightsAccessScopeArn: NetworkInsightsAccessScopeArn,
      },
    },
    withCreatedDate(CreatedDate): {
      assert std.isString(CreatedDate) : 'CreatedDate must be a string',
      Properties+::: {
        CreatedDate: CreatedDate,
      },
    },
    withUpdatedDate(UpdatedDate): {
      assert std.isString(UpdatedDate) : 'UpdatedDate must be a string',
      Properties+::: {
        UpdatedDate: UpdatedDate,
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
    withMatchPaths(MatchPaths): {
      Properties+::: {
        MatchPaths: (if std.isArray(MatchPaths) then MatchPaths else [MatchPaths]),
      },
    },
    withMatchPathsMixin(MatchPaths): {
      Properties+::: {
        MatchPaths+: (if std.isArray(MatchPaths) then MatchPaths else [MatchPaths]),
      },
    },
    withExcludePaths(ExcludePaths): {
      Properties+::: {
        ExcludePaths: (if std.isArray(ExcludePaths) then ExcludePaths else [ExcludePaths]),
      },
    },
    withExcludePathsMixin(ExcludePaths): {
      Properties+::: {
        ExcludePaths+: (if std.isArray(ExcludePaths) then ExcludePaths else [ExcludePaths]),
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
