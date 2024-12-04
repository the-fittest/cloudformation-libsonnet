{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MWAA::Environment',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withWebserverUrl(WebserverUrl): {
    assert std.isString(WebserverUrl) : 'WebserverUrl must be a string',
    Properties+::: {
      WebserverUrl: WebserverUrl,
    },
  },
  withExecutionRoleArn(ExecutionRoleArn): {
    assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
    Properties+::: {
      ExecutionRoleArn: ExecutionRoleArn,
    },
  },
  withKmsKey(KmsKey): {
    assert std.isString(KmsKey) : 'KmsKey must be a string',
    Properties+::: {
      KmsKey: KmsKey,
    },
  },
  withAirflowVersion(AirflowVersion): {
    assert std.isString(AirflowVersion) : 'AirflowVersion must be a string',
    Properties+::: {
      AirflowVersion: AirflowVersion,
    },
  },
  withSourceBucketArn(SourceBucketArn): {
    assert std.isString(SourceBucketArn) : 'SourceBucketArn must be a string',
    Properties+::: {
      SourceBucketArn: SourceBucketArn,
    },
  },
  withDagS3Path(DagS3Path): {
    assert std.isString(DagS3Path) : 'DagS3Path must be a string',
    Properties+::: {
      DagS3Path: DagS3Path,
    },
  },
  withPluginsS3Path(PluginsS3Path): {
    assert std.isString(PluginsS3Path) : 'PluginsS3Path must be a string',
    Properties+::: {
      PluginsS3Path: PluginsS3Path,
    },
  },
  withPluginsS3ObjectVersion(PluginsS3ObjectVersion): {
    assert std.isString(PluginsS3ObjectVersion) : 'PluginsS3ObjectVersion must be a string',
    Properties+::: {
      PluginsS3ObjectVersion: PluginsS3ObjectVersion,
    },
  },
  withRequirementsS3Path(RequirementsS3Path): {
    assert std.isString(RequirementsS3Path) : 'RequirementsS3Path must be a string',
    Properties+::: {
      RequirementsS3Path: RequirementsS3Path,
    },
  },
  withRequirementsS3ObjectVersion(RequirementsS3ObjectVersion): {
    assert std.isString(RequirementsS3ObjectVersion) : 'RequirementsS3ObjectVersion must be a string',
    Properties+::: {
      RequirementsS3ObjectVersion: RequirementsS3ObjectVersion,
    },
  },
  withStartupScriptS3Path(StartupScriptS3Path): {
    assert std.isString(StartupScriptS3Path) : 'StartupScriptS3Path must be a string',
    Properties+::: {
      StartupScriptS3Path: StartupScriptS3Path,
    },
  },
  withStartupScriptS3ObjectVersion(StartupScriptS3ObjectVersion): {
    assert std.isString(StartupScriptS3ObjectVersion) : 'StartupScriptS3ObjectVersion must be a string',
    Properties+::: {
      StartupScriptS3ObjectVersion: StartupScriptS3ObjectVersion,
    },
  },
  withAirflowConfigurationOptions(AirflowConfigurationOptions): {
    assert std.isObject(AirflowConfigurationOptions) : 'AirflowConfigurationOptions must be a object',
    Properties+::: {
      AirflowConfigurationOptions: AirflowConfigurationOptions,
    },
  },
  withEnvironmentClass(EnvironmentClass): {
    assert std.isString(EnvironmentClass) : 'EnvironmentClass must be a string',
    Properties+::: {
      EnvironmentClass: EnvironmentClass,
    },
  },
  withMaxWorkers(MaxWorkers): {
    assert std.isNumber(MaxWorkers) : 'MaxWorkers must be a number',
    Properties+::: {
      MaxWorkers: MaxWorkers,
    },
  },
  withMinWorkers(MinWorkers): {
    assert std.isNumber(MinWorkers) : 'MinWorkers must be a number',
    Properties+::: {
      MinWorkers: MinWorkers,
    },
  },
  withMaxWebservers(MaxWebservers): {
    assert std.isNumber(MaxWebservers) : 'MaxWebservers must be a number',
    Properties+::: {
      MaxWebservers: MaxWebservers,
    },
  },
  withMinWebservers(MinWebservers): {
    assert std.isNumber(MinWebservers) : 'MinWebservers must be a number',
    Properties+::: {
      MinWebservers: MinWebservers,
    },
  },
  withSchedulers(Schedulers): {
    assert std.isNumber(Schedulers) : 'Schedulers must be a number',
    Properties+::: {
      Schedulers: Schedulers,
    },
  },
  withNetworkConfiguration(NetworkConfiguration): {
    assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
    Properties+::: {
      NetworkConfiguration: NetworkConfiguration,
    },
  },
  withLoggingConfiguration(LoggingConfiguration): {
    assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
    Properties+::: {
      LoggingConfiguration: LoggingConfiguration,
    },
  },
  withWeeklyMaintenanceWindowStart(WeeklyMaintenanceWindowStart): {
    assert std.isString(WeeklyMaintenanceWindowStart) : 'WeeklyMaintenanceWindowStart must be a string',
    Properties+::: {
      WeeklyMaintenanceWindowStart: WeeklyMaintenanceWindowStart,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withWebserverAccessMode(WebserverAccessMode): {
    assert std.isString(WebserverAccessMode) : 'WebserverAccessMode must be a string',
    Properties+::: {
      WebserverAccessMode: WebserverAccessMode,
    },
  },
  withEndpointManagement(EndpointManagement): {
    assert std.isString(EndpointManagement) : 'EndpointManagement must be a string',
    Properties+::: {
      EndpointManagement: EndpointManagement,
    },
  },
  withCeleryExecutorQueue(CeleryExecutorQueue): {
    assert std.isString(CeleryExecutorQueue) : 'CeleryExecutorQueue must be a string',
    Properties+::: {
      CeleryExecutorQueue: CeleryExecutorQueue,
    },
  },
  withDatabaseVpcEndpointService(DatabaseVpcEndpointService): {
    assert std.isString(DatabaseVpcEndpointService) : 'DatabaseVpcEndpointService must be a string',
    Properties+::: {
      DatabaseVpcEndpointService: DatabaseVpcEndpointService,
    },
  },
  withWebserverVpcEndpointService(WebserverVpcEndpointService): {
    assert std.isString(WebserverVpcEndpointService) : 'WebserverVpcEndpointService must be a string',
    Properties+::: {
      WebserverVpcEndpointService: WebserverVpcEndpointService,
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
