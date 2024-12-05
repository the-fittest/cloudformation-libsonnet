{
  new(
    RuntimeEnvironment,
    ServiceExecutionRole,
  ): {
    local base = self,
    Properties: {
      RuntimeEnvironment:
        if !std.isString(RuntimeEnvironment) then (error 'RuntimeEnvironment must be a string')
        else if std.isEmpty(RuntimeEnvironment) then (error 'RuntimeEnvironment must be not empty')
        else RuntimeEnvironment,
      ServiceExecutionRole:
        if !std.isString(ServiceExecutionRole) then (error 'ServiceExecutionRole must be a string')
        else if std.isEmpty(ServiceExecutionRole) then (error 'ServiceExecutionRole must be not empty')
        else if std.length(ServiceExecutionRole) < 1 then error ('ServiceExecutionRole should have at least 1 characters')
        else if std.length(ServiceExecutionRole) > 2048 then error ('ServiceExecutionRole should have not more than 2048 characters')
        else ServiceExecutionRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KinesisAnalyticsV2::Application',
  },
  setApplicationConfiguration(ApplicationConfiguration): {
    Properties+::: {
      ApplicationConfiguration:
        if !std.isObject(ApplicationConfiguration) then (error 'ApplicationConfiguration must be an object')
        else ApplicationConfiguration,
    },
  },
  setApplicationDescription(ApplicationDescription): {
    Properties+::: {
      ApplicationDescription:
        if !std.isString(ApplicationDescription) then (error 'ApplicationDescription must be a string')
        else if std.isEmpty(ApplicationDescription) then (error 'ApplicationDescription must be not empty')
        else if std.length(ApplicationDescription) > 1024 then error ('ApplicationDescription should have not more than 1024 characters')
        else ApplicationDescription,
    },
  },
  setApplicationMode(ApplicationMode): {
    Properties+::: {
      ApplicationMode:
        if !std.isString(ApplicationMode) then (error 'ApplicationMode must be a string')
        else if std.isEmpty(ApplicationMode) then (error 'ApplicationMode must be not empty')
        else if ApplicationMode != 'INTERACTIVE' && ApplicationMode != 'STREAMING' then (error "ApplicationMode should be 'INTERACTIVE' or 'STREAMING'")
        else ApplicationMode,
    },
  },
  setApplicationName(ApplicationName): {
    Properties+::: {
      ApplicationName:
        if !std.isString(ApplicationName) then (error 'ApplicationName must be a string')
        else if std.isEmpty(ApplicationName) then (error 'ApplicationName must be not empty')
        else if std.length(ApplicationName) < 1 then error ('ApplicationName should have at least 1 characters')
        else if std.length(ApplicationName) > 128 then error ('ApplicationName should have not more than 128 characters')
        else ApplicationName,
    },
  },
  setRunConfiguration(RunConfiguration): {
    Properties+::: {
      RunConfiguration:
        if !std.isObject(RunConfiguration) then (error 'RunConfiguration must be an object')
        else RunConfiguration,
    },
  },
  setApplicationMaintenanceConfiguration(ApplicationMaintenanceConfiguration): {
    Properties+::: {
      ApplicationMaintenanceConfiguration:
        if !std.isObject(ApplicationMaintenanceConfiguration) then (error 'ApplicationMaintenanceConfiguration must be an object')
        else if !std.objectHas(ApplicationMaintenanceConfiguration, 'ApplicationMaintenanceWindowStartTime') then (error ' have attribute ApplicationMaintenanceWindowStartTime')
        else ApplicationMaintenanceConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
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
