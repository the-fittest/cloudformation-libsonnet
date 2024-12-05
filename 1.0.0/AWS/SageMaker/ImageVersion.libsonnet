{
  new(
    ImageName,
    BaseImage,
  ): {
    local base = self,
    Properties: {
      ImageName:
        if !std.isString(ImageName) then (error 'ImageName must be a string')
        else if std.isEmpty(ImageName) then (error 'ImageName must be not empty')
        else if std.length(ImageName) < 1 then error ('ImageName should have at least 1 characters')
        else if std.length(ImageName) > 63 then error ('ImageName should have not more than 63 characters')
        else ImageName,
      BaseImage:
        if !std.isString(BaseImage) then (error 'BaseImage must be a string')
        else if std.isEmpty(BaseImage) then (error 'BaseImage must be not empty')
        else if std.length(BaseImage) < 1 then error ('BaseImage should have at least 1 characters')
        else if std.length(BaseImage) > 255 then error ('BaseImage should have not more than 255 characters')
        else BaseImage,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::ImageVersion',
  },
  setImageArn(ImageArn): {
    Properties+::: {
      ImageArn:
        if !std.isString(ImageArn) then (error 'ImageArn must be a string')
        else if std.isEmpty(ImageArn) then (error 'ImageArn must be not empty')
        else if std.length(ImageArn) < 1 then error ('ImageArn should have at least 1 characters')
        else if std.length(ImageArn) > 256 then error ('ImageArn should have not more than 256 characters')
        else ImageArn,
    },
  },
  setImageVersionArn(ImageVersionArn): {
    Properties+::: {
      ImageVersionArn:
        if !std.isString(ImageVersionArn) then (error 'ImageVersionArn must be a string')
        else if std.isEmpty(ImageVersionArn) then (error 'ImageVersionArn must be not empty')
        else if std.length(ImageVersionArn) < 1 then error ('ImageVersionArn should have at least 1 characters')
        else if std.length(ImageVersionArn) > 256 then error ('ImageVersionArn should have not more than 256 characters')
        else ImageVersionArn,
    },
  },
  setContainerImage(ContainerImage): {
    Properties+::: {
      ContainerImage:
        if !std.isString(ContainerImage) then (error 'ContainerImage must be a string')
        else if std.isEmpty(ContainerImage) then (error 'ContainerImage must be not empty')
        else if std.length(ContainerImage) < 1 then error ('ContainerImage should have at least 1 characters')
        else if std.length(ContainerImage) > 255 then error ('ContainerImage should have not more than 255 characters')
        else ContainerImage,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isNumber(Version) then (error 'Version must be an number')
        else if Version < 1 then error ('Version should be at least 1')
        else Version,
    },
  },
  setAlias(Alias): {
    Properties+::: {
      Alias:
        if !std.isString(Alias) then (error 'Alias must be a string')
        else if std.isEmpty(Alias) then (error 'Alias must be not empty')
        else if std.length(Alias) < 1 then error ('Alias should have at least 1 characters')
        else if std.length(Alias) > 128 then error ('Alias should have not more than 128 characters')
        else Alias,
    },
  },
  setAliases(Aliases): {
    Properties+::: {
      Aliases:
        if !std.isArray(Aliases) then (error 'Aliases must be an array')
        else Aliases,
    },
  },
  setAliasesMixin(Aliases): {
    Properties+::: {
      Aliases+: Aliases,
    },
  },
  setVendorGuidance(VendorGuidance): {
    Properties+::: {
      VendorGuidance:
        if !std.isString(VendorGuidance) then (error 'VendorGuidance must be a string')
        else if std.isEmpty(VendorGuidance) then (error 'VendorGuidance must be not empty')
        else if VendorGuidance != 'NOT_PROVIDED' && VendorGuidance != 'STABLE' && VendorGuidance != 'TO_BE_ARCHIVED' && VendorGuidance != 'ARCHIVED' then (error "VendorGuidance should be 'NOT_PROVIDED' or 'STABLE' or 'TO_BE_ARCHIVED' or 'ARCHIVED'")
        else VendorGuidance,
    },
  },
  setJobType(JobType): {
    Properties+::: {
      JobType:
        if !std.isString(JobType) then (error 'JobType must be a string')
        else if std.isEmpty(JobType) then (error 'JobType must be not empty')
        else if JobType != 'TRAINING' && JobType != 'INFERENCE' && JobType != 'NOTEBOOK_KERNEL' then (error "JobType should be 'TRAINING' or 'INFERENCE' or 'NOTEBOOK_KERNEL'")
        else JobType,
    },
  },
  setMLFramework(MLFramework): {
    Properties+::: {
      MLFramework:
        if !std.isString(MLFramework) then (error 'MLFramework must be a string')
        else if std.isEmpty(MLFramework) then (error 'MLFramework must be not empty')
        else if std.length(MLFramework) < 1 then error ('MLFramework should have at least 1 characters')
        else if std.length(MLFramework) > 128 then error ('MLFramework should have not more than 128 characters')
        else MLFramework,
    },
  },
  setProgrammingLang(ProgrammingLang): {
    Properties+::: {
      ProgrammingLang:
        if !std.isString(ProgrammingLang) then (error 'ProgrammingLang must be a string')
        else if std.isEmpty(ProgrammingLang) then (error 'ProgrammingLang must be not empty')
        else if std.length(ProgrammingLang) < 1 then error ('ProgrammingLang should have at least 1 characters')
        else if std.length(ProgrammingLang) > 128 then error ('ProgrammingLang should have not more than 128 characters')
        else ProgrammingLang,
    },
  },
  setProcessor(Processor): {
    Properties+::: {
      Processor:
        if !std.isString(Processor) then (error 'Processor must be a string')
        else if std.isEmpty(Processor) then (error 'Processor must be not empty')
        else if Processor != 'CPU' && Processor != 'GPU' then (error "Processor should be 'CPU' or 'GPU'")
        else Processor,
    },
  },
  setHorovod(Horovod): {
    Properties+::: {
      Horovod:
        if !std.isBoolean(Horovod) then (error 'Horovod must be a boolean') else Horovod,
    },
  },
  setReleaseNotes(ReleaseNotes): {
    Properties+::: {
      ReleaseNotes:
        if !std.isString(ReleaseNotes) then (error 'ReleaseNotes must be a string')
        else if std.isEmpty(ReleaseNotes) then (error 'ReleaseNotes must be not empty')
        else if std.length(ReleaseNotes) < 1 then error ('ReleaseNotes should have at least 1 characters')
        else if std.length(ReleaseNotes) > 255 then error ('ReleaseNotes should have not more than 255 characters')
        else ReleaseNotes,
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
