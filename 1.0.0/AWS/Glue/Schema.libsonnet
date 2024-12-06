{
  new(
    Name,
    DataFormat,
    Compatibility,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      DataFormat:
        if !std.isString(DataFormat) then (error 'DataFormat must be a string')
        else if std.isEmpty(DataFormat) then (error 'DataFormat must be not empty')
        else if DataFormat != 'AVRO' && DataFormat != 'JSON' && DataFormat != 'PROTOBUF' then (error "DataFormat should be 'AVRO' or 'JSON' or 'PROTOBUF'")
        else DataFormat,
      Compatibility:
        if !std.isString(Compatibility) then (error 'Compatibility must be a string')
        else if std.isEmpty(Compatibility) then (error 'Compatibility must be not empty')
        else if Compatibility != 'NONE' && Compatibility != 'DISABLED' && Compatibility != 'BACKWARD' && Compatibility != 'BACKWARD_ALL' && Compatibility != 'FORWARD' && Compatibility != 'FORWARD_ALL' && Compatibility != 'FULL' && Compatibility != 'FULL_ALL' then (error "Compatibility should be 'NONE' or 'DISABLED' or 'BACKWARD' or 'BACKWARD_ALL' or 'FORWARD' or 'FORWARD_ALL' or 'FULL' or 'FULL_ALL'")
        else Compatibility,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::Schema',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setRegistry(Registry): {
    Properties+::: {
      Registry:
        if !std.isObject(Registry) then (error 'Registry must be an object')
        else Registry,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setSchemaDefinition(SchemaDefinition): {
    Properties+::: {
      SchemaDefinition:
        if !std.isString(SchemaDefinition) then (error 'SchemaDefinition must be a string')
        else if std.isEmpty(SchemaDefinition) then (error 'SchemaDefinition must be not empty')
        else if std.length(SchemaDefinition) < 1 then error ('SchemaDefinition should have at least 1 characters')
        else if std.length(SchemaDefinition) > 170000 then error ('SchemaDefinition should have not more than 170000 characters')
        else SchemaDefinition,
    },
  },
  setCheckpointVersion(CheckpointVersion): {
    Properties+::: {
      CheckpointVersion:
        if !std.isObject(CheckpointVersion) then (error 'CheckpointVersion must be an object')
        else CheckpointVersion,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 10 then error ('Tags cannot have more than 10 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setInitialSchemaVersionId(InitialSchemaVersionId): {
    Properties+::: {
      InitialSchemaVersionId:
        if !std.isString(InitialSchemaVersionId) then (error 'InitialSchemaVersionId must be a string')
        else if std.isEmpty(InitialSchemaVersionId) then (error 'InitialSchemaVersionId must be not empty')
        else InitialSchemaVersionId,
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
