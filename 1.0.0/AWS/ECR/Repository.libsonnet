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
    Type: 'AWS::ECR::Repository',
  },
  setEmptyOnDelete(EmptyOnDelete): {
    Properties+::: {
      EmptyOnDelete:
        if !std.isBoolean(EmptyOnDelete) then (error 'EmptyOnDelete must be a boolean') else EmptyOnDelete,
    },
  },
  setLifecyclePolicy(LifecyclePolicy): {
    Properties+::: {
      LifecyclePolicy:
        if !std.isObject(LifecyclePolicy) then (error 'LifecyclePolicy must be an object')
        else LifecyclePolicy,
    },
  },
  setRepositoryName(RepositoryName): {
    Properties+::: {
      RepositoryName:
        if !std.isString(RepositoryName) then (error 'RepositoryName must be a string')
        else if std.isEmpty(RepositoryName) then (error 'RepositoryName must be not empty')
        else if std.length(RepositoryName) < 2 then error ('RepositoryName should have at least 2 characters')
        else if std.length(RepositoryName) > 256 then error ('RepositoryName should have not more than 256 characters')
        else RepositoryName,
    },
  },
  setRepositoryPolicyText(RepositoryPolicyText): {
    Properties+::: {
      RepositoryPolicyText: RepositoryPolicyText,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setRepositoryUri(RepositoryUri): {
    Properties+::: {
      RepositoryUri:
        if !std.isString(RepositoryUri) then (error 'RepositoryUri must be a string')
        else if std.isEmpty(RepositoryUri) then (error 'RepositoryUri must be not empty')
        else RepositoryUri,
    },
  },
  setImageTagMutability(ImageTagMutability): {
    Properties+::: {
      ImageTagMutability:
        if !std.isString(ImageTagMutability) then (error 'ImageTagMutability must be a string')
        else if std.isEmpty(ImageTagMutability) then (error 'ImageTagMutability must be not empty')
        else if ImageTagMutability != 'MUTABLE' && ImageTagMutability != 'IMMUTABLE' then (error "ImageTagMutability should be 'MUTABLE' or 'IMMUTABLE'")
        else ImageTagMutability,
    },
  },
  setImageScanningConfiguration(ImageScanningConfiguration): {
    Properties+::: {
      ImageScanningConfiguration:
        if !std.isObject(ImageScanningConfiguration) then (error 'ImageScanningConfiguration must be an object')
        else ImageScanningConfiguration,
    },
  },
  setEncryptionConfiguration(EncryptionConfiguration): {
    Properties+::: {
      EncryptionConfiguration:
        if !std.isObject(EncryptionConfiguration) then (error 'EncryptionConfiguration must be an object')
        else if !std.objectHas(EncryptionConfiguration, 'EncryptionType') then (error ' have attribute EncryptionType')
        else EncryptionConfiguration,
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
