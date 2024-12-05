{
  new(
    MetricName,
    RateLimit,
    RateKey,
    Name,
  ): {
    local base = self,
    Properties: {
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else MetricName,
      RateLimit:
        if !std.isNumber(RateLimit) then (error 'RateLimit must be an number')
        else RateLimit,
      RateKey:
        if !std.isString(RateKey) then (error 'RateKey must be a string')
        else if std.isEmpty(RateKey) then (error 'RateKey must be not empty')
        else RateKey,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WAFRegional::RateBasedRule',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setMatchPredicates(MatchPredicates): {
    Properties+::: {
      MatchPredicates:
        if !std.isArray(MatchPredicates) then (error 'MatchPredicates must be an array')
        else MatchPredicates,
    },
  },
  setMatchPredicatesMixin(MatchPredicates): {
    Properties+::: {
      MatchPredicates+: MatchPredicates,
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
