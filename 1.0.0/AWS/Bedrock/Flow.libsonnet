{
  new(
    ExecutionRoleArn,
    Name,
  ): {
    local base = self,
    Properties: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else if std.length(ExecutionRoleArn) > 2048 then error ('ExecutionRoleArn should have not more than 2048 characters')
        else ExecutionRoleArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::Flow',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1011 then error ('Arn should have not more than 1011 characters')
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
  setDefinition(Definition): {
    Properties+::: {
      Definition:
        if !std.isObject(Definition) then (error 'Definition must be an object')
        else Definition,
    },
  },
  setDefinitionString(DefinitionString): {
    Properties+::: {
      DefinitionString:
        if !std.isString(DefinitionString) then (error 'DefinitionString must be a string')
        else if std.isEmpty(DefinitionString) then (error 'DefinitionString must be not empty')
        else if std.length(DefinitionString) > 512000 then error ('DefinitionString should have not more than 512000 characters')
        else DefinitionString,
    },
  },
  setDefinitionS3Location(DefinitionS3Location): {
    Properties+::: {
      DefinitionS3Location:
        if !std.isObject(DefinitionS3Location) then (error 'DefinitionS3Location must be an object')
        else if !std.objectHas(DefinitionS3Location, 'Bucket') then (error ' have attribute Bucket')
        else if !std.objectHas(DefinitionS3Location, 'Key') then (error ' have attribute Key')
        else DefinitionS3Location,
    },
  },
  setDefinitionSubstitutions(DefinitionSubstitutions): {
    Properties+::: {
      DefinitionSubstitutions:
        if !std.isObject(DefinitionSubstitutions) then (error 'DefinitionSubstitutions must be an object')
        else DefinitionSubstitutions,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'Failed' && Status != 'Prepared' && Status != 'Preparing' && Status != 'NotPrepared' then (error "Status should be 'Failed' or 'Prepared' or 'Preparing' or 'NotPrepared'")
        else Status,
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
  setValidations(Validations): {
    Properties+::: {
      Validations:
        if !std.isArray(Validations) then (error 'Validations must be an array')
        else Validations,
    },
  },
  setValidationsMixin(Validations): {
    Properties+::: {
      Validations+: Validations,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else if std.length(Version) < 5 then error ('Version should have at least 5 characters')
        else if std.length(Version) > 5 then error ('Version should have not more than 5 characters')
        else Version,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setTestAliasTags(TestAliasTags): {
    Properties+::: {
      TestAliasTags:
        if !std.isObject(TestAliasTags) then (error 'TestAliasTags must be an object')
        else TestAliasTags,
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
