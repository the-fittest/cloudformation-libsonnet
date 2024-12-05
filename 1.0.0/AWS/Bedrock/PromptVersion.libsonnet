{
  new(
    PromptArn,
  ): {
    local base = self,
    Properties: {
      PromptArn:
        if !std.isString(PromptArn) then (error 'PromptArn must be a string')
        else if std.isEmpty(PromptArn) then (error 'PromptArn must be not empty')
        else if std.length(PromptArn) < 1 then error ('PromptArn should have at least 1 characters')
        else if std.length(PromptArn) > 2048 then error ('PromptArn should have not more than 2048 characters')
        else PromptArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::PromptVersion',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
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
  setPromptId(PromptId): {
    Properties+::: {
      PromptId:
        if !std.isString(PromptId) then (error 'PromptId must be a string')
        else if std.isEmpty(PromptId) then (error 'PromptId must be not empty')
        else PromptId,
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
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else if std.length(Version) < 1 then error ('Version should have at least 1 characters')
        else if std.length(Version) > 5 then error ('Version should have not more than 5 characters')
        else Version,
    },
  },
  setVariants(Variants): {
    Properties+::: {
      Variants:
        if !std.isArray(Variants) then (error 'Variants must be an array')
        else if std.length(Variants) < 1 then error ('Variants cannot have less than 1 items')
        else if std.length(Variants) > 1 then error ('Variants cannot have more than 1 items')
        else Variants,
    },
  },
  setVariantsMixin(Variants): {
    Properties+::: {
      Variants+: Variants,
    },
  },
  setDefaultVariant(DefaultVariant): {
    Properties+::: {
      DefaultVariant:
        if !std.isString(DefaultVariant) then (error 'DefaultVariant must be a string')
        else if std.isEmpty(DefaultVariant) then (error 'DefaultVariant must be not empty')
        else DefaultVariant,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
    Properties+::: {
      CustomerEncryptionKeyArn:
        if !std.isString(CustomerEncryptionKeyArn) then (error 'CustomerEncryptionKeyArn must be a string')
        else if std.isEmpty(CustomerEncryptionKeyArn) then (error 'CustomerEncryptionKeyArn must be not empty')
        else if std.length(CustomerEncryptionKeyArn) < 1 then error ('CustomerEncryptionKeyArn should have at least 1 characters')
        else if std.length(CustomerEncryptionKeyArn) > 2048 then error ('CustomerEncryptionKeyArn should have not more than 2048 characters')
        else CustomerEncryptionKeyArn,
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
