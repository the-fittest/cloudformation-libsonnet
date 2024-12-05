{
  new(
    Role,
    TransformParameters,
    InputRecordTables,
  ): {
    local base = self,
    Properties: {
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else Role,
      TransformParameters:
        if !std.isObject(TransformParameters) then (error 'TransformParameters must be an object')
        else if !std.objectHas(TransformParameters, 'TransformType') then (error ' have attribute TransformType')
        else TransformParameters,
      InputRecordTables:
        if !std.isObject(InputRecordTables) then (error 'InputRecordTables must be an object')
        else InputRecordTables,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::MLTransform',
  },
  setMaxRetries(MaxRetries): {
    Properties+::: {
      MaxRetries:
        if !std.isNumber(MaxRetries) then (error 'MaxRetries must be an number')
        else MaxRetries,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setTransformEncryption(TransformEncryption): {
    Properties+::: {
      TransformEncryption:
        if !std.isObject(TransformEncryption) then (error 'TransformEncryption must be an object')
        else TransformEncryption,
    },
  },
  setTimeout(Timeout): {
    Properties+::: {
      Timeout:
        if !std.isNumber(Timeout) then (error 'Timeout must be an number')
        else Timeout,
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
  setWorkerType(WorkerType): {
    Properties+::: {
      WorkerType:
        if !std.isString(WorkerType) then (error 'WorkerType must be a string')
        else if std.isEmpty(WorkerType) then (error 'WorkerType must be not empty')
        else WorkerType,
    },
  },
  setGlueVersion(GlueVersion): {
    Properties+::: {
      GlueVersion:
        if !std.isString(GlueVersion) then (error 'GlueVersion must be a string')
        else if std.isEmpty(GlueVersion) then (error 'GlueVersion must be not empty')
        else GlueVersion,
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
  setNumberOfWorkers(NumberOfWorkers): {
    Properties+::: {
      NumberOfWorkers:
        if !std.isNumber(NumberOfWorkers) then (error 'NumberOfWorkers must be an number')
        else NumberOfWorkers,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setMaxCapacity(MaxCapacity): {
    Properties+::: {
      MaxCapacity:
        if !std.isNumber(MaxCapacity) then (error 'MaxCapacity must be an number')
        else MaxCapacity,
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
