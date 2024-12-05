{
  new(
    Artifacts,
    ServiceRole,
    Environment,
    Source,
  ): {
    local base = self,
    Properties: {
      Artifacts:
        if !std.isObject(Artifacts) then (error 'Artifacts must be an object')
        else if !std.objectHas(Artifacts, 'Type') then (error ' have attribute Type')
        else Artifacts,
      ServiceRole:
        if !std.isString(ServiceRole) then (error 'ServiceRole must be a string')
        else if std.isEmpty(ServiceRole) then (error 'ServiceRole must be not empty')
        else ServiceRole,
      Environment:
        if !std.isObject(Environment) then (error 'Environment must be an object')
        else if !std.objectHas(Environment, 'Type') then (error ' have attribute Type')
        else if !std.objectHas(Environment, 'Image') then (error ' have attribute Image')
        else if !std.objectHas(Environment, 'ComputeType') then (error ' have attribute ComputeType')
        else Environment,
      Source:
        if !std.isObject(Source) then (error 'Source must be an object')
        else if !std.objectHas(Source, 'Type') then (error ' have attribute Type')
        else Source,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeBuild::Project',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setResourceAccessRole(ResourceAccessRole): {
    Properties+::: {
      ResourceAccessRole:
        if !std.isString(ResourceAccessRole) then (error 'ResourceAccessRole must be a string')
        else if std.isEmpty(ResourceAccessRole) then (error 'ResourceAccessRole must be not empty')
        else ResourceAccessRole,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else VpcConfig,
    },
  },
  setSecondarySources(SecondarySources): {
    Properties+::: {
      SecondarySources:
        if !std.isArray(SecondarySources) then (error 'SecondarySources must be an array')
        else SecondarySources,
    },
  },
  setSecondarySourcesMixin(SecondarySources): {
    Properties+::: {
      SecondarySources+: SecondarySources,
    },
  },
  setEncryptionKey(EncryptionKey): {
    Properties+::: {
      EncryptionKey:
        if !std.isString(EncryptionKey) then (error 'EncryptionKey must be a string')
        else if std.isEmpty(EncryptionKey) then (error 'EncryptionKey must be not empty')
        else EncryptionKey,
    },
  },
  setSecondaryArtifacts(SecondaryArtifacts): {
    Properties+::: {
      SecondaryArtifacts:
        if !std.isArray(SecondaryArtifacts) then (error 'SecondaryArtifacts must be an array')
        else SecondaryArtifacts,
    },
  },
  setSecondaryArtifactsMixin(SecondaryArtifacts): {
    Properties+::: {
      SecondaryArtifacts+: SecondaryArtifacts,
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
  setLogsConfig(LogsConfig): {
    Properties+::: {
      LogsConfig:
        if !std.isObject(LogsConfig) then (error 'LogsConfig must be an object')
        else LogsConfig,
    },
  },
  setQueuedTimeoutInMinutes(QueuedTimeoutInMinutes): {
    Properties+::: {
      QueuedTimeoutInMinutes:
        if !std.isNumber(QueuedTimeoutInMinutes) then (error 'QueuedTimeoutInMinutes must be an number')
        else QueuedTimeoutInMinutes,
    },
  },
  setSecondarySourceVersions(SecondarySourceVersions): {
    Properties+::: {
      SecondarySourceVersions:
        if !std.isArray(SecondarySourceVersions) then (error 'SecondarySourceVersions must be an array')
        else SecondarySourceVersions,
    },
  },
  setSecondarySourceVersionsMixin(SecondarySourceVersions): {
    Properties+::: {
      SecondarySourceVersions+: SecondarySourceVersions,
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
  setAutoRetryLimit(AutoRetryLimit): {
    Properties+::: {
      AutoRetryLimit:
        if !std.isNumber(AutoRetryLimit) then (error 'AutoRetryLimit must be an number')
        else AutoRetryLimit,
    },
  },
  setSourceVersion(SourceVersion): {
    Properties+::: {
      SourceVersion:
        if !std.isString(SourceVersion) then (error 'SourceVersion must be a string')
        else if std.isEmpty(SourceVersion) then (error 'SourceVersion must be not empty')
        else SourceVersion,
    },
  },
  setTriggers(Triggers): {
    Properties+::: {
      Triggers:
        if !std.isObject(Triggers) then (error 'Triggers must be an object')
        else Triggers,
    },
  },
  setBadgeEnabled(BadgeEnabled): {
    Properties+::: {
      BadgeEnabled:
        if !std.isBoolean(BadgeEnabled) then (error 'BadgeEnabled must be a boolean') else BadgeEnabled,
    },
  },
  setFileSystemLocations(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations:
        if !std.isArray(FileSystemLocations) then (error 'FileSystemLocations must be an array')
        else FileSystemLocations,
    },
  },
  setFileSystemLocationsMixin(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations+: FileSystemLocations,
    },
  },
  setConcurrentBuildLimit(ConcurrentBuildLimit): {
    Properties+::: {
      ConcurrentBuildLimit:
        if !std.isNumber(ConcurrentBuildLimit) then (error 'ConcurrentBuildLimit must be an number')
        else ConcurrentBuildLimit,
    },
  },
  setVisibility(Visibility): {
    Properties+::: {
      Visibility:
        if !std.isString(Visibility) then (error 'Visibility must be a string')
        else if std.isEmpty(Visibility) then (error 'Visibility must be not empty')
        else Visibility,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setBuildBatchConfig(BuildBatchConfig): {
    Properties+::: {
      BuildBatchConfig:
        if !std.isObject(BuildBatchConfig) then (error 'BuildBatchConfig must be an object')
        else BuildBatchConfig,
    },
  },
  setTimeoutInMinutes(TimeoutInMinutes): {
    Properties+::: {
      TimeoutInMinutes:
        if !std.isNumber(TimeoutInMinutes) then (error 'TimeoutInMinutes must be an number')
        else TimeoutInMinutes,
    },
  },
  setCache(Cache): {
    Properties+::: {
      Cache:
        if !std.isObject(Cache) then (error 'Cache must be an object')
        else if !std.objectHas(Cache, 'Type') then (error ' have attribute Type')
        else Cache,
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
