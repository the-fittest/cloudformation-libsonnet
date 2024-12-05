{
  new(
    QueryName,
    QueryExpression,
  ): {
    local base = self,
    Properties: {
      QueryName:
        if !std.isString(QueryName) then (error 'QueryName must be a string')
        else if std.isEmpty(QueryName) then (error 'QueryName must be not empty')
        else if std.length(QueryName) < 1 then error ('QueryName should have at least 1 characters')
        else if std.length(QueryName) > 64 then error ('QueryName should have not more than 64 characters')
        else QueryName,
      QueryExpression:
        if !std.isString(QueryExpression) then (error 'QueryExpression must be a string')
        else if std.isEmpty(QueryExpression) then (error 'QueryExpression must be not empty')
        else if std.length(QueryExpression) < 1 then error ('QueryExpression should have at least 1 characters')
        else if std.length(QueryExpression) > 4096 then error ('QueryExpression should have not more than 4096 characters')
        else QueryExpression,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::StoredQuery',
  },
  setQueryArn(QueryArn): {
    Properties+::: {
      QueryArn:
        if !std.isString(QueryArn) then (error 'QueryArn must be a string')
        else if std.isEmpty(QueryArn) then (error 'QueryArn must be not empty')
        else if std.length(QueryArn) < 1 then error ('QueryArn should have at least 1 characters')
        else if std.length(QueryArn) > 500 then error ('QueryArn should have not more than 500 characters')
        else QueryArn,
    },
  },
  setQueryId(QueryId): {
    Properties+::: {
      QueryId:
        if !std.isString(QueryId) then (error 'QueryId must be a string')
        else if std.isEmpty(QueryId) then (error 'QueryId must be not empty')
        else if std.length(QueryId) < 1 then error ('QueryId should have at least 1 characters')
        else if std.length(QueryId) > 36 then error ('QueryId should have not more than 36 characters')
        else QueryId,
    },
  },
  setQueryDescription(QueryDescription): {
    Properties+::: {
      QueryDescription:
        if !std.isString(QueryDescription) then (error 'QueryDescription must be a string')
        else if std.isEmpty(QueryDescription) then (error 'QueryDescription must be not empty')
        else if std.length(QueryDescription) > 256 then error ('QueryDescription should have not more than 256 characters')
        else QueryDescription,
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
