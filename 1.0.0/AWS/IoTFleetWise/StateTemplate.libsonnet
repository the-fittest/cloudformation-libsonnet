{
  new(
    Name,
    SignalCatalogArn,
    StateTemplateProperties,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      SignalCatalogArn:
        if !std.isString(SignalCatalogArn) then (error 'SignalCatalogArn must be a string')
        else if std.isEmpty(SignalCatalogArn) then (error 'SignalCatalogArn must be not empty')
        else SignalCatalogArn,
      StateTemplateProperties:
        if !std.isArray(StateTemplateProperties) then (error 'StateTemplateProperties must be an array')
        else if std.length(StateTemplateProperties) < 1 then error ('StateTemplateProperties cannot have less than 1 items')
        else if std.length(StateTemplateProperties) > 500 then error ('StateTemplateProperties cannot have more than 500 items')
        else StateTemplateProperties,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTFleetWise::StateTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setLastModificationTime(LastModificationTime): {
    Properties+::: {
      LastModificationTime:
        if !std.isString(LastModificationTime) then (error 'LastModificationTime must be a string')
        else if std.isEmpty(LastModificationTime) then (error 'LastModificationTime must be not empty')
        else LastModificationTime,
    },
  },
  setDataExtraDimensions(DataExtraDimensions): {
    Properties+::: {
      DataExtraDimensions:
        if !std.isArray(DataExtraDimensions) then (error 'DataExtraDimensions must be an array')
        else if std.length(DataExtraDimensions) > 5 then error ('DataExtraDimensions cannot have more than 5 items')
        else DataExtraDimensions,
    },
  },
  pushDataExtraDimensions(DataExtraDimensions): {
    Properties+::: {
      DataExtraDimensions+: DataExtraDimensions,
    },
  },
  setMetadataExtraDimensions(MetadataExtraDimensions): {
    Properties+::: {
      MetadataExtraDimensions:
        if !std.isArray(MetadataExtraDimensions) then (error 'MetadataExtraDimensions must be an array')
        else if std.length(MetadataExtraDimensions) > 5 then error ('MetadataExtraDimensions cannot have more than 5 items')
        else MetadataExtraDimensions,
    },
  },
  pushMetadataExtraDimensions(MetadataExtraDimensions): {
    Properties+::: {
      MetadataExtraDimensions+: MetadataExtraDimensions,
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
