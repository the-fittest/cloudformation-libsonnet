{
  // AWS EC2 NetworkInsightsAccessScopeAnalysis
  NetworkInsightsAccessScopeAnalysis: {
    new(
      NetworkInsightsAccessScopeId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NetworkInsightsAccessScopeId) : 'NetworkInsightsAccessScopeId must be a string',
        NetworkInsightsAccessScopeId: NetworkInsightsAccessScopeId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::NetworkInsightsAccessScopeAnalysis',
    },
    withNetworkInsightsAccessScopeAnalysisId(NetworkInsightsAccessScopeAnalysisId): {
      assert std.isString(NetworkInsightsAccessScopeAnalysisId) : 'NetworkInsightsAccessScopeAnalysisId must be a string',
      Properties+::: {
        NetworkInsightsAccessScopeAnalysisId: NetworkInsightsAccessScopeAnalysisId,
      },
    },
    withNetworkInsightsAccessScopeAnalysisArn(NetworkInsightsAccessScopeAnalysisArn): {
      assert std.isString(NetworkInsightsAccessScopeAnalysisArn) : 'NetworkInsightsAccessScopeAnalysisArn must be a string',
      Properties+::: {
        NetworkInsightsAccessScopeAnalysisArn: NetworkInsightsAccessScopeAnalysisArn,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: {
        StatusMessage: StatusMessage,
      },
    },
    withStartDate(StartDate): {
      assert std.isString(StartDate) : 'StartDate must be a string',
      Properties+::: {
        StartDate: StartDate,
      },
    },
    withEndDate(EndDate): {
      assert std.isString(EndDate) : 'EndDate must be a string',
      Properties+::: {
        EndDate: EndDate,
      },
    },
    withFindingsFound(FindingsFound): {
      assert std.isString(FindingsFound) : 'FindingsFound must be a string',
      Properties+::: {
        FindingsFound: FindingsFound,
      },
    },
    withAnalyzedEniCount(AnalyzedEniCount): {
      assert std.isNumber(AnalyzedEniCount) : 'AnalyzedEniCount must be a number',
      Properties+::: {
        AnalyzedEniCount: AnalyzedEniCount,
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
