{
  new(
    Database,
    QueryString,
  ): {
    local base = self,
    Properties: {
      Database:
        if !std.isString(Database) then (error 'Database must be a string')
        else if std.isEmpty(Database) then (error 'Database must be not empty')
        else if std.length(Database) < 1 then error ('Database should have at least 1 characters')
        else if std.length(Database) > 255 then error ('Database should have not more than 255 characters')
        else Database,
      QueryString:
        if !std.isString(QueryString) then (error 'QueryString must be a string')
        else if std.isEmpty(QueryString) then (error 'QueryString must be not empty')
        else if std.length(QueryString) < 1 then error ('QueryString should have at least 1 characters')
        else if std.length(QueryString) > 262144 then error ('QueryString should have not more than 262144 characters')
        else QueryString,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Athena::NamedQuery',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
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
  setWorkGroup(WorkGroup): {
    Properties+::: {
      WorkGroup:
        if !std.isString(WorkGroup) then (error 'WorkGroup must be a string')
        else if std.isEmpty(WorkGroup) then (error 'WorkGroup must be not empty')
        else if std.length(WorkGroup) < 1 then error ('WorkGroup should have at least 1 characters')
        else if std.length(WorkGroup) > 128 then error ('WorkGroup should have not more than 128 characters')
        else WorkGroup,
    },
  },
  setNamedQueryId(NamedQueryId): {
    Properties+::: {
      NamedQueryId:
        if !std.isString(NamedQueryId) then (error 'NamedQueryId must be a string')
        else if std.isEmpty(NamedQueryId) then (error 'NamedQueryId must be not empty')
        else NamedQueryId,
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
