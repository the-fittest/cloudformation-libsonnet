{
  new(
    SchemaVersionId,
    Key,
    Value,
  ): {
    local base = self,
    Properties: {
      SchemaVersionId:
        if !std.isString(SchemaVersionId) then (error 'SchemaVersionId must be a string')
        else if std.isEmpty(SchemaVersionId) then (error 'SchemaVersionId must be not empty')
        else SchemaVersionId,
      Key:
        if !std.isString(Key) then (error 'Key must be a string')
        else if std.isEmpty(Key) then (error 'Key must be not empty')
        else if std.length(Key) < 1 then error ('Key should have at least 1 characters')
        else if std.length(Key) > 128 then error ('Key should have not more than 128 characters')
        else Key,
      Value:
        if !std.isString(Value) then (error 'Value must be a string')
        else if std.isEmpty(Value) then (error 'Value must be not empty')
        else if std.length(Value) < 1 then error ('Value should have at least 1 characters')
        else if std.length(Value) > 256 then error ('Value should have not more than 256 characters')
        else Value,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::SchemaVersionMetadata',
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
