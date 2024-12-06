{
  new(
    Name,
    KmsKey,
    SourceURI,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      KmsKey:
        if !std.isString(KmsKey) then (error 'KmsKey must be a string')
        else if std.isEmpty(KmsKey) then (error 'KmsKey must be not empty')
        else if std.length(KmsKey) < 1 then error ('KmsKey should have at least 1 characters')
        else if std.length(KmsKey) > 255 then error ('KmsKey should have not more than 255 characters')
        else KmsKey,
      SourceURI:
        if !std.isString(SourceURI) then (error 'SourceURI must be a string')
        else if std.isEmpty(SourceURI) then (error 'SourceURI must be not empty')
        else if std.length(SourceURI) < 1 then error ('SourceURI should have at least 1 characters')
        else if std.length(SourceURI) > 1000 then error ('SourceURI should have not more than 1000 characters')
        else SourceURI,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppIntegrations::DataIntegration',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 255 then error ('Id should have not more than 255 characters')
        else Id,
    },
  },
  setDataIntegrationArn(DataIntegrationArn): {
    Properties+::: {
      DataIntegrationArn:
        if !std.isString(DataIntegrationArn) then (error 'DataIntegrationArn must be a string')
        else if std.isEmpty(DataIntegrationArn) then (error 'DataIntegrationArn must be not empty')
        else if std.length(DataIntegrationArn) < 1 then error ('DataIntegrationArn should have at least 1 characters')
        else if std.length(DataIntegrationArn) > 2048 then error ('DataIntegrationArn should have not more than 2048 characters')
        else DataIntegrationArn,
    },
  },
  setScheduleConfig(ScheduleConfig): {
    Properties+::: {
      ScheduleConfig:
        if !std.isObject(ScheduleConfig) then (error 'ScheduleConfig must be an object')
        else if !std.objectHas(ScheduleConfig, 'ScheduleExpression') then (error ' have attribute ScheduleExpression')
        else ScheduleConfig,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setFileConfiguration(FileConfiguration): {
    Properties+::: {
      FileConfiguration:
        if !std.isObject(FileConfiguration) then (error 'FileConfiguration must be an object')
        else if !std.objectHas(FileConfiguration, 'Folders') then (error ' have attribute Folders')
        else FileConfiguration,
    },
  },
  setObjectConfiguration(ObjectConfiguration): {
    Properties+::: {
      ObjectConfiguration:
        if !std.isObject(ObjectConfiguration) then (error 'ObjectConfiguration must be an object')
        else ObjectConfiguration,
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
