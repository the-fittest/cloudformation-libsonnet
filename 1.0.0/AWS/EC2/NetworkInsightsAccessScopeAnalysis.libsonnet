{
  new(
    NetworkInsightsAccessScopeId,
  ): {
    local base = self,
    Properties: {
      NetworkInsightsAccessScopeId:
        if !std.isString(NetworkInsightsAccessScopeId) then (error 'NetworkInsightsAccessScopeId must be a string')
        else if std.isEmpty(NetworkInsightsAccessScopeId) then (error 'NetworkInsightsAccessScopeId must be not empty')
        else NetworkInsightsAccessScopeId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInsightsAccessScopeAnalysis',
  },
  setNetworkInsightsAccessScopeAnalysisId(NetworkInsightsAccessScopeAnalysisId): {
    Properties+::: {
      NetworkInsightsAccessScopeAnalysisId:
        if !std.isString(NetworkInsightsAccessScopeAnalysisId) then (error 'NetworkInsightsAccessScopeAnalysisId must be a string')
        else if std.isEmpty(NetworkInsightsAccessScopeAnalysisId) then (error 'NetworkInsightsAccessScopeAnalysisId must be not empty')
        else NetworkInsightsAccessScopeAnalysisId,
    },
  },
  setNetworkInsightsAccessScopeAnalysisArn(NetworkInsightsAccessScopeAnalysisArn): {
    Properties+::: {
      NetworkInsightsAccessScopeAnalysisArn:
        if !std.isString(NetworkInsightsAccessScopeAnalysisArn) then (error 'NetworkInsightsAccessScopeAnalysisArn must be a string')
        else if std.isEmpty(NetworkInsightsAccessScopeAnalysisArn) then (error 'NetworkInsightsAccessScopeAnalysisArn must be not empty')
        else NetworkInsightsAccessScopeAnalysisArn,
    },
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
  setEndDate(EndDate): {
    Properties+::: {
      EndDate:
        if !std.isString(EndDate) then (error 'EndDate must be a string')
        else if std.isEmpty(EndDate) then (error 'EndDate must be not empty')
        else EndDate,
    },
  },
  setFindingsFound(FindingsFound): {
    Properties+::: {
      FindingsFound:
        if !std.isString(FindingsFound) then (error 'FindingsFound must be a string')
        else if std.isEmpty(FindingsFound) then (error 'FindingsFound must be not empty')
        else if FindingsFound != 'true' && FindingsFound != 'false' && FindingsFound != 'unknown' then (error "FindingsFound should be 'true' or 'false' or 'unknown'")
        else FindingsFound,
    },
  },
  setAnalyzedEniCount(AnalyzedEniCount): {
    Properties+::: {
      AnalyzedEniCount:
        if !std.isNumber(AnalyzedEniCount) then (error 'AnalyzedEniCount must be an number')
        else AnalyzedEniCount,
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
