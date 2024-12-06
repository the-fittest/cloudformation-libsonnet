{
  new(
    Name,
    Type,
    RoleArn,
    EndpointName,
    ModelVariants,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 120 then error ('Name should have not more than 120 characters')
        else Name,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'ShadowMode' then (error "Type should be 'ShadowMode'")
        else Type,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else if std.length(EndpointName) > 63 then error ('EndpointName should have not more than 63 characters')
        else EndpointName,
      ModelVariants:
        if !std.isArray(ModelVariants) then (error 'ModelVariants must be an array')
        else if std.length(ModelVariants) > 2 then error ('ModelVariants cannot have more than 2 items')
        else ModelVariants,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::InferenceExperiment',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setEndpointMetadata(EndpointMetadata): {
    Properties+::: {
      EndpointMetadata:
        if !std.isObject(EndpointMetadata) then (error 'EndpointMetadata must be an object')
        else if !std.objectHas(EndpointMetadata, 'EndpointName') then (error ' have attribute EndpointName')
        else EndpointMetadata,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else Schedule,
    },
  },
  setKmsKey(KmsKey): {
    Properties+::: {
      KmsKey:
        if !std.isString(KmsKey) then (error 'KmsKey must be a string')
        else if std.isEmpty(KmsKey) then (error 'KmsKey must be not empty')
        else if std.length(KmsKey) > 2048 then error ('KmsKey should have not more than 2048 characters')
        else KmsKey,
    },
  },
  setDataStorageConfig(DataStorageConfig): {
    Properties+::: {
      DataStorageConfig:
        if !std.isObject(DataStorageConfig) then (error 'DataStorageConfig must be an object')
        else if !std.objectHas(DataStorageConfig, 'Destination') then (error ' have attribute Destination')
        else DataStorageConfig,
    },
  },
  setShadowModeConfig(ShadowModeConfig): {
    Properties+::: {
      ShadowModeConfig:
        if !std.isObject(ShadowModeConfig) then (error 'ShadowModeConfig must be an object')
        else if !std.objectHas(ShadowModeConfig, 'SourceModelVariantName') then (error ' have attribute SourceModelVariantName')
        else if !std.objectHas(ShadowModeConfig, 'ShadowModelVariants') then (error ' have attribute ShadowModelVariants')
        else ShadowModeConfig,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isString(LastModifiedTime) then (error 'LastModifiedTime must be a string')
        else if std.isEmpty(LastModifiedTime) then (error 'LastModifiedTime must be not empty')
        else LastModifiedTime,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'Creating' && Status != 'Created' && Status != 'Updating' && Status != 'Starting' && Status != 'Stopping' && Status != 'Running' && Status != 'Completed' && Status != 'Cancelled' then (error "Status should be 'Creating' or 'Created' or 'Updating' or 'Starting' or 'Stopping' or 'Running' or 'Completed' or 'Cancelled'")
        else Status,
    },
  },
  setStatusReason(StatusReason): {
    Properties+::: {
      StatusReason:
        if !std.isString(StatusReason) then (error 'StatusReason must be a string')
        else if std.isEmpty(StatusReason) then (error 'StatusReason must be not empty')
        else if std.length(StatusReason) < 1 then error ('StatusReason should have at least 1 characters')
        else if std.length(StatusReason) > 1024 then error ('StatusReason should have not more than 1024 characters')
        else StatusReason,
    },
  },
  setDesiredState(DesiredState): {
    Properties+::: {
      DesiredState:
        if !std.isString(DesiredState) then (error 'DesiredState must be a string')
        else if std.isEmpty(DesiredState) then (error 'DesiredState must be not empty')
        else if DesiredState != 'Running' && DesiredState != 'Completed' && DesiredState != 'Cancelled' then (error "DesiredState should be 'Running' or 'Completed' or 'Cancelled'")
        else DesiredState,
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
