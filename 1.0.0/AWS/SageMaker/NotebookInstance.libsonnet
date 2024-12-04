{
  // AWS SageMaker NotebookInstance
  NotebookInstance: {
    new(
      InstanceType,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::NotebookInstance',
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withVolumeSizeInGB(VolumeSizeInGB): {
      assert std.isNumber(VolumeSizeInGB) : 'VolumeSizeInGB must be a number',
      Properties+::: {
        VolumeSizeInGB: VolumeSizeInGB,
      },
    },
    withAdditionalCodeRepositories(AdditionalCodeRepositories): {
      Properties+::: {
        AdditionalCodeRepositories: (if std.isArray(AdditionalCodeRepositories) then AdditionalCodeRepositories else [AdditionalCodeRepositories]),
      },
    },
    withAdditionalCodeRepositoriesMixin(AdditionalCodeRepositories): {
      Properties+::: {
        AdditionalCodeRepositories+: (if std.isArray(AdditionalCodeRepositories) then AdditionalCodeRepositories else [AdditionalCodeRepositories]),
      },
    },
    withDefaultCodeRepository(DefaultCodeRepository): {
      assert std.isString(DefaultCodeRepository) : 'DefaultCodeRepository must be a string',
      Properties+::: {
        DefaultCodeRepository: DefaultCodeRepository,
      },
    },
    withDirectInternetAccess(DirectInternetAccess): {
      assert std.isString(DirectInternetAccess) : 'DirectInternetAccess must be a string',
      Properties+::: {
        DirectInternetAccess: DirectInternetAccess,
      },
    },
    withPlatformIdentifier(PlatformIdentifier): {
      assert std.isString(PlatformIdentifier) : 'PlatformIdentifier must be a string',
      Properties+::: {
        PlatformIdentifier: PlatformIdentifier,
      },
    },
    withAcceleratorTypes(AcceleratorTypes): {
      Properties+::: {
        AcceleratorTypes: (if std.isArray(AcceleratorTypes) then AcceleratorTypes else [AcceleratorTypes]),
      },
    },
    withAcceleratorTypesMixin(AcceleratorTypes): {
      Properties+::: {
        AcceleratorTypes+: (if std.isArray(AcceleratorTypes) then AcceleratorTypes else [AcceleratorTypes]),
      },
    },
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: {
        SubnetId: SubnetId,
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withInstanceMetadataServiceConfiguration(InstanceMetadataServiceConfiguration): {
      assert std.isObject(InstanceMetadataServiceConfiguration) : 'InstanceMetadataServiceConfiguration must be a object',
      Properties+::: {
        InstanceMetadataServiceConfiguration: InstanceMetadataServiceConfiguration,
      },
    },
    withRootAccess(RootAccess): {
      assert std.isString(RootAccess) : 'RootAccess must be a string',
      Properties+::: {
        RootAccess: RootAccess,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withNotebookInstanceName(NotebookInstanceName): {
      assert std.isString(NotebookInstanceName) : 'NotebookInstanceName must be a string',
      Properties+::: {
        NotebookInstanceName: NotebookInstanceName,
      },
    },
    withLifecycleConfigName(LifecycleConfigName): {
      assert std.isString(LifecycleConfigName) : 'LifecycleConfigName must be a string',
      Properties+::: {
        LifecycleConfigName: LifecycleConfigName,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
