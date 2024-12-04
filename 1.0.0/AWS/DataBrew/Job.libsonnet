{
  new(
    Name,
    RoleArn,
    Type,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataBrew::Job',
  },
  withDatasetName(DatasetName): {
    assert std.isString(DatasetName) : 'DatasetName must be a string',
    Properties+::: {
      DatasetName: DatasetName,
    },
  },
  withEncryptionKeyArn(EncryptionKeyArn): {
    assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
    Properties+::: {
      EncryptionKeyArn: EncryptionKeyArn,
    },
  },
  withEncryptionMode(EncryptionMode): {
    assert std.isString(EncryptionMode) : 'EncryptionMode must be a string',
    Properties+::: {
      EncryptionMode: EncryptionMode,
    },
  },
  withLogSubscription(LogSubscription): {
    assert std.isString(LogSubscription) : 'LogSubscription must be a string',
    Properties+::: {
      LogSubscription: LogSubscription,
    },
  },
  withMaxCapacity(MaxCapacity): {
    assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a number',
    Properties+::: {
      MaxCapacity: MaxCapacity,
    },
  },
  withMaxRetries(MaxRetries): {
    assert std.isNumber(MaxRetries) : 'MaxRetries must be a number',
    Properties+::: {
      MaxRetries: MaxRetries,
    },
  },
  withOutputs(Outputs): {
    Properties+::: {
      Outputs: (if std.isArray(Outputs) then Outputs else [Outputs]),
    },
  },
  withOutputsMixin(Outputs): {
    Properties+::: {
      Outputs+: (if std.isArray(Outputs) then Outputs else [Outputs]),
    },
  },
  withDataCatalogOutputs(DataCatalogOutputs): {
    Properties+::: {
      DataCatalogOutputs: (if std.isArray(DataCatalogOutputs) then DataCatalogOutputs else [DataCatalogOutputs]),
    },
  },
  withDataCatalogOutputsMixin(DataCatalogOutputs): {
    Properties+::: {
      DataCatalogOutputs+: (if std.isArray(DataCatalogOutputs) then DataCatalogOutputs else [DataCatalogOutputs]),
    },
  },
  withDatabaseOutputs(DatabaseOutputs): {
    Properties+::: {
      DatabaseOutputs: (if std.isArray(DatabaseOutputs) then DatabaseOutputs else [DatabaseOutputs]),
    },
  },
  withDatabaseOutputsMixin(DatabaseOutputs): {
    Properties+::: {
      DatabaseOutputs+: (if std.isArray(DatabaseOutputs) then DatabaseOutputs else [DatabaseOutputs]),
    },
  },
  withOutputLocation(OutputLocation): {
    assert std.isObject(OutputLocation) : 'OutputLocation must be a object',
    Properties+::: {
      OutputLocation: OutputLocation,
    },
  },
  withProjectName(ProjectName): {
    assert std.isString(ProjectName) : 'ProjectName must be a string',
    Properties+::: {
      ProjectName: ProjectName,
    },
  },
  withRecipe(Recipe): {
    assert std.isObject(Recipe) : 'Recipe must be a object',
    Properties+::: {
      Recipe: Recipe,
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
  withTimeout(Timeout): {
    assert std.isNumber(Timeout) : 'Timeout must be a number',
    Properties+::: {
      Timeout: Timeout,
    },
  },
  withJobSample(JobSample): {
    assert std.isObject(JobSample) : 'JobSample must be a object',
    Properties+::: {
      JobSample: JobSample,
    },
  },
  withProfileConfiguration(ProfileConfiguration): {
    assert std.isObject(ProfileConfiguration) : 'ProfileConfiguration must be a object',
    Properties+::: {
      ProfileConfiguration: ProfileConfiguration,
    },
  },
  withValidationConfigurations(ValidationConfigurations): {
    Properties+::: {
      ValidationConfigurations: (if std.isArray(ValidationConfigurations) then ValidationConfigurations else [ValidationConfigurations]),
    },
  },
  withValidationConfigurationsMixin(ValidationConfigurations): {
    Properties+::: {
      ValidationConfigurations+: (if std.isArray(ValidationConfigurations) then ValidationConfigurations else [ValidationConfigurations]),
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
