{
  new(
    Schema,
    SchemaDefinition,
  ): {
    local base = self,
    Properties: {
      Schema:
        if !std.isObject(Schema) then (error 'Schema must be an object')
        else Schema,
      SchemaDefinition:
        if !std.isString(SchemaDefinition) then (error 'SchemaDefinition must be a string')
        else if std.isEmpty(SchemaDefinition) then (error 'SchemaDefinition must be not empty')
        else if std.length(SchemaDefinition) < 1 then error ('SchemaDefinition should have at least 1 characters')
        else if std.length(SchemaDefinition) > 170000 then error ('SchemaDefinition should have not more than 170000 characters')
        else SchemaDefinition,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::SchemaVersion',
  },
  setVersionId(VersionId): {
    Properties+::: {
      VersionId:
        if !std.isString(VersionId) then (error 'VersionId must be a string')
        else if std.isEmpty(VersionId) then (error 'VersionId must be not empty')
        else VersionId,
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
