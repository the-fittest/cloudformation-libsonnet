{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3::Bucket',
  },
  withAccelerateConfiguration(AccelerateConfiguration): {
    assert std.isObject(AccelerateConfiguration) : 'AccelerateConfiguration must be a object',
    Properties+::: {
      AccelerateConfiguration: AccelerateConfiguration,
    },
  },
  withAccessControl(AccessControl): {
    assert std.isString(AccessControl) : 'AccessControl must be a string',
    Properties+::: {
      AccessControl: AccessControl,
    },
  },
  withAnalyticsConfigurations(AnalyticsConfigurations): {
    Properties+::: {
      AnalyticsConfigurations: (if std.isArray(AnalyticsConfigurations) then AnalyticsConfigurations else [AnalyticsConfigurations]),
    },
  },
  withAnalyticsConfigurationsMixin(AnalyticsConfigurations): {
    Properties+::: {
      AnalyticsConfigurations+: (if std.isArray(AnalyticsConfigurations) then AnalyticsConfigurations else [AnalyticsConfigurations]),
    },
  },
  withBucketEncryption(BucketEncryption): {
    assert std.isObject(BucketEncryption) : 'BucketEncryption must be a object',
    Properties+::: {
      BucketEncryption: BucketEncryption,
    },
  },
  withBucketName(BucketName): {
    assert std.isString(BucketName) : 'BucketName must be a string',
    Properties+::: {
      BucketName: BucketName,
    },
  },
  withCorsConfiguration(CorsConfiguration): {
    assert std.isObject(CorsConfiguration) : 'CorsConfiguration must be a object',
    Properties+::: {
      CorsConfiguration: CorsConfiguration,
    },
  },
  withIntelligentTieringConfigurations(IntelligentTieringConfigurations): {
    Properties+::: {
      IntelligentTieringConfigurations: (if std.isArray(IntelligentTieringConfigurations) then IntelligentTieringConfigurations else [IntelligentTieringConfigurations]),
    },
  },
  withIntelligentTieringConfigurationsMixin(IntelligentTieringConfigurations): {
    Properties+::: {
      IntelligentTieringConfigurations+: (if std.isArray(IntelligentTieringConfigurations) then IntelligentTieringConfigurations else [IntelligentTieringConfigurations]),
    },
  },
  withInventoryConfigurations(InventoryConfigurations): {
    Properties+::: {
      InventoryConfigurations: (if std.isArray(InventoryConfigurations) then InventoryConfigurations else [InventoryConfigurations]),
    },
  },
  withInventoryConfigurationsMixin(InventoryConfigurations): {
    Properties+::: {
      InventoryConfigurations+: (if std.isArray(InventoryConfigurations) then InventoryConfigurations else [InventoryConfigurations]),
    },
  },
  withLifecycleConfiguration(LifecycleConfiguration): {
    assert std.isObject(LifecycleConfiguration) : 'LifecycleConfiguration must be a object',
    Properties+::: {
      LifecycleConfiguration: LifecycleConfiguration,
    },
  },
  withLoggingConfiguration(LoggingConfiguration): {
    assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
    Properties+::: {
      LoggingConfiguration: LoggingConfiguration,
    },
  },
  withMetricsConfigurations(MetricsConfigurations): {
    Properties+::: {
      MetricsConfigurations: (if std.isArray(MetricsConfigurations) then MetricsConfigurations else [MetricsConfigurations]),
    },
  },
  withMetricsConfigurationsMixin(MetricsConfigurations): {
    Properties+::: {
      MetricsConfigurations+: (if std.isArray(MetricsConfigurations) then MetricsConfigurations else [MetricsConfigurations]),
    },
  },
  withNotificationConfiguration(NotificationConfiguration): {
    assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
    Properties+::: {
      NotificationConfiguration: NotificationConfiguration,
    },
  },
  withObjectLockConfiguration(ObjectLockConfiguration): {
    assert std.isObject(ObjectLockConfiguration) : 'ObjectLockConfiguration must be a object',
    Properties+::: {
      ObjectLockConfiguration: ObjectLockConfiguration,
    },
  },
  withObjectLockEnabled(ObjectLockEnabled): {
    assert std.isBoolean(ObjectLockEnabled) : 'ObjectLockEnabled must be a boolean',
    Properties+::: {
      ObjectLockEnabled: ObjectLockEnabled,
    },
  },
  withOwnershipControls(OwnershipControls): {
    assert std.isObject(OwnershipControls) : 'OwnershipControls must be a object',
    Properties+::: {
      OwnershipControls: OwnershipControls,
    },
  },
  withPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
    assert std.isObject(PublicAccessBlockConfiguration) : 'PublicAccessBlockConfiguration must be a object',
    Properties+::: {
      PublicAccessBlockConfiguration: PublicAccessBlockConfiguration,
    },
  },
  withReplicationConfiguration(ReplicationConfiguration): {
    assert std.isObject(ReplicationConfiguration) : 'ReplicationConfiguration must be a object',
    Properties+::: {
      ReplicationConfiguration: ReplicationConfiguration,
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
  withVersioningConfiguration(VersioningConfiguration): {
    assert std.isObject(VersioningConfiguration) : 'VersioningConfiguration must be a object',
    Properties+::: {
      VersioningConfiguration: VersioningConfiguration,
    },
  },
  withWebsiteConfiguration(WebsiteConfiguration): {
    assert std.isObject(WebsiteConfiguration) : 'WebsiteConfiguration must be a object',
    Properties+::: {
      WebsiteConfiguration: WebsiteConfiguration,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDomainName(DomainName): {
    assert std.isString(DomainName) : 'DomainName must be a string',
    Properties+::: {
      DomainName: DomainName,
    },
  },
  withDualStackDomainName(DualStackDomainName): {
    assert std.isString(DualStackDomainName) : 'DualStackDomainName must be a string',
    Properties+::: {
      DualStackDomainName: DualStackDomainName,
    },
  },
  withRegionalDomainName(RegionalDomainName): {
    assert std.isString(RegionalDomainName) : 'RegionalDomainName must be a string',
    Properties+::: {
      RegionalDomainName: RegionalDomainName,
    },
  },
  withWebsiteURL(WebsiteURL): {
    assert std.isString(WebsiteURL) : 'WebsiteURL must be a string',
    Properties+::: {
      WebsiteURL: WebsiteURL,
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
