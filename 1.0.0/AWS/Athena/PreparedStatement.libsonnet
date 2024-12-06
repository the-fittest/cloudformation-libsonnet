{
  new(
    StatementName,
    WorkGroup,
    QueryStatement,
  ): {
    local base = self,
    Properties: {
      StatementName:
        if !std.isString(StatementName) then (error 'StatementName must be a string')
        else if std.isEmpty(StatementName) then (error 'StatementName must be not empty')
        else if std.length(StatementName) < 1 then error ('StatementName should have at least 1 characters')
        else if std.length(StatementName) > 256 then error ('StatementName should have not more than 256 characters')
        else StatementName,
      WorkGroup:
        if !std.isString(WorkGroup) then (error 'WorkGroup must be a string')
        else if std.isEmpty(WorkGroup) then (error 'WorkGroup must be not empty')
        else if std.length(WorkGroup) < 1 then error ('WorkGroup should have at least 1 characters')
        else if std.length(WorkGroup) > 128 then error ('WorkGroup should have not more than 128 characters')
        else WorkGroup,
      QueryStatement:
        if !std.isString(QueryStatement) then (error 'QueryStatement must be a string')
        else if std.isEmpty(QueryStatement) then (error 'QueryStatement must be not empty')
        else if std.length(QueryStatement) < 1 then error ('QueryStatement should have at least 1 characters')
        else if std.length(QueryStatement) > 262144 then error ('QueryStatement should have not more than 262144 characters')
        else QueryStatement,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Athena::PreparedStatement',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
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
