{
  new(
    DocumentClassifierName,
    DataAccessRoleArn,
    InputDataConfig,
    LanguageCode,
  ): {
    local base = self,
    Properties: {
      DocumentClassifierName:
        if !std.isString(DocumentClassifierName) then (error 'DocumentClassifierName must be a string')
        else if std.isEmpty(DocumentClassifierName) then (error 'DocumentClassifierName must be not empty')
        else if std.length(DocumentClassifierName) < 1 then error ('DocumentClassifierName should have at least 1 characters')
        else if std.length(DocumentClassifierName) > 63 then error ('DocumentClassifierName should have not more than 63 characters')
        else DocumentClassifierName,
      DataAccessRoleArn:
        if !std.isString(DataAccessRoleArn) then (error 'DataAccessRoleArn must be a string')
        else if std.isEmpty(DataAccessRoleArn) then (error 'DataAccessRoleArn must be not empty')
        else if std.length(DataAccessRoleArn) < 20 then error ('DataAccessRoleArn should have at least 20 characters')
        else if std.length(DataAccessRoleArn) > 2048 then error ('DataAccessRoleArn should have not more than 2048 characters')
        else DataAccessRoleArn,
      InputDataConfig:
        if !std.isObject(InputDataConfig) then (error 'InputDataConfig must be an object')
        else InputDataConfig,
      LanguageCode:
        if !std.isString(LanguageCode) then (error 'LanguageCode must be a string')
        else if std.isEmpty(LanguageCode) then (error 'LanguageCode must be not empty')
        else if LanguageCode != 'en' && LanguageCode != 'es' && LanguageCode != 'fr' && LanguageCode != 'it' && LanguageCode != 'de' && LanguageCode != 'pt' then (error "LanguageCode should be 'en' or 'es' or 'fr' or 'it' or 'de' or 'pt'")
        else LanguageCode,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Comprehend::DocumentClassifier',
  },
  setOutputDataConfig(OutputDataConfig): {
    Properties+::: {
      OutputDataConfig:
        if !std.isObject(OutputDataConfig) then (error 'OutputDataConfig must be an object')
        else OutputDataConfig,
    },
  },
  setModelKmsKeyId(ModelKmsKeyId): {
    Properties+::: {
      ModelKmsKeyId:
        if !std.isString(ModelKmsKeyId) then (error 'ModelKmsKeyId must be a string')
        else if std.isEmpty(ModelKmsKeyId) then (error 'ModelKmsKeyId must be not empty')
        else if std.length(ModelKmsKeyId) < 1 then error ('ModelKmsKeyId should have at least 1 characters')
        else if std.length(ModelKmsKeyId) > 2048 then error ('ModelKmsKeyId should have not more than 2048 characters')
        else ModelKmsKeyId,
    },
  },
  setModelPolicy(ModelPolicy): {
    Properties+::: {
      ModelPolicy:
        if !std.isString(ModelPolicy) then (error 'ModelPolicy must be a string')
        else if std.isEmpty(ModelPolicy) then (error 'ModelPolicy must be not empty')
        else if std.length(ModelPolicy) < 1 then error ('ModelPolicy should have at least 1 characters')
        else if std.length(ModelPolicy) > 20000 then error ('ModelPolicy should have not more than 20000 characters')
        else ModelPolicy,
    },
  },
  setMode(Mode): {
    Properties+::: {
      Mode:
        if !std.isString(Mode) then (error 'Mode must be a string')
        else if std.isEmpty(Mode) then (error 'Mode must be not empty')
        else if Mode != 'MULTI_CLASS' && Mode != 'MULTI_LABEL' then (error "Mode should be 'MULTI_CLASS' or 'MULTI_LABEL'")
        else Mode,
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
  setVersionName(VersionName): {
    Properties+::: {
      VersionName:
        if !std.isString(VersionName) then (error 'VersionName must be a string')
        else if std.isEmpty(VersionName) then (error 'VersionName must be not empty')
        else if std.length(VersionName) < 1 then error ('VersionName should have at least 1 characters')
        else if std.length(VersionName) > 63 then error ('VersionName should have not more than 63 characters')
        else VersionName,
    },
  },
  setVolumeKmsKeyId(VolumeKmsKeyId): {
    Properties+::: {
      VolumeKmsKeyId:
        if !std.isString(VolumeKmsKeyId) then (error 'VolumeKmsKeyId must be a string')
        else if std.isEmpty(VolumeKmsKeyId) then (error 'VolumeKmsKeyId must be not empty')
        else if std.length(VolumeKmsKeyId) < 1 then error ('VolumeKmsKeyId should have at least 1 characters')
        else if std.length(VolumeKmsKeyId) > 2048 then error ('VolumeKmsKeyId should have not more than 2048 characters')
        else VolumeKmsKeyId,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else if !std.objectHas(VpcConfig, 'SecurityGroupIds') then (error ' have attribute SecurityGroupIds')
        else if !std.objectHas(VpcConfig, 'Subnets') then (error ' have attribute Subnets')
        else VpcConfig,
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
