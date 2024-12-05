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
    Type: 'AWS::Omics::Workflow',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 128 then error ('Arn should have not more than 128 characters')
        else Arn,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setDefinitionUri(DefinitionUri): {
    Properties+::: {
      DefinitionUri:
        if !std.isString(DefinitionUri) then (error 'DefinitionUri must be a string')
        else if std.isEmpty(DefinitionUri) then (error 'DefinitionUri must be not empty')
        else if std.length(DefinitionUri) < 1 then error ('DefinitionUri should have at least 1 characters')
        else if std.length(DefinitionUri) > 256 then error ('DefinitionUri should have not more than 256 characters')
        else DefinitionUri,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setEngine(Engine): {
    Properties+::: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else if Engine != 'WDL' && Engine != 'NEXTFLOW' && Engine != 'CWL' then (error "Engine should be 'WDL' or 'NEXTFLOW' or 'CWL'")
        else if std.length(Engine) < 1 then error ('Engine should have at least 1 characters')
        else if std.length(Engine) > 64 then error ('Engine should have not more than 64 characters')
        else Engine,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 18 then error ('Id should have not more than 18 characters')
        else Id,
    },
  },
  setMain(Main): {
    Properties+::: {
      Main:
        if !std.isString(Main) then (error 'Main must be a string')
        else if std.isEmpty(Main) then (error 'Main must be not empty')
        else if std.length(Main) < 1 then error ('Main should have at least 1 characters')
        else if std.length(Main) > 128 then error ('Main should have not more than 128 characters')
        else Main,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setParameterTemplate(ParameterTemplate): {
    Properties+::: {
      ParameterTemplate:
        if !std.isObject(ParameterTemplate) then (error 'ParameterTemplate must be an object')
        else ParameterTemplate,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'ACTIVE' && Status != 'UPDATING' && Status != 'DELETED' && Status != 'FAILED' then (error "Status should be 'CREATING' or 'ACTIVE' or 'UPDATING' or 'DELETED' or 'FAILED'")
        else if std.length(Status) < 1 then error ('Status should have at least 1 characters')
        else if std.length(Status) > 64 then error ('Status should have not more than 64 characters')
        else Status,
    },
  },
  setAccelerators(Accelerators): {
    Properties+::: {
      Accelerators:
        if !std.isString(Accelerators) then (error 'Accelerators must be a string')
        else if std.isEmpty(Accelerators) then (error 'Accelerators must be not empty')
        else if Accelerators != 'GPU' then (error "Accelerators should be 'GPU'")
        else if std.length(Accelerators) < 1 then error ('Accelerators should have at least 1 characters')
        else if std.length(Accelerators) > 64 then error ('Accelerators should have not more than 64 characters')
        else Accelerators,
    },
  },
  setStorageCapacity(StorageCapacity): {
    Properties+::: {
      StorageCapacity:
        if !std.isNumber(StorageCapacity) then (error 'StorageCapacity must be an number')
        else if StorageCapacity > 100000 then error ('StorageCapacity should be not more than 100000')
        else StorageCapacity,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'PRIVATE' then (error "Type should be 'PRIVATE'")
        else if std.length(Type) < 1 then error ('Type should have at least 1 characters')
        else if std.length(Type) > 64 then error ('Type should have not more than 64 characters')
        else Type,
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
