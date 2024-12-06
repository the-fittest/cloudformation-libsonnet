{
  new(
    FlywheelName,
    DataAccessRoleArn,
    DataLakeS3Uri,
  ): {
    local base = self,
    Properties: {
      FlywheelName:
        if !std.isString(FlywheelName) then (error 'FlywheelName must be a string')
        else if std.isEmpty(FlywheelName) then (error 'FlywheelName must be not empty')
        else if std.length(FlywheelName) < 1 then error ('FlywheelName should have at least 1 characters')
        else if std.length(FlywheelName) > 63 then error ('FlywheelName should have not more than 63 characters')
        else FlywheelName,
      DataAccessRoleArn:
        if !std.isString(DataAccessRoleArn) then (error 'DataAccessRoleArn must be a string')
        else if std.isEmpty(DataAccessRoleArn) then (error 'DataAccessRoleArn must be not empty')
        else if std.length(DataAccessRoleArn) < 20 then error ('DataAccessRoleArn should have at least 20 characters')
        else if std.length(DataAccessRoleArn) > 2048 then error ('DataAccessRoleArn should have not more than 2048 characters')
        else DataAccessRoleArn,
      DataLakeS3Uri:
        if !std.isString(DataLakeS3Uri) then (error 'DataLakeS3Uri must be a string')
        else if std.isEmpty(DataLakeS3Uri) then (error 'DataLakeS3Uri must be not empty')
        else if std.length(DataLakeS3Uri) > 512 then error ('DataLakeS3Uri should have not more than 512 characters')
        else DataLakeS3Uri,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Comprehend::Flywheel',
  },
  setActiveModelArn(ActiveModelArn): {
    Properties+::: {
      ActiveModelArn:
        if !std.isString(ActiveModelArn) then (error 'ActiveModelArn must be a string')
        else if std.isEmpty(ActiveModelArn) then (error 'ActiveModelArn must be not empty')
        else if std.length(ActiveModelArn) > 256 then error ('ActiveModelArn should have not more than 256 characters')
        else ActiveModelArn,
    },
  },
  setDataSecurityConfig(DataSecurityConfig): {
    Properties+::: {
      DataSecurityConfig:
        if !std.isObject(DataSecurityConfig) then (error 'DataSecurityConfig must be an object')
        else DataSecurityConfig,
    },
  },
  setModelType(ModelType): {
    Properties+::: {
      ModelType:
        if !std.isString(ModelType) then (error 'ModelType must be a string')
        else if std.isEmpty(ModelType) then (error 'ModelType must be not empty')
        else if ModelType != 'DOCUMENT_CLASSIFIER' && ModelType != 'ENTITY_RECOGNIZER' then (error "ModelType should be 'DOCUMENT_CLASSIFIER' or 'ENTITY_RECOGNIZER'")
        else ModelType,
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
  setTaskConfig(TaskConfig): {
    Properties+::: {
      TaskConfig:
        if !std.isObject(TaskConfig) then (error 'TaskConfig must be an object')
        else if !std.objectHas(TaskConfig, 'LanguageCode') then (error ' have attribute LanguageCode')
        else TaskConfig,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
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
