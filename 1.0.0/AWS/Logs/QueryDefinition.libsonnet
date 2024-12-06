{
  new(
    Name,
    QueryString,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      QueryString:
        if !std.isString(QueryString) then (error 'QueryString must be a string')
        else if std.isEmpty(QueryString) then (error 'QueryString must be not empty')
        else if std.length(QueryString) < 1 then error ('QueryString should have at least 1 characters')
        else if std.length(QueryString) > 10000 then error ('QueryString should have not more than 10000 characters')
        else QueryString,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::QueryDefinition',
  },
  setLogGroupNames(LogGroupNames): {
    Properties+::: {
      LogGroupNames:
        if !std.isArray(LogGroupNames) then (error 'LogGroupNames must be an array')
        else LogGroupNames,
    },
  },
  pushLogGroupNames(LogGroupNames): {
    Properties+::: {
      LogGroupNames+: LogGroupNames,
    },
  },
  setQueryDefinitionId(QueryDefinitionId): {
    Properties+::: {
      QueryDefinitionId:
        if !std.isString(QueryDefinitionId) then (error 'QueryDefinitionId must be a string')
        else if std.isEmpty(QueryDefinitionId) then (error 'QueryDefinitionId must be not empty')
        else if std.length(QueryDefinitionId) > 256 then error ('QueryDefinitionId should have not more than 256 characters')
        else QueryDefinitionId,
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
