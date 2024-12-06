{
  new(
    Prefix,
    AppliedFor,
  ): {
    local base = self,
    Properties: {
      Prefix:
        if !std.isString(Prefix) then (error 'Prefix must be a string')
        else if std.isEmpty(Prefix) then (error 'Prefix must be not empty')
        else if std.length(Prefix) < 1 then error ('Prefix should have at least 1 characters')
        else if std.length(Prefix) > 256 then error ('Prefix should have not more than 256 characters')
        else Prefix,
      AppliedFor:
        if !std.isArray(AppliedFor) then (error 'AppliedFor must be an array')
        else AppliedFor,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ECR::RepositoryCreationTemplate',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
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
  setRepositoryPolicy(RepositoryPolicy): {
    Properties+::: {
      RepositoryPolicy:
        if !std.isString(RepositoryPolicy) then (error 'RepositoryPolicy must be a string')
        else if std.isEmpty(RepositoryPolicy) then (error 'RepositoryPolicy must be not empty')
        else RepositoryPolicy,
    },
  },
  setLifecyclePolicy(LifecyclePolicy): {
    Properties+::: {
      LifecyclePolicy:
        if !std.isString(LifecyclePolicy) then (error 'LifecyclePolicy must be a string')
        else if std.isEmpty(LifecyclePolicy) then (error 'LifecyclePolicy must be not empty')
        else if std.length(LifecyclePolicy) < 100 then error ('LifecyclePolicy should have at least 100 characters')
        else if std.length(LifecyclePolicy) > 30720 then error ('LifecyclePolicy should have not more than 30720 characters')
        else LifecyclePolicy,
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
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isArray(ResourceTags) then (error 'ResourceTags must be an array')
        else if std.length(ResourceTags) > 50 then error ('ResourceTags cannot have more than 50 items')
        else ResourceTags,
    },
  },
  pushResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags+: ResourceTags,
    },
  },
  setCustomRoleArn(CustomRoleArn): {
    Properties+::: {
      CustomRoleArn:
        if !std.isString(CustomRoleArn) then (error 'CustomRoleArn must be a string')
        else if std.isEmpty(CustomRoleArn) then (error 'CustomRoleArn must be not empty')
        else if std.length(CustomRoleArn) > 2048 then error ('CustomRoleArn should have not more than 2048 characters')
        else CustomRoleArn,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
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
