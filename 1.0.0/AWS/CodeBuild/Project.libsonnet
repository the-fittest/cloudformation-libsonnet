{
  new(
    Artifacts,
    ServiceRole,
    Environment,
    Source,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Artifacts) : 'Artifacts must be an object',
      Artifacts: Artifacts,
      assert std.isString(ServiceRole) : 'ServiceRole must be a string',
      ServiceRole: ServiceRole,
      assert std.isObject(Environment) : 'Environment must be an object',
      Environment: Environment,
      assert std.isObject(Source) : 'Source must be an object',
      Source: Source,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeBuild::Project',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withResourceAccessRole(ResourceAccessRole): {
    assert std.isString(ResourceAccessRole) : 'ResourceAccessRole must be a string',
    Properties+::: {
      ResourceAccessRole: ResourceAccessRole,
    },
  },
  withVpcConfig(VpcConfig): {
    assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
    Properties+::: {
      VpcConfig: VpcConfig,
    },
  },
  withSecondarySources(SecondarySources): {
    Properties+::: {
      SecondarySources: (if std.isArray(SecondarySources) then SecondarySources else [SecondarySources]),
    },
  },
  withSecondarySourcesMixin(SecondarySources): {
    Properties+::: {
      SecondarySources+: (if std.isArray(SecondarySources) then SecondarySources else [SecondarySources]),
    },
  },
  withEncryptionKey(EncryptionKey): {
    assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
    Properties+::: {
      EncryptionKey: EncryptionKey,
    },
  },
  withSecondaryArtifacts(SecondaryArtifacts): {
    Properties+::: {
      SecondaryArtifacts: (if std.isArray(SecondaryArtifacts) then SecondaryArtifacts else [SecondaryArtifacts]),
    },
  },
  withSecondaryArtifactsMixin(SecondaryArtifacts): {
    Properties+::: {
      SecondaryArtifacts+: (if std.isArray(SecondaryArtifacts) then SecondaryArtifacts else [SecondaryArtifacts]),
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withLogsConfig(LogsConfig): {
    assert std.isObject(LogsConfig) : 'LogsConfig must be a object',
    Properties+::: {
      LogsConfig: LogsConfig,
    },
  },
  withQueuedTimeoutInMinutes(QueuedTimeoutInMinutes): {
    assert std.isNumber(QueuedTimeoutInMinutes) : 'QueuedTimeoutInMinutes must be a number',
    Properties+::: {
      QueuedTimeoutInMinutes: QueuedTimeoutInMinutes,
    },
  },
  withSecondarySourceVersions(SecondarySourceVersions): {
    Properties+::: {
      SecondarySourceVersions: (if std.isArray(SecondarySourceVersions) then SecondarySourceVersions else [SecondarySourceVersions]),
    },
  },
  withSecondarySourceVersionsMixin(SecondarySourceVersions): {
    Properties+::: {
      SecondarySourceVersions+: (if std.isArray(SecondarySourceVersions) then SecondarySourceVersions else [SecondarySourceVersions]),
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
  withAutoRetryLimit(AutoRetryLimit): {
    assert std.isNumber(AutoRetryLimit) : 'AutoRetryLimit must be a number',
    Properties+::: {
      AutoRetryLimit: AutoRetryLimit,
    },
  },
  withSourceVersion(SourceVersion): {
    assert std.isString(SourceVersion) : 'SourceVersion must be a string',
    Properties+::: {
      SourceVersion: SourceVersion,
    },
  },
  withTriggers(Triggers): {
    assert std.isObject(Triggers) : 'Triggers must be a object',
    Properties+::: {
      Triggers: Triggers,
    },
  },
  withBadgeEnabled(BadgeEnabled): {
    assert std.isBoolean(BadgeEnabled) : 'BadgeEnabled must be a boolean',
    Properties+::: {
      BadgeEnabled: BadgeEnabled,
    },
  },
  withFileSystemLocations(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations: (if std.isArray(FileSystemLocations) then FileSystemLocations else [FileSystemLocations]),
    },
  },
  withFileSystemLocationsMixin(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations+: (if std.isArray(FileSystemLocations) then FileSystemLocations else [FileSystemLocations]),
    },
  },
  withConcurrentBuildLimit(ConcurrentBuildLimit): {
    assert std.isNumber(ConcurrentBuildLimit) : 'ConcurrentBuildLimit must be a number',
    Properties+::: {
      ConcurrentBuildLimit: ConcurrentBuildLimit,
    },
  },
  withVisibility(Visibility): {
    assert std.isString(Visibility) : 'Visibility must be a string',
    Properties+::: {
      Visibility: Visibility,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withBuildBatchConfig(BuildBatchConfig): {
    assert std.isObject(BuildBatchConfig) : 'BuildBatchConfig must be a object',
    Properties+::: {
      BuildBatchConfig: BuildBatchConfig,
    },
  },
  withTimeoutInMinutes(TimeoutInMinutes): {
    assert std.isNumber(TimeoutInMinutes) : 'TimeoutInMinutes must be a number',
    Properties+::: {
      TimeoutInMinutes: TimeoutInMinutes,
    },
  },
  withCache(Cache): {
    assert std.isObject(Cache) : 'Cache must be a object',
    Properties+::: {
      Cache: Cache,
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
