{
  new(
    Code,
    Role,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Code) : 'Code must be an object',
      Code: Code,
      assert std.isString(Role) : 'Role must be a string',
      Role: Role,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Function',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withTracingConfig(TracingConfig): {
    assert std.isObject(TracingConfig) : 'TracingConfig must be a object',
    Properties+::: {
      TracingConfig: TracingConfig,
    },
  },
  withVpcConfig(VpcConfig): {
    assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
    Properties+::: {
      VpcConfig: VpcConfig,
    },
  },
  withRuntimeManagementConfig(RuntimeManagementConfig): {
    assert std.isObject(RuntimeManagementConfig) : 'RuntimeManagementConfig must be a object',
    Properties+::: {
      RuntimeManagementConfig: RuntimeManagementConfig,
    },
  },
  withReservedConcurrentExecutions(ReservedConcurrentExecutions): {
    assert std.isNumber(ReservedConcurrentExecutions) : 'ReservedConcurrentExecutions must be a number',
    Properties+::: {
      ReservedConcurrentExecutions: ReservedConcurrentExecutions,
    },
  },
  withSnapStart(SnapStart): {
    assert std.isObject(SnapStart) : 'SnapStart must be a object',
    Properties+::: {
      SnapStart: SnapStart,
    },
  },
  withFileSystemConfigs(FileSystemConfigs): {
    Properties+::: {
      FileSystemConfigs: (if std.isArray(FileSystemConfigs) then FileSystemConfigs else [FileSystemConfigs]),
    },
  },
  withFileSystemConfigsMixin(FileSystemConfigs): {
    Properties+::: {
      FileSystemConfigs+: (if std.isArray(FileSystemConfigs) then FileSystemConfigs else [FileSystemConfigs]),
    },
  },
  withFunctionName(FunctionName): {
    assert std.isString(FunctionName) : 'FunctionName must be a string',
    Properties+::: {
      FunctionName: FunctionName,
    },
  },
  withRuntime(Runtime): {
    assert std.isString(Runtime) : 'Runtime must be a string',
    Properties+::: {
      Runtime: Runtime,
    },
  },
  withKmsKeyArn(KmsKeyArn): {
    assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
    Properties+::: {
      KmsKeyArn: KmsKeyArn,
    },
  },
  withPackageType(PackageType): {
    assert std.isString(PackageType) : 'PackageType must be a string',
    assert PackageType == 'Image' || PackageType == 'Zip' : "PackageType should be 'Image' or 'Zip'",
    Properties+::: {
      PackageType: PackageType,
    },
  },
  withCodeSigningConfigArn(CodeSigningConfigArn): {
    assert std.isString(CodeSigningConfigArn) : 'CodeSigningConfigArn must be a string',
    Properties+::: {
      CodeSigningConfigArn: CodeSigningConfigArn,
    },
  },
  withLayers(Layers): {
    Properties+::: {
      Layers: (if std.isArray(Layers) then Layers else [Layers]),
    },
  },
  withLayersMixin(Layers): {
    Properties+::: {
      Layers+: (if std.isArray(Layers) then Layers else [Layers]),
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
  withImageConfig(ImageConfig): {
    assert std.isObject(ImageConfig) : 'ImageConfig must be a object',
    Properties+::: {
      ImageConfig: ImageConfig,
    },
  },
  withMemorySize(MemorySize): {
    assert std.isNumber(MemorySize) : 'MemorySize must be a number',
    Properties+::: {
      MemorySize: MemorySize,
    },
  },
  withDeadLetterConfig(DeadLetterConfig): {
    assert std.isObject(DeadLetterConfig) : 'DeadLetterConfig must be a object',
    Properties+::: {
      DeadLetterConfig: DeadLetterConfig,
    },
  },
  withTimeout(Timeout): {
    assert std.isNumber(Timeout) : 'Timeout must be a number',
    Properties+::: {
      Timeout: Timeout,
    },
  },
  withHandler(Handler): {
    assert std.isString(Handler) : 'Handler must be a string',
    Properties+::: {
      Handler: Handler,
    },
  },
  withSnapStartResponse(SnapStartResponse): {
    assert std.isObject(SnapStartResponse) : 'SnapStartResponse must be a object',
    Properties+::: {
      SnapStartResponse: SnapStartResponse,
    },
  },
  withLoggingConfig(LoggingConfig): {
    assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
    Properties+::: {
      LoggingConfig: LoggingConfig,
    },
  },
  withRecursiveLoop(RecursiveLoop): {
    assert std.isString(RecursiveLoop) : 'RecursiveLoop must be a string',
    assert RecursiveLoop == 'Allow' || RecursiveLoop == 'Terminate' : "RecursiveLoop should be 'Allow' or 'Terminate'",
    Properties+::: {
      RecursiveLoop: RecursiveLoop,
    },
  },
  withEnvironment(Environment): {
    assert std.isObject(Environment) : 'Environment must be a object',
    Properties+::: {
      Environment: Environment,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withEphemeralStorage(EphemeralStorage): {
    assert std.isObject(EphemeralStorage) : 'EphemeralStorage must be a object',
    Properties+::: {
      EphemeralStorage: EphemeralStorage,
    },
  },
  withArchitectures(Architectures): {
    Properties+::: {
      Architectures: (if std.isArray(Architectures) then Architectures else [Architectures]),
    },
  },
  withArchitecturesMixin(Architectures): {
    Properties+::: {
      Architectures+: (if std.isArray(Architectures) then Architectures else [Architectures]),
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
}
