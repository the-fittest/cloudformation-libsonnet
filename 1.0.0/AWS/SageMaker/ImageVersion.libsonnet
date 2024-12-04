{
  // AWS SageMaker ImageVersion
  ImageVersion: {
    new(
      ImageName,
      BaseImage,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ImageName) : 'ImageName must be a string',
        ImageName: ImageName,
        assert std.isString(BaseImage) : 'BaseImage must be a string',
        BaseImage: BaseImage,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::ImageVersion',
    },
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: {
        ImageArn: ImageArn,
      },
    },
    withImageVersionArn(ImageVersionArn): {
      assert std.isString(ImageVersionArn) : 'ImageVersionArn must be a string',
      Properties+::: {
        ImageVersionArn: ImageVersionArn,
      },
    },
    withContainerImage(ContainerImage): {
      assert std.isString(ContainerImage) : 'ContainerImage must be a string',
      Properties+::: {
        ContainerImage: ContainerImage,
      },
    },
    withVersion(Version): {
      assert std.isNumber(Version) : 'Version must be a number',
      Properties+::: {
        Version: Version,
      },
    },
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: {
        Alias: Alias,
      },
    },
    withAliases(Aliases): {
      Properties+::: {
        Aliases: (if std.isArray(Aliases) then Aliases else [Aliases]),
      },
    },
    withAliasesMixin(Aliases): {
      Properties+::: {
        Aliases+: (if std.isArray(Aliases) then Aliases else [Aliases]),
      },
    },
    withVendorGuidance(VendorGuidance): {
      assert std.isString(VendorGuidance) : 'VendorGuidance must be a string',
      Properties+::: {
        VendorGuidance: VendorGuidance,
      },
    },
    withJobType(JobType): {
      assert std.isString(JobType) : 'JobType must be a string',
      Properties+::: {
        JobType: JobType,
      },
    },
    withMLFramework(MLFramework): {
      assert std.isString(MLFramework) : 'MLFramework must be a string',
      Properties+::: {
        MLFramework: MLFramework,
      },
    },
    withProgrammingLang(ProgrammingLang): {
      assert std.isString(ProgrammingLang) : 'ProgrammingLang must be a string',
      Properties+::: {
        ProgrammingLang: ProgrammingLang,
      },
    },
    withProcessor(Processor): {
      assert std.isString(Processor) : 'Processor must be a string',
      Properties+::: {
        Processor: Processor,
      },
    },
    withHorovod(Horovod): {
      assert std.isBoolean(Horovod) : 'Horovod must be a boolean',
      Properties+::: {
        Horovod: Horovod,
      },
    },
    withReleaseNotes(ReleaseNotes): {
      assert std.isString(ReleaseNotes) : 'ReleaseNotes must be a string',
      Properties+::: {
        ReleaseNotes: ReleaseNotes,
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
