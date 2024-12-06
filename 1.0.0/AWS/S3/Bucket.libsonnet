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
    Type: 'AWS::S3::Bucket',
  },
  setAccelerateConfiguration(AccelerateConfiguration): {
    Properties+::: {
      AccelerateConfiguration:
        if !std.isObject(AccelerateConfiguration) then (error 'AccelerateConfiguration must be an object')
        else if !std.objectHas(AccelerateConfiguration, 'AccelerationStatus') then (error ' have attribute AccelerationStatus')
        else AccelerateConfiguration,
    },
  },
  setAccessControl(AccessControl): {
    Properties+::: {
      AccessControl:
        if !std.isString(AccessControl) then (error 'AccessControl must be a string')
        else if std.isEmpty(AccessControl) then (error 'AccessControl must be not empty')
        else if AccessControl != 'AuthenticatedRead' && AccessControl != 'AwsExecRead' && AccessControl != 'BucketOwnerFullControl' && AccessControl != 'BucketOwnerRead' && AccessControl != 'LogDeliveryWrite' && AccessControl != 'Private' && AccessControl != 'PublicRead' && AccessControl != 'PublicReadWrite' then (error "AccessControl should be 'AuthenticatedRead' or 'AwsExecRead' or 'BucketOwnerFullControl' or 'BucketOwnerRead' or 'LogDeliveryWrite' or 'Private' or 'PublicRead' or 'PublicReadWrite'")
        else AccessControl,
    },
  },
  setAnalyticsConfigurations(AnalyticsConfigurations): {
    Properties+::: {
      AnalyticsConfigurations:
        if !std.isArray(AnalyticsConfigurations) then (error 'AnalyticsConfigurations must be an array')
        else AnalyticsConfigurations,
    },
  },
  pushAnalyticsConfigurations(AnalyticsConfigurations): {
    Properties+::: {
      AnalyticsConfigurations+: AnalyticsConfigurations,
    },
  },
  setBucketEncryption(BucketEncryption): {
    Properties+::: {
      BucketEncryption:
        if !std.isObject(BucketEncryption) then (error 'BucketEncryption must be an object')
        else if !std.objectHas(BucketEncryption, 'ServerSideEncryptionConfiguration') then (error ' have attribute ServerSideEncryptionConfiguration')
        else BucketEncryption,
    },
  },
  setBucketName(BucketName): {
    Properties+::: {
      BucketName:
        if !std.isString(BucketName) then (error 'BucketName must be a string')
        else if std.isEmpty(BucketName) then (error 'BucketName must be not empty')
        else BucketName,
    },
  },
  setCorsConfiguration(CorsConfiguration): {
    Properties+::: {
      CorsConfiguration:
        if !std.isObject(CorsConfiguration) then (error 'CorsConfiguration must be an object')
        else if !std.objectHas(CorsConfiguration, 'CorsRules') then (error ' have attribute CorsRules')
        else CorsConfiguration,
    },
  },
  setIntelligentTieringConfigurations(IntelligentTieringConfigurations): {
    Properties+::: {
      IntelligentTieringConfigurations:
        if !std.isArray(IntelligentTieringConfigurations) then (error 'IntelligentTieringConfigurations must be an array')
        else IntelligentTieringConfigurations,
    },
  },
  pushIntelligentTieringConfigurations(IntelligentTieringConfigurations): {
    Properties+::: {
      IntelligentTieringConfigurations+: IntelligentTieringConfigurations,
    },
  },
  setInventoryConfigurations(InventoryConfigurations): {
    Properties+::: {
      InventoryConfigurations:
        if !std.isArray(InventoryConfigurations) then (error 'InventoryConfigurations must be an array')
        else InventoryConfigurations,
    },
  },
  pushInventoryConfigurations(InventoryConfigurations): {
    Properties+::: {
      InventoryConfigurations+: InventoryConfigurations,
    },
  },
  setLifecycleConfiguration(LifecycleConfiguration): {
    Properties+::: {
      LifecycleConfiguration:
        if !std.isObject(LifecycleConfiguration) then (error 'LifecycleConfiguration must be an object')
        else if !std.objectHas(LifecycleConfiguration, 'Rules') then (error ' have attribute Rules')
        else LifecycleConfiguration,
    },
  },
  setLoggingConfiguration(LoggingConfiguration): {
    Properties+::: {
      LoggingConfiguration:
        if !std.isObject(LoggingConfiguration) then (error 'LoggingConfiguration must be an object')
        else LoggingConfiguration,
    },
  },
  setMetricsConfigurations(MetricsConfigurations): {
    Properties+::: {
      MetricsConfigurations:
        if !std.isArray(MetricsConfigurations) then (error 'MetricsConfigurations must be an array')
        else MetricsConfigurations,
    },
  },
  pushMetricsConfigurations(MetricsConfigurations): {
    Properties+::: {
      MetricsConfigurations+: MetricsConfigurations,
    },
  },
  setNotificationConfiguration(NotificationConfiguration): {
    Properties+::: {
      NotificationConfiguration:
        if !std.isObject(NotificationConfiguration) then (error 'NotificationConfiguration must be an object')
        else NotificationConfiguration,
    },
  },
  setObjectLockConfiguration(ObjectLockConfiguration): {
    Properties+::: {
      ObjectLockConfiguration:
        if !std.isObject(ObjectLockConfiguration) then (error 'ObjectLockConfiguration must be an object')
        else ObjectLockConfiguration,
    },
  },
  setObjectLockEnabled(ObjectLockEnabled): {
    Properties+::: {
      ObjectLockEnabled:
        if !std.isBoolean(ObjectLockEnabled) then (error 'ObjectLockEnabled must be a boolean') else ObjectLockEnabled,
    },
  },
  setOwnershipControls(OwnershipControls): {
    Properties+::: {
      OwnershipControls:
        if !std.isObject(OwnershipControls) then (error 'OwnershipControls must be an object')
        else if !std.objectHas(OwnershipControls, 'Rules') then (error ' have attribute Rules')
        else OwnershipControls,
    },
  },
  setPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
    Properties+::: {
      PublicAccessBlockConfiguration:
        if !std.isObject(PublicAccessBlockConfiguration) then (error 'PublicAccessBlockConfiguration must be an object')
        else PublicAccessBlockConfiguration,
    },
  },
  setReplicationConfiguration(ReplicationConfiguration): {
    Properties+::: {
      ReplicationConfiguration:
        if !std.isObject(ReplicationConfiguration) then (error 'ReplicationConfiguration must be an object')
        else if !std.objectHas(ReplicationConfiguration, 'Role') then (error ' have attribute Role')
        else if !std.objectHas(ReplicationConfiguration, 'Rules') then (error ' have attribute Rules')
        else ReplicationConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setVersioningConfiguration(VersioningConfiguration): {
    Properties+::: {
      VersioningConfiguration:
        if !std.isObject(VersioningConfiguration) then (error 'VersioningConfiguration must be an object')
        else if !std.objectHas(VersioningConfiguration, 'Status') then (error ' have attribute Status')
        else VersioningConfiguration,
    },
  },
  setWebsiteConfiguration(WebsiteConfiguration): {
    Properties+::: {
      WebsiteConfiguration:
        if !std.isObject(WebsiteConfiguration) then (error 'WebsiteConfiguration must be an object')
        else WebsiteConfiguration,
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
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else DomainName,
    },
  },
  setDualStackDomainName(DualStackDomainName): {
    Properties+::: {
      DualStackDomainName:
        if !std.isString(DualStackDomainName) then (error 'DualStackDomainName must be a string')
        else if std.isEmpty(DualStackDomainName) then (error 'DualStackDomainName must be not empty')
        else DualStackDomainName,
    },
  },
  setRegionalDomainName(RegionalDomainName): {
    Properties+::: {
      RegionalDomainName:
        if !std.isString(RegionalDomainName) then (error 'RegionalDomainName must be a string')
        else if std.isEmpty(RegionalDomainName) then (error 'RegionalDomainName must be not empty')
        else RegionalDomainName,
    },
  },
  setWebsiteURL(WebsiteURL): {
    Properties+::: {
      WebsiteURL:
        if !std.isString(WebsiteURL) then (error 'WebsiteURL must be a string')
        else if std.isEmpty(WebsiteURL) then (error 'WebsiteURL must be not empty')
        else WebsiteURL,
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
