{
  new(
    NetworkInsightsPathId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(NetworkInsightsPathId) : 'NetworkInsightsPathId must be a string',
      NetworkInsightsPathId: NetworkInsightsPathId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInsightsAnalysis',
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'running' || Status == 'failed' || Status == 'succeeded' : "Status should be 'running' or 'failed' or 'succeeded'",
    Properties+::: {
      Status: Status,
    },
  },
  withReturnPathComponents(ReturnPathComponents): {
    Properties+::: {
      ReturnPathComponents: (if std.isArray(ReturnPathComponents) then ReturnPathComponents else [ReturnPathComponents]),
    },
  },
  withReturnPathComponentsMixin(ReturnPathComponents): {
    Properties+::: {
      ReturnPathComponents+: (if std.isArray(ReturnPathComponents) then ReturnPathComponents else [ReturnPathComponents]),
    },
  },
  withNetworkInsightsAnalysisId(NetworkInsightsAnalysisId): {
    assert std.isString(NetworkInsightsAnalysisId) : 'NetworkInsightsAnalysisId must be a string',
    Properties+::: {
      NetworkInsightsAnalysisId: NetworkInsightsAnalysisId,
    },
  },
  withNetworkPathFound(NetworkPathFound): {
    assert std.isBoolean(NetworkPathFound) : 'NetworkPathFound must be a boolean',
    Properties+::: {
      NetworkPathFound: NetworkPathFound,
    },
  },
  withSuggestedAccounts(SuggestedAccounts): {
    Properties+::: {
      SuggestedAccounts: (if std.isArray(SuggestedAccounts) then SuggestedAccounts else [SuggestedAccounts]),
    },
  },
  withSuggestedAccountsMixin(SuggestedAccounts): {
    Properties+::: {
      SuggestedAccounts+: (if std.isArray(SuggestedAccounts) then SuggestedAccounts else [SuggestedAccounts]),
    },
  },
  withFilterInArns(FilterInArns): {
    Properties+::: {
      FilterInArns: (if std.isArray(FilterInArns) then FilterInArns else [FilterInArns]),
    },
  },
  withFilterInArnsMixin(FilterInArns): {
    Properties+::: {
      FilterInArns+: (if std.isArray(FilterInArns) then FilterInArns else [FilterInArns]),
    },
  },
  withNetworkInsightsAnalysisArn(NetworkInsightsAnalysisArn): {
    assert std.isString(NetworkInsightsAnalysisArn) : 'NetworkInsightsAnalysisArn must be a string',
    Properties+::: {
      NetworkInsightsAnalysisArn: NetworkInsightsAnalysisArn,
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
  withAlternatePathHints(AlternatePathHints): {
    Properties+::: {
      AlternatePathHints: (if std.isArray(AlternatePathHints) then AlternatePathHints else [AlternatePathHints]),
    },
  },
  withAlternatePathHintsMixin(AlternatePathHints): {
    Properties+::: {
      AlternatePathHints+: (if std.isArray(AlternatePathHints) then AlternatePathHints else [AlternatePathHints]),
    },
  },
  withExplanations(Explanations): {
    Properties+::: {
      Explanations: (if std.isArray(Explanations) then Explanations else [Explanations]),
    },
  },
  withExplanationsMixin(Explanations): {
    Properties+::: {
      Explanations+: (if std.isArray(Explanations) then Explanations else [Explanations]),
    },
  },
  withForwardPathComponents(ForwardPathComponents): {
    Properties+::: {
      ForwardPathComponents: (if std.isArray(ForwardPathComponents) then ForwardPathComponents else [ForwardPathComponents]),
    },
  },
  withForwardPathComponentsMixin(ForwardPathComponents): {
    Properties+::: {
      ForwardPathComponents+: (if std.isArray(ForwardPathComponents) then ForwardPathComponents else [ForwardPathComponents]),
    },
  },
  withAdditionalAccounts(AdditionalAccounts): {
    Properties+::: {
      AdditionalAccounts: (if std.isArray(AdditionalAccounts) then AdditionalAccounts else [AdditionalAccounts]),
    },
  },
  withAdditionalAccountsMixin(AdditionalAccounts): {
    Properties+::: {
      AdditionalAccounts+: (if std.isArray(AdditionalAccounts) then AdditionalAccounts else [AdditionalAccounts]),
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
}
