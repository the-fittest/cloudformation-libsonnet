{
  new(
    Name,
    RoleArn,
    Type,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'PROFILE' && Type != 'RECIPE' then (error "Type should be 'PROFILE' or 'RECIPE'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataBrew::Job',
  },
  setDatasetName(DatasetName): {
    Properties+::: {
      DatasetName:
        if !std.isString(DatasetName) then (error 'DatasetName must be a string')
        else if std.isEmpty(DatasetName) then (error 'DatasetName must be not empty')
        else if std.length(DatasetName) < 1 then error ('DatasetName should have at least 1 characters')
        else if std.length(DatasetName) > 255 then error ('DatasetName should have not more than 255 characters')
        else DatasetName,
    },
  },
  setEncryptionKeyArn(EncryptionKeyArn): {
    Properties+::: {
      EncryptionKeyArn:
        if !std.isString(EncryptionKeyArn) then (error 'EncryptionKeyArn must be a string')
        else if std.isEmpty(EncryptionKeyArn) then (error 'EncryptionKeyArn must be not empty')
        else if std.length(EncryptionKeyArn) < 20 then error ('EncryptionKeyArn should have at least 20 characters')
        else if std.length(EncryptionKeyArn) > 2048 then error ('EncryptionKeyArn should have not more than 2048 characters')
        else EncryptionKeyArn,
    },
  },
  setEncryptionMode(EncryptionMode): {
    Properties+::: {
      EncryptionMode:
        if !std.isString(EncryptionMode) then (error 'EncryptionMode must be a string')
        else if std.isEmpty(EncryptionMode) then (error 'EncryptionMode must be not empty')
        else if EncryptionMode != 'SSE-KMS' && EncryptionMode != 'SSE-S3' then (error "EncryptionMode should be 'SSE-KMS' or 'SSE-S3'")
        else EncryptionMode,
    },
  },
  setLogSubscription(LogSubscription): {
    Properties+::: {
      LogSubscription:
        if !std.isString(LogSubscription) then (error 'LogSubscription must be a string')
        else if std.isEmpty(LogSubscription) then (error 'LogSubscription must be not empty')
        else if LogSubscription != 'ENABLE' && LogSubscription != 'DISABLE' then (error "LogSubscription should be 'ENABLE' or 'DISABLE'")
        else LogSubscription,
    },
  },
  setMaxCapacity(MaxCapacity): {
    Properties+::: {
      MaxCapacity:
        if !std.isNumber(MaxCapacity) then (error 'MaxCapacity must be an number')
        else MaxCapacity,
    },
  },
  setMaxRetries(MaxRetries): {
    Properties+::: {
      MaxRetries:
        if !std.isNumber(MaxRetries) then (error 'MaxRetries must be an number')
        else MaxRetries,
    },
  },
  setOutputs(Outputs): {
    Properties+::: {
      Outputs:
        if !std.isArray(Outputs) then (error 'Outputs must be an array')
        else Outputs,
    },
  },
  pushOutputs(Outputs): {
    Properties+::: {
      Outputs+: Outputs,
    },
  },
  setDataCatalogOutputs(DataCatalogOutputs): {
    Properties+::: {
      DataCatalogOutputs:
        if !std.isArray(DataCatalogOutputs) then (error 'DataCatalogOutputs must be an array')
        else DataCatalogOutputs,
    },
  },
  pushDataCatalogOutputs(DataCatalogOutputs): {
    Properties+::: {
      DataCatalogOutputs+: DataCatalogOutputs,
    },
  },
  setDatabaseOutputs(DatabaseOutputs): {
    Properties+::: {
      DatabaseOutputs:
        if !std.isArray(DatabaseOutputs) then (error 'DatabaseOutputs must be an array')
        else DatabaseOutputs,
    },
  },
  pushDatabaseOutputs(DatabaseOutputs): {
    Properties+::: {
      DatabaseOutputs+: DatabaseOutputs,
    },
  },
  setOutputLocation(OutputLocation): {
    Properties+::: {
      OutputLocation:
        if !std.isObject(OutputLocation) then (error 'OutputLocation must be an object')
        else if !std.objectHas(OutputLocation, 'Bucket') then (error ' have attribute Bucket')
        else OutputLocation,
    },
  },
  setProjectName(ProjectName): {
    Properties+::: {
      ProjectName:
        if !std.isString(ProjectName) then (error 'ProjectName must be a string')
        else if std.isEmpty(ProjectName) then (error 'ProjectName must be not empty')
        else if std.length(ProjectName) < 1 then error ('ProjectName should have at least 1 characters')
        else if std.length(ProjectName) > 255 then error ('ProjectName should have not more than 255 characters')
        else ProjectName,
    },
  },
  setRecipe(Recipe): {
    Properties+::: {
      Recipe:
        if !std.isObject(Recipe) then (error 'Recipe must be an object')
        else if !std.objectHas(Recipe, 'Name') then (error ' have attribute Name')
        else Recipe,
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
  setTimeout(Timeout): {
    Properties+::: {
      Timeout:
        if !std.isNumber(Timeout) then (error 'Timeout must be an number')
        else Timeout,
    },
  },
  setJobSample(JobSample): {
    Properties+::: {
      JobSample:
        if !std.isObject(JobSample) then (error 'JobSample must be an object')
        else JobSample,
    },
  },
  setProfileConfiguration(ProfileConfiguration): {
    Properties+::: {
      ProfileConfiguration:
        if !std.isObject(ProfileConfiguration) then (error 'ProfileConfiguration must be an object')
        else ProfileConfiguration,
    },
  },
  setValidationConfigurations(ValidationConfigurations): {
    Properties+::: {
      ValidationConfigurations:
        if !std.isArray(ValidationConfigurations) then (error 'ValidationConfigurations must be an array')
        else ValidationConfigurations,
    },
  },
  pushValidationConfigurations(ValidationConfigurations): {
    Properties+::: {
      ValidationConfigurations+: ValidationConfigurations,
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
