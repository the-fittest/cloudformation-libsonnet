{
  new(
    AuthorizedAccountId,
    AuthorizedAwsRegion,
  ): {
    local base = self,
    Properties: {
      AuthorizedAccountId:
        if !std.isString(AuthorizedAccountId) then (error 'AuthorizedAccountId must be a string')
        else if std.isEmpty(AuthorizedAccountId) then (error 'AuthorizedAccountId must be not empty')
        else AuthorizedAccountId,
      AuthorizedAwsRegion:
        if !std.isString(AuthorizedAwsRegion) then (error 'AuthorizedAwsRegion must be a string')
        else if std.isEmpty(AuthorizedAwsRegion) then (error 'AuthorizedAwsRegion must be not empty')
        else if std.length(AuthorizedAwsRegion) < 1 then error ('AuthorizedAwsRegion should have at least 1 characters')
        else if std.length(AuthorizedAwsRegion) > 64 then error ('AuthorizedAwsRegion should have not more than 64 characters')
        else AuthorizedAwsRegion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::AggregationAuthorization',
  },
  setAggregationAuthorizationArn(AggregationAuthorizationArn): {
    Properties+::: {
      AggregationAuthorizationArn:
        if !std.isString(AggregationAuthorizationArn) then (error 'AggregationAuthorizationArn must be a string')
        else if std.isEmpty(AggregationAuthorizationArn) then (error 'AggregationAuthorizationArn must be not empty')
        else AggregationAuthorizationArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
