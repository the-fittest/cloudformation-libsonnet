{
  // AWS ImageBuilder ContainerRecipe
  ContainerRecipe: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ImageBuilder::ContainerRecipe',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: {
        Version: Version,
      },
    },
    withComponents(Components): {
      Properties+::: {
        Components: (if std.isArray(Components) then Components else [Components]),
      },
    },
    withComponentsMixin(Components): {
      Properties+::: {
        Components+: (if std.isArray(Components) then Components else [Components]),
      },
    },
    withInstanceConfiguration(InstanceConfiguration): {
      assert std.isObject(InstanceConfiguration) : 'InstanceConfiguration must be a object',
      Properties+::: {
        InstanceConfiguration: InstanceConfiguration,
      },
    },
    withDockerfileTemplateData(DockerfileTemplateData): {
      assert std.isString(DockerfileTemplateData) : 'DockerfileTemplateData must be a string',
      Properties+::: {
        DockerfileTemplateData: DockerfileTemplateData,
      },
    },
    withDockerfileTemplateUri(DockerfileTemplateUri): {
      assert std.isString(DockerfileTemplateUri) : 'DockerfileTemplateUri must be a string',
      Properties+::: {
        DockerfileTemplateUri: DockerfileTemplateUri,
      },
    },
    withPlatformOverride(PlatformOverride): {
      assert std.isString(PlatformOverride) : 'PlatformOverride must be a string',
      Properties+::: {
        PlatformOverride: PlatformOverride,
      },
    },
    withContainerType(ContainerType): {
      assert std.isString(ContainerType) : 'ContainerType must be a string',
      Properties+::: {
        ContainerType: ContainerType,
      },
    },
    withImageOsVersionOverride(ImageOsVersionOverride): {
      assert std.isString(ImageOsVersionOverride) : 'ImageOsVersionOverride must be a string',
      Properties+::: {
        ImageOsVersionOverride: ImageOsVersionOverride,
      },
    },
    withTargetRepository(TargetRepository): {
      assert std.isObject(TargetRepository) : 'TargetRepository must be a object',
      Properties+::: {
        TargetRepository: TargetRepository,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withParentImage(ParentImage): {
      assert std.isString(ParentImage) : 'ParentImage must be a string',
      Properties+::: {
        ParentImage: ParentImage,
      },
    },
    withWorkingDirectory(WorkingDirectory): {
      assert std.isString(WorkingDirectory) : 'WorkingDirectory must be a string',
      Properties+::: {
        WorkingDirectory: WorkingDirectory,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
