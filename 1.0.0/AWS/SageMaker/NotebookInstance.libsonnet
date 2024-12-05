{
  new(
    InstanceType,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::NotebookInstance',
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setVolumeSizeInGB(VolumeSizeInGB): {
    Properties+::: {
      VolumeSizeInGB:
        if !std.isNumber(VolumeSizeInGB) then (error 'VolumeSizeInGB must be an number')
        else VolumeSizeInGB,
    },
  },
  setAdditionalCodeRepositories(AdditionalCodeRepositories): {
    Properties+::: {
      AdditionalCodeRepositories:
        if !std.isArray(AdditionalCodeRepositories) then (error 'AdditionalCodeRepositories must be an array')
        else AdditionalCodeRepositories,
    },
  },
  setAdditionalCodeRepositoriesMixin(AdditionalCodeRepositories): {
    Properties+::: {
      AdditionalCodeRepositories+: AdditionalCodeRepositories,
    },
  },
  setDefaultCodeRepository(DefaultCodeRepository): {
    Properties+::: {
      DefaultCodeRepository:
        if !std.isString(DefaultCodeRepository) then (error 'DefaultCodeRepository must be a string')
        else if std.isEmpty(DefaultCodeRepository) then (error 'DefaultCodeRepository must be not empty')
        else DefaultCodeRepository,
    },
  },
  setDirectInternetAccess(DirectInternetAccess): {
    Properties+::: {
      DirectInternetAccess:
        if !std.isString(DirectInternetAccess) then (error 'DirectInternetAccess must be a string')
        else if std.isEmpty(DirectInternetAccess) then (error 'DirectInternetAccess must be not empty')
        else DirectInternetAccess,
    },
  },
  setPlatformIdentifier(PlatformIdentifier): {
    Properties+::: {
      PlatformIdentifier:
        if !std.isString(PlatformIdentifier) then (error 'PlatformIdentifier must be a string')
        else if std.isEmpty(PlatformIdentifier) then (error 'PlatformIdentifier must be not empty')
        else PlatformIdentifier,
    },
  },
  setAcceleratorTypes(AcceleratorTypes): {
    Properties+::: {
      AcceleratorTypes:
        if !std.isArray(AcceleratorTypes) then (error 'AcceleratorTypes must be an array')
        else AcceleratorTypes,
    },
  },
  setAcceleratorTypesMixin(AcceleratorTypes): {
    Properties+::: {
      AcceleratorTypes+: AcceleratorTypes,
    },
  },
  setSubnetId(SubnetId): {
    Properties+::: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setInstanceMetadataServiceConfiguration(InstanceMetadataServiceConfiguration): {
    Properties+::: {
      InstanceMetadataServiceConfiguration:
        if !std.isObject(InstanceMetadataServiceConfiguration) then (error 'InstanceMetadataServiceConfiguration must be an object')
        else if !std.objectHas(InstanceMetadataServiceConfiguration, 'MinimumInstanceMetadataServiceVersion') then (error ' have attribute MinimumInstanceMetadataServiceVersion')
        else InstanceMetadataServiceConfiguration,
    },
  },
  setRootAccess(RootAccess): {
    Properties+::: {
      RootAccess:
        if !std.isString(RootAccess) then (error 'RootAccess must be a string')
        else if std.isEmpty(RootAccess) then (error 'RootAccess must be not empty')
        else RootAccess,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setNotebookInstanceName(NotebookInstanceName): {
    Properties+::: {
      NotebookInstanceName:
        if !std.isString(NotebookInstanceName) then (error 'NotebookInstanceName must be a string')
        else if std.isEmpty(NotebookInstanceName) then (error 'NotebookInstanceName must be not empty')
        else NotebookInstanceName,
    },
  },
  setLifecycleConfigName(LifecycleConfigName): {
    Properties+::: {
      LifecycleConfigName:
        if !std.isString(LifecycleConfigName) then (error 'LifecycleConfigName must be a string')
        else if std.isEmpty(LifecycleConfigName) then (error 'LifecycleConfigName must be not empty')
        else LifecycleConfigName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
