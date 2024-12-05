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
    Type: 'AWS::Proton::ServiceTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 200 then error ('Arn should have not more than 200 characters')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 100 then error ('DisplayName should have not more than 100 characters')
        else DisplayName,
    },
  },
  setEncryptionKey(EncryptionKey): {
    Properties+::: {
      EncryptionKey:
        if !std.isString(EncryptionKey) then (error 'EncryptionKey must be a string')
        else if std.isEmpty(EncryptionKey) then (error 'EncryptionKey must be not empty')
        else if std.length(EncryptionKey) < 1 then error ('EncryptionKey should have at least 1 characters')
        else if std.length(EncryptionKey) > 200 then error ('EncryptionKey should have not more than 200 characters')
        else EncryptionKey,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
    },
  },
  setPipelineProvisioning(PipelineProvisioning): {
    Properties+::: {
      PipelineProvisioning:
        if !std.isString(PipelineProvisioning) then (error 'PipelineProvisioning must be a string')
        else if std.isEmpty(PipelineProvisioning) then (error 'PipelineProvisioning must be not empty')
        else if PipelineProvisioning != 'CUSTOMER_MANAGED' then (error "PipelineProvisioning should be 'CUSTOMER_MANAGED'")
        else PipelineProvisioning,
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
