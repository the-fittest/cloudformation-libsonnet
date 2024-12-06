{
  new(
    ConnectionString,
  ): {
    local base = self,
    Properties: {
      ConnectionString:
        if !std.isString(ConnectionString) then (error 'ConnectionString must be a string')
        else if std.isEmpty(ConnectionString) then (error 'ConnectionString must be not empty')
        else if std.length(ConnectionString) < 1 then error ('ConnectionString should have at least 1 characters')
        else if std.length(ConnectionString) > 255 then error ('ConnectionString should have not more than 255 characters')
        else ConnectionString,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpaces::ConnectionAlias',
  },
  setAssociations(Associations): {
    Properties+::: {
      Associations:
        if !std.isArray(Associations) then (error 'Associations must be an array')
        else Associations,
    },
  },
  pushAssociations(Associations): {
    Properties+::: {
      Associations+: Associations,
    },
  },
  setAliasId(AliasId): {
    Properties+::: {
      AliasId:
        if !std.isString(AliasId) then (error 'AliasId must be a string')
        else if std.isEmpty(AliasId) then (error 'AliasId must be not empty')
        else if std.length(AliasId) < 13 then error ('AliasId should have at least 13 characters')
        else if std.length(AliasId) > 68 then error ('AliasId should have not more than 68 characters')
        else AliasId,
    },
  },
  setConnectionAliasState(ConnectionAliasState): {
    Properties+::: {
      ConnectionAliasState:
        if !std.isString(ConnectionAliasState) then (error 'ConnectionAliasState must be a string')
        else if std.isEmpty(ConnectionAliasState) then (error 'ConnectionAliasState must be not empty')
        else if ConnectionAliasState != 'CREATING' && ConnectionAliasState != 'CREATED' && ConnectionAliasState != 'DELETING' then (error "ConnectionAliasState should be 'CREATING' or 'CREATED' or 'DELETING'")
        else ConnectionAliasState,
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
