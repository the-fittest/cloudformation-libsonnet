{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 80 then error ('Name should have not more than 80 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MWAA::Environment',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1224 then error ('Arn should have not more than 1224 characters')
        else Arn,
    },
  },
  setWebserverUrl(WebserverUrl): {
    Properties+::: {
      WebserverUrl:
        if !std.isString(WebserverUrl) then (error 'WebserverUrl must be a string')
        else if std.isEmpty(WebserverUrl) then (error 'WebserverUrl must be not empty')
        else if std.length(WebserverUrl) < 1 then error ('WebserverUrl should have at least 1 characters')
        else if std.length(WebserverUrl) > 256 then error ('WebserverUrl should have not more than 256 characters')
        else WebserverUrl,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else if std.length(ExecutionRoleArn) > 1224 then error ('ExecutionRoleArn should have not more than 1224 characters')
        else ExecutionRoleArn,
    },
  },
  setKmsKey(KmsKey): {
    Properties+::: {
      KmsKey:
        if !std.isString(KmsKey) then (error 'KmsKey must be a string')
        else if std.isEmpty(KmsKey) then (error 'KmsKey must be not empty')
        else if std.length(KmsKey) > 1224 then error ('KmsKey should have not more than 1224 characters')
        else KmsKey,
    },
  },
  setAirflowVersion(AirflowVersion): {
    Properties+::: {
      AirflowVersion:
        if !std.isString(AirflowVersion) then (error 'AirflowVersion must be a string')
        else if std.isEmpty(AirflowVersion) then (error 'AirflowVersion must be not empty')
        else if std.length(AirflowVersion) > 32 then error ('AirflowVersion should have not more than 32 characters')
        else AirflowVersion,
    },
  },
  setSourceBucketArn(SourceBucketArn): {
    Properties+::: {
      SourceBucketArn:
        if !std.isString(SourceBucketArn) then (error 'SourceBucketArn must be a string')
        else if std.isEmpty(SourceBucketArn) then (error 'SourceBucketArn must be not empty')
        else if std.length(SourceBucketArn) < 1 then error ('SourceBucketArn should have at least 1 characters')
        else if std.length(SourceBucketArn) > 1224 then error ('SourceBucketArn should have not more than 1224 characters')
        else SourceBucketArn,
    },
  },
  setDagS3Path(DagS3Path): {
    Properties+::: {
      DagS3Path:
        if !std.isString(DagS3Path) then (error 'DagS3Path must be a string')
        else if std.isEmpty(DagS3Path) then (error 'DagS3Path must be not empty')
        else if std.length(DagS3Path) > 1024 then error ('DagS3Path should have not more than 1024 characters')
        else DagS3Path,
    },
  },
  setPluginsS3Path(PluginsS3Path): {
    Properties+::: {
      PluginsS3Path:
        if !std.isString(PluginsS3Path) then (error 'PluginsS3Path must be a string')
        else if std.isEmpty(PluginsS3Path) then (error 'PluginsS3Path must be not empty')
        else if std.length(PluginsS3Path) > 1024 then error ('PluginsS3Path should have not more than 1024 characters')
        else PluginsS3Path,
    },
  },
  setPluginsS3ObjectVersion(PluginsS3ObjectVersion): {
    Properties+::: {
      PluginsS3ObjectVersion:
        if !std.isString(PluginsS3ObjectVersion) then (error 'PluginsS3ObjectVersion must be a string')
        else if std.isEmpty(PluginsS3ObjectVersion) then (error 'PluginsS3ObjectVersion must be not empty')
        else if std.length(PluginsS3ObjectVersion) > 1024 then error ('PluginsS3ObjectVersion should have not more than 1024 characters')
        else PluginsS3ObjectVersion,
    },
  },
  setRequirementsS3Path(RequirementsS3Path): {
    Properties+::: {
      RequirementsS3Path:
        if !std.isString(RequirementsS3Path) then (error 'RequirementsS3Path must be a string')
        else if std.isEmpty(RequirementsS3Path) then (error 'RequirementsS3Path must be not empty')
        else if std.length(RequirementsS3Path) > 1024 then error ('RequirementsS3Path should have not more than 1024 characters')
        else RequirementsS3Path,
    },
  },
  setRequirementsS3ObjectVersion(RequirementsS3ObjectVersion): {
    Properties+::: {
      RequirementsS3ObjectVersion:
        if !std.isString(RequirementsS3ObjectVersion) then (error 'RequirementsS3ObjectVersion must be a string')
        else if std.isEmpty(RequirementsS3ObjectVersion) then (error 'RequirementsS3ObjectVersion must be not empty')
        else if std.length(RequirementsS3ObjectVersion) > 1024 then error ('RequirementsS3ObjectVersion should have not more than 1024 characters')
        else RequirementsS3ObjectVersion,
    },
  },
  setStartupScriptS3Path(StartupScriptS3Path): {
    Properties+::: {
      StartupScriptS3Path:
        if !std.isString(StartupScriptS3Path) then (error 'StartupScriptS3Path must be a string')
        else if std.isEmpty(StartupScriptS3Path) then (error 'StartupScriptS3Path must be not empty')
        else if std.length(StartupScriptS3Path) > 1024 then error ('StartupScriptS3Path should have not more than 1024 characters')
        else StartupScriptS3Path,
    },
  },
  setStartupScriptS3ObjectVersion(StartupScriptS3ObjectVersion): {
    Properties+::: {
      StartupScriptS3ObjectVersion:
        if !std.isString(StartupScriptS3ObjectVersion) then (error 'StartupScriptS3ObjectVersion must be a string')
        else if std.isEmpty(StartupScriptS3ObjectVersion) then (error 'StartupScriptS3ObjectVersion must be not empty')
        else if std.length(StartupScriptS3ObjectVersion) > 1024 then error ('StartupScriptS3ObjectVersion should have not more than 1024 characters')
        else StartupScriptS3ObjectVersion,
    },
  },
  setAirflowConfigurationOptions(AirflowConfigurationOptions): {
    Properties+::: {
      AirflowConfigurationOptions:
        if !std.isObject(AirflowConfigurationOptions) then (error 'AirflowConfigurationOptions must be an object')
        else AirflowConfigurationOptions,
    },
  },
  setEnvironmentClass(EnvironmentClass): {
    Properties+::: {
      EnvironmentClass:
        if !std.isString(EnvironmentClass) then (error 'EnvironmentClass must be a string')
        else if std.isEmpty(EnvironmentClass) then (error 'EnvironmentClass must be not empty')
        else if std.length(EnvironmentClass) < 1 then error ('EnvironmentClass should have at least 1 characters')
        else if std.length(EnvironmentClass) > 1024 then error ('EnvironmentClass should have not more than 1024 characters')
        else EnvironmentClass,
    },
  },
  setMaxWorkers(MaxWorkers): {
    Properties+::: {
      MaxWorkers:
        if !std.isNumber(MaxWorkers) then (error 'MaxWorkers must be an number')
        else if MaxWorkers < 1 then error ('MaxWorkers should be at least 1')
        else MaxWorkers,
    },
  },
  setMinWorkers(MinWorkers): {
    Properties+::: {
      MinWorkers:
        if !std.isNumber(MinWorkers) then (error 'MinWorkers must be an number')
        else if MinWorkers < 1 then error ('MinWorkers should be at least 1')
        else MinWorkers,
    },
  },
  setMaxWebservers(MaxWebservers): {
    Properties+::: {
      MaxWebservers:
        if !std.isNumber(MaxWebservers) then (error 'MaxWebservers must be an number')
        else if MaxWebservers < 1 then error ('MaxWebservers should be at least 1')
        else MaxWebservers,
    },
  },
  setMinWebservers(MinWebservers): {
    Properties+::: {
      MinWebservers:
        if !std.isNumber(MinWebservers) then (error 'MinWebservers must be an number')
        else if MinWebservers < 1 then error ('MinWebservers should be at least 1')
        else MinWebservers,
    },
  },
  setSchedulers(Schedulers): {
    Properties+::: {
      Schedulers:
        if !std.isNumber(Schedulers) then (error 'Schedulers must be an number')
        else if Schedulers < 1 then error ('Schedulers should be at least 1')
        else Schedulers,
    },
  },
  setNetworkConfiguration(NetworkConfiguration): {
    Properties+::: {
      NetworkConfiguration:
        if !std.isObject(NetworkConfiguration) then (error 'NetworkConfiguration must be an object')
        else NetworkConfiguration,
    },
  },
  setLoggingConfiguration(LoggingConfiguration): {
    Properties+::: {
      LoggingConfiguration:
        if !std.isObject(LoggingConfiguration) then (error 'LoggingConfiguration must be an object')
        else LoggingConfiguration,
    },
  },
  setWeeklyMaintenanceWindowStart(WeeklyMaintenanceWindowStart): {
    Properties+::: {
      WeeklyMaintenanceWindowStart:
        if !std.isString(WeeklyMaintenanceWindowStart) then (error 'WeeklyMaintenanceWindowStart must be a string')
        else if std.isEmpty(WeeklyMaintenanceWindowStart) then (error 'WeeklyMaintenanceWindowStart must be not empty')
        else if std.length(WeeklyMaintenanceWindowStart) > 9 then error ('WeeklyMaintenanceWindowStart should have not more than 9 characters')
        else WeeklyMaintenanceWindowStart,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setWebserverAccessMode(WebserverAccessMode): {
    Properties+::: {
      WebserverAccessMode:
        if !std.isString(WebserverAccessMode) then (error 'WebserverAccessMode must be a string')
        else if std.isEmpty(WebserverAccessMode) then (error 'WebserverAccessMode must be not empty')
        else if WebserverAccessMode != 'PRIVATE_ONLY' && WebserverAccessMode != 'PUBLIC_ONLY' then (error "WebserverAccessMode should be 'PRIVATE_ONLY' or 'PUBLIC_ONLY'")
        else WebserverAccessMode,
    },
  },
  setEndpointManagement(EndpointManagement): {
    Properties+::: {
      EndpointManagement:
        if !std.isString(EndpointManagement) then (error 'EndpointManagement must be a string')
        else if std.isEmpty(EndpointManagement) then (error 'EndpointManagement must be not empty')
        else if EndpointManagement != 'CUSTOMER' && EndpointManagement != 'SERVICE' then (error "EndpointManagement should be 'CUSTOMER' or 'SERVICE'")
        else EndpointManagement,
    },
  },
  setCeleryExecutorQueue(CeleryExecutorQueue): {
    Properties+::: {
      CeleryExecutorQueue:
        if !std.isString(CeleryExecutorQueue) then (error 'CeleryExecutorQueue must be a string')
        else if std.isEmpty(CeleryExecutorQueue) then (error 'CeleryExecutorQueue must be not empty')
        else if std.length(CeleryExecutorQueue) > 1224 then error ('CeleryExecutorQueue should have not more than 1224 characters')
        else CeleryExecutorQueue,
    },
  },
  setDatabaseVpcEndpointService(DatabaseVpcEndpointService): {
    Properties+::: {
      DatabaseVpcEndpointService:
        if !std.isString(DatabaseVpcEndpointService) then (error 'DatabaseVpcEndpointService must be a string')
        else if std.isEmpty(DatabaseVpcEndpointService) then (error 'DatabaseVpcEndpointService must be not empty')
        else if std.length(DatabaseVpcEndpointService) > 1224 then error ('DatabaseVpcEndpointService should have not more than 1224 characters')
        else DatabaseVpcEndpointService,
    },
  },
  setWebserverVpcEndpointService(WebserverVpcEndpointService): {
    Properties+::: {
      WebserverVpcEndpointService:
        if !std.isString(WebserverVpcEndpointService) then (error 'WebserverVpcEndpointService must be a string')
        else if std.isEmpty(WebserverVpcEndpointService) then (error 'WebserverVpcEndpointService must be not empty')
        else if std.length(WebserverVpcEndpointService) > 1224 then error ('WebserverVpcEndpointService should have not more than 1224 characters')
        else WebserverVpcEndpointService,
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
