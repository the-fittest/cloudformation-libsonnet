{
  new(
    ModuleName,
    ModulePackage,
  ): {
    local base = self,
    Properties: {
      ModuleName:
        if !std.isString(ModuleName) then (error 'ModuleName must be a string')
        else if std.isEmpty(ModuleName) then (error 'ModuleName must be not empty')
        else ModuleName,
      ModulePackage:
        if !std.isString(ModulePackage) then (error 'ModulePackage must be a string')
        else if std.isEmpty(ModulePackage) then (error 'ModulePackage must be not empty')
        else ModulePackage,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::ModuleVersion',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setDocumentationUrl(DocumentationUrl): {
    Properties+::: {
      DocumentationUrl:
        if !std.isString(DocumentationUrl) then (error 'DocumentationUrl must be a string')
        else if std.isEmpty(DocumentationUrl) then (error 'DocumentationUrl must be not empty')
        else if std.length(DocumentationUrl) > 4096 then error ('DocumentationUrl should have not more than 4096 characters')
        else DocumentationUrl,
    },
  },
  setIsDefaultVersion(IsDefaultVersion): {
    Properties+::: {
      IsDefaultVersion:
        if !std.isBoolean(IsDefaultVersion) then (error 'IsDefaultVersion must be a boolean') else IsDefaultVersion,
    },
  },
  setSchema(Schema): {
    Properties+::: {
      Schema:
        if !std.isString(Schema) then (error 'Schema must be a string')
        else if std.isEmpty(Schema) then (error 'Schema must be not empty')
        else if std.length(Schema) < 1 then error ('Schema should have at least 1 characters')
        else if std.length(Schema) > 16777216 then error ('Schema should have not more than 16777216 characters')
        else Schema,
    },
  },
  setTimeCreated(TimeCreated): {
    Properties+::: {
      TimeCreated:
        if !std.isString(TimeCreated) then (error 'TimeCreated must be a string')
        else if std.isEmpty(TimeCreated) then (error 'TimeCreated must be not empty')
        else TimeCreated,
    },
  },
  setVersionId(VersionId): {
    Properties+::: {
      VersionId:
        if !std.isString(VersionId) then (error 'VersionId must be a string')
        else if std.isEmpty(VersionId) then (error 'VersionId must be not empty')
        else VersionId,
    },
  },
  setVisibility(Visibility): {
    Properties+::: {
      Visibility:
        if !std.isString(Visibility) then (error 'Visibility must be a string')
        else if std.isEmpty(Visibility) then (error 'Visibility must be not empty')
        else if Visibility != 'PRIVATE' then (error "Visibility should be 'PRIVATE'")
        else Visibility,
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
