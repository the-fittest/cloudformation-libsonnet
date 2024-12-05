{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ImageBuilder::ContainerRecipe',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setComponents(Components): {
    Properties+::: {
      Components:
        if !std.isArray(Components) then (error 'Components must be an array')
        else Components,
    },
  },
  setComponentsMixin(Components): {
    Properties+::: {
      Components+: Components,
    },
  },
  setInstanceConfiguration(InstanceConfiguration): {
    Properties+::: {
      InstanceConfiguration:
        if !std.isObject(InstanceConfiguration) then (error 'InstanceConfiguration must be an object')
        else InstanceConfiguration,
    },
  },
  setDockerfileTemplateData(DockerfileTemplateData): {
    Properties+::: {
      DockerfileTemplateData:
        if !std.isString(DockerfileTemplateData) then (error 'DockerfileTemplateData must be a string')
        else if std.isEmpty(DockerfileTemplateData) then (error 'DockerfileTemplateData must be not empty')
        else DockerfileTemplateData,
    },
  },
  setDockerfileTemplateUri(DockerfileTemplateUri): {
    Properties+::: {
      DockerfileTemplateUri:
        if !std.isString(DockerfileTemplateUri) then (error 'DockerfileTemplateUri must be a string')
        else if std.isEmpty(DockerfileTemplateUri) then (error 'DockerfileTemplateUri must be not empty')
        else DockerfileTemplateUri,
    },
  },
  setPlatformOverride(PlatformOverride): {
    Properties+::: {
      PlatformOverride:
        if !std.isString(PlatformOverride) then (error 'PlatformOverride must be a string')
        else if std.isEmpty(PlatformOverride) then (error 'PlatformOverride must be not empty')
        else if PlatformOverride != 'Windows' && PlatformOverride != 'Linux' then (error "PlatformOverride should be 'Windows' or 'Linux'")
        else PlatformOverride,
    },
  },
  setContainerType(ContainerType): {
    Properties+::: {
      ContainerType:
        if !std.isString(ContainerType) then (error 'ContainerType must be a string')
        else if std.isEmpty(ContainerType) then (error 'ContainerType must be not empty')
        else if ContainerType != 'DOCKER' then (error "ContainerType should be 'DOCKER'")
        else ContainerType,
    },
  },
  setImageOsVersionOverride(ImageOsVersionOverride): {
    Properties+::: {
      ImageOsVersionOverride:
        if !std.isString(ImageOsVersionOverride) then (error 'ImageOsVersionOverride must be a string')
        else if std.isEmpty(ImageOsVersionOverride) then (error 'ImageOsVersionOverride must be not empty')
        else ImageOsVersionOverride,
    },
  },
  setTargetRepository(TargetRepository): {
    Properties+::: {
      TargetRepository:
        if !std.isObject(TargetRepository) then (error 'TargetRepository must be an object')
        else TargetRepository,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setParentImage(ParentImage): {
    Properties+::: {
      ParentImage:
        if !std.isString(ParentImage) then (error 'ParentImage must be a string')
        else if std.isEmpty(ParentImage) then (error 'ParentImage must be not empty')
        else ParentImage,
    },
  },
  setWorkingDirectory(WorkingDirectory): {
    Properties+::: {
      WorkingDirectory:
        if !std.isString(WorkingDirectory) then (error 'WorkingDirectory must be a string')
        else if std.isEmpty(WorkingDirectory) then (error 'WorkingDirectory must be not empty')
        else WorkingDirectory,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
