{
  new(
    Type,
    Content,
    RegistryName,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      Content:
        if !std.isString(Content) then (error 'Content must be a string')
        else if std.isEmpty(Content) then (error 'Content must be not empty')
        else Content,
      RegistryName:
        if !std.isString(RegistryName) then (error 'RegistryName must be a string')
        else if std.isEmpty(RegistryName) then (error 'RegistryName must be not empty')
        else RegistryName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EventSchemas::Schema',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setSchemaVersion(SchemaVersion): {
    Properties+::: {
      SchemaVersion:
        if !std.isString(SchemaVersion) then (error 'SchemaVersion must be a string')
        else if std.isEmpty(SchemaVersion) then (error 'SchemaVersion must be not empty')
        else SchemaVersion,
    },
  },
  setSchemaArn(SchemaArn): {
    Properties+::: {
      SchemaArn:
        if !std.isString(SchemaArn) then (error 'SchemaArn must be a string')
        else if std.isEmpty(SchemaArn) then (error 'SchemaArn must be not empty')
        else SchemaArn,
    },
  },
  setSchemaName(SchemaName): {
    Properties+::: {
      SchemaName:
        if !std.isString(SchemaName) then (error 'SchemaName must be a string')
        else if std.isEmpty(SchemaName) then (error 'SchemaName must be not empty')
        else SchemaName,
    },
  },
  setLastModified(LastModified): {
    Properties+::: {
      LastModified:
        if !std.isString(LastModified) then (error 'LastModified must be a string')
        else if std.isEmpty(LastModified) then (error 'LastModified must be not empty')
        else LastModified,
    },
  },
  setVersionCreatedDate(VersionCreatedDate): {
    Properties+::: {
      VersionCreatedDate:
        if !std.isString(VersionCreatedDate) then (error 'VersionCreatedDate must be a string')
        else if std.isEmpty(VersionCreatedDate) then (error 'VersionCreatedDate must be not empty')
        else VersionCreatedDate,
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
