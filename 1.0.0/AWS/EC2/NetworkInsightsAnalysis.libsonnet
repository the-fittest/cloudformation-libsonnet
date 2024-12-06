{
  new(
    NetworkInsightsPathId,
  ): {
    local base = self,
    Properties: {
      NetworkInsightsPathId:
        if !std.isString(NetworkInsightsPathId) then (error 'NetworkInsightsPathId must be a string')
        else if std.isEmpty(NetworkInsightsPathId) then (error 'NetworkInsightsPathId must be not empty')
        else NetworkInsightsPathId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInsightsAnalysis',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'running' && Status != 'failed' && Status != 'succeeded' then (error "Status should be 'running' or 'failed' or 'succeeded'")
        else Status,
    },
  },
  setReturnPathComponents(ReturnPathComponents): {
    Properties+::: {
      ReturnPathComponents:
        if !std.isArray(ReturnPathComponents) then (error 'ReturnPathComponents must be an array')
        else ReturnPathComponents,
    },
  },
  pushReturnPathComponents(ReturnPathComponents): {
    Properties+::: {
      ReturnPathComponents+: ReturnPathComponents,
    },
  },
  setNetworkInsightsAnalysisId(NetworkInsightsAnalysisId): {
    Properties+::: {
      NetworkInsightsAnalysisId:
        if !std.isString(NetworkInsightsAnalysisId) then (error 'NetworkInsightsAnalysisId must be a string')
        else if std.isEmpty(NetworkInsightsAnalysisId) then (error 'NetworkInsightsAnalysisId must be not empty')
        else NetworkInsightsAnalysisId,
    },
  },
  setNetworkPathFound(NetworkPathFound): {
    Properties+::: {
      NetworkPathFound:
        if !std.isBoolean(NetworkPathFound) then (error 'NetworkPathFound must be a boolean') else NetworkPathFound,
    },
  },
  setSuggestedAccounts(SuggestedAccounts): {
    Properties+::: {
      SuggestedAccounts:
        if !std.isArray(SuggestedAccounts) then (error 'SuggestedAccounts must be an array')
        else SuggestedAccounts,
    },
  },
  pushSuggestedAccounts(SuggestedAccounts): {
    Properties+::: {
      SuggestedAccounts+: SuggestedAccounts,
    },
  },
  setFilterInArns(FilterInArns): {
    Properties+::: {
      FilterInArns:
        if !std.isArray(FilterInArns) then (error 'FilterInArns must be an array')
        else FilterInArns,
    },
  },
  pushFilterInArns(FilterInArns): {
    Properties+::: {
      FilterInArns+: FilterInArns,
    },
  },
  setNetworkInsightsAnalysisArn(NetworkInsightsAnalysisArn): {
    Properties+::: {
      NetworkInsightsAnalysisArn:
        if !std.isString(NetworkInsightsAnalysisArn) then (error 'NetworkInsightsAnalysisArn must be a string')
        else if std.isEmpty(NetworkInsightsAnalysisArn) then (error 'NetworkInsightsAnalysisArn must be not empty')
        else NetworkInsightsAnalysisArn,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else StatusMessage,
    },
  },
  setStartDate(StartDate): {
    Properties+::: {
      StartDate:
        if !std.isString(StartDate) then (error 'StartDate must be a string')
        else if std.isEmpty(StartDate) then (error 'StartDate must be not empty')
        else StartDate,
    },
  },
  setAlternatePathHints(AlternatePathHints): {
    Properties+::: {
      AlternatePathHints:
        if !std.isArray(AlternatePathHints) then (error 'AlternatePathHints must be an array')
        else AlternatePathHints,
    },
  },
  pushAlternatePathHints(AlternatePathHints): {
    Properties+::: {
      AlternatePathHints+: AlternatePathHints,
    },
  },
  setExplanations(Explanations): {
    Properties+::: {
      Explanations:
        if !std.isArray(Explanations) then (error 'Explanations must be an array')
        else Explanations,
    },
  },
  pushExplanations(Explanations): {
    Properties+::: {
      Explanations+: Explanations,
    },
  },
  setForwardPathComponents(ForwardPathComponents): {
    Properties+::: {
      ForwardPathComponents:
        if !std.isArray(ForwardPathComponents) then (error 'ForwardPathComponents must be an array')
        else ForwardPathComponents,
    },
  },
  pushForwardPathComponents(ForwardPathComponents): {
    Properties+::: {
      ForwardPathComponents+: ForwardPathComponents,
    },
  },
  setAdditionalAccounts(AdditionalAccounts): {
    Properties+::: {
      AdditionalAccounts:
        if !std.isArray(AdditionalAccounts) then (error 'AdditionalAccounts must be an array')
        else AdditionalAccounts,
    },
  },
  pushAdditionalAccounts(AdditionalAccounts): {
    Properties+::: {
      AdditionalAccounts+: AdditionalAccounts,
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
