{
  new(
    Code,
    Role,
  ): {
    local base = self,
    Properties: {
      Code:
        if !std.isObject(Code) then (error 'Code must be an object')
        else Code,
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else Role,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Function',
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
  setTracingConfig(TracingConfig): {
    Properties+::: {
      TracingConfig:
        if !std.isObject(TracingConfig) then (error 'TracingConfig must be an object')
        else TracingConfig,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else VpcConfig,
    },
  },
  setRuntimeManagementConfig(RuntimeManagementConfig): {
    Properties+::: {
      RuntimeManagementConfig:
        if !std.isObject(RuntimeManagementConfig) then (error 'RuntimeManagementConfig must be an object')
        else if !std.objectHas(RuntimeManagementConfig, 'UpdateRuntimeOn') then (error ' have attribute UpdateRuntimeOn')
        else RuntimeManagementConfig,
    },
  },
  setReservedConcurrentExecutions(ReservedConcurrentExecutions): {
    Properties+::: {
      ReservedConcurrentExecutions:
        if !std.isNumber(ReservedConcurrentExecutions) then (error 'ReservedConcurrentExecutions must be an number')
        else ReservedConcurrentExecutions,
    },
  },
  setSnapStart(SnapStart): {
    Properties+::: {
      SnapStart:
        if !std.isObject(SnapStart) then (error 'SnapStart must be an object')
        else if !std.objectHas(SnapStart, 'ApplyOn') then (error ' have attribute ApplyOn')
        else SnapStart,
    },
  },
  setFileSystemConfigs(FileSystemConfigs): {
    Properties+::: {
      FileSystemConfigs:
        if !std.isArray(FileSystemConfigs) then (error 'FileSystemConfigs must be an array')
        else if std.length(FileSystemConfigs) > 1 then error ('FileSystemConfigs cannot have more than 1 items')
        else FileSystemConfigs,
    },
  },
  setFileSystemConfigsMixin(FileSystemConfigs): {
    Properties+::: {
      FileSystemConfigs+: FileSystemConfigs,
    },
  },
  setFunctionName(FunctionName): {
    Properties+::: {
      FunctionName:
        if !std.isString(FunctionName) then (error 'FunctionName must be a string')
        else if std.isEmpty(FunctionName) then (error 'FunctionName must be not empty')
        else if std.length(FunctionName) < 1 then error ('FunctionName should have at least 1 characters')
        else FunctionName,
    },
  },
  setRuntime(Runtime): {
    Properties+::: {
      Runtime:
        if !std.isString(Runtime) then (error 'Runtime must be a string')
        else if std.isEmpty(Runtime) then (error 'Runtime must be not empty')
        else Runtime,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else KmsKeyArn,
    },
  },
  setPackageType(PackageType): {
    Properties+::: {
      PackageType:
        if !std.isString(PackageType) then (error 'PackageType must be a string')
        else if std.isEmpty(PackageType) then (error 'PackageType must be not empty')
        else if PackageType != 'Image' && PackageType != 'Zip' then (error "PackageType should be 'Image' or 'Zip'")
        else PackageType,
    },
  },
  setCodeSigningConfigArn(CodeSigningConfigArn): {
    Properties+::: {
      CodeSigningConfigArn:
        if !std.isString(CodeSigningConfigArn) then (error 'CodeSigningConfigArn must be a string')
        else if std.isEmpty(CodeSigningConfigArn) then (error 'CodeSigningConfigArn must be not empty')
        else CodeSigningConfigArn,
    },
  },
  setLayers(Layers): {
    Properties+::: {
      Layers:
        if !std.isArray(Layers) then (error 'Layers must be an array')
        else Layers,
    },
  },
  setLayersMixin(Layers): {
    Properties+::: {
      Layers+: Layers,
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
  setImageConfig(ImageConfig): {
    Properties+::: {
      ImageConfig:
        if !std.isObject(ImageConfig) then (error 'ImageConfig must be an object')
        else ImageConfig,
    },
  },
  setMemorySize(MemorySize): {
    Properties+::: {
      MemorySize:
        if !std.isNumber(MemorySize) then (error 'MemorySize must be an number')
        else MemorySize,
    },
  },
  setDeadLetterConfig(DeadLetterConfig): {
    Properties+::: {
      DeadLetterConfig:
        if !std.isObject(DeadLetterConfig) then (error 'DeadLetterConfig must be an object')
        else DeadLetterConfig,
    },
  },
  setTimeout(Timeout): {
    Properties+::: {
      Timeout:
        if !std.isNumber(Timeout) then (error 'Timeout must be an number')
        else if Timeout < 1 then error ('Timeout should be at least 1')
        else Timeout,
    },
  },
  setHandler(Handler): {
    Properties+::: {
      Handler:
        if !std.isString(Handler) then (error 'Handler must be a string')
        else if std.isEmpty(Handler) then (error 'Handler must be not empty')
        else if std.length(Handler) > 128 then error ('Handler should have not more than 128 characters')
        else Handler,
    },
  },
  setSnapStartResponse(SnapStartResponse): {
    Properties+::: {
      SnapStartResponse:
        if !std.isObject(SnapStartResponse) then (error 'SnapStartResponse must be an object')
        else SnapStartResponse,
    },
  },
  setLoggingConfig(LoggingConfig): {
    Properties+::: {
      LoggingConfig:
        if !std.isObject(LoggingConfig) then (error 'LoggingConfig must be an object')
        else LoggingConfig,
    },
  },
  setRecursiveLoop(RecursiveLoop): {
    Properties+::: {
      RecursiveLoop:
        if !std.isString(RecursiveLoop) then (error 'RecursiveLoop must be a string')
        else if std.isEmpty(RecursiveLoop) then (error 'RecursiveLoop must be not empty')
        else if RecursiveLoop != 'Allow' && RecursiveLoop != 'Terminate' then (error "RecursiveLoop should be 'Allow' or 'Terminate'")
        else RecursiveLoop,
    },
  },
  setEnvironment(Environment): {
    Properties+::: {
      Environment:
        if !std.isObject(Environment) then (error 'Environment must be an object')
        else Environment,
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
  setEphemeralStorage(EphemeralStorage): {
    Properties+::: {
      EphemeralStorage:
        if !std.isObject(EphemeralStorage) then (error 'EphemeralStorage must be an object')
        else if !std.objectHas(EphemeralStorage, 'Size') then (error ' have attribute Size')
        else EphemeralStorage,
    },
  },
  setArchitectures(Architectures): {
    Properties+::: {
      Architectures:
        if !std.isArray(Architectures) then (error 'Architectures must be an array')
        else if std.length(Architectures) < 1 then error ('Architectures cannot have less than 1 items')
        else if std.length(Architectures) > 1 then error ('Architectures cannot have more than 1 items')
        else Architectures,
    },
  },
  setArchitecturesMixin(Architectures): {
    Properties+::: {
      Architectures+: Architectures,
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
