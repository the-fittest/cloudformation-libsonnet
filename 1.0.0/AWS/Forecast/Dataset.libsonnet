{
  new(
    DatasetName,
    DatasetType,
    Domain,
    Schema,
  ): {
    local base = self,
    Properties: {
      DatasetName:
        if !std.isString(DatasetName) then (error 'DatasetName must be a string')
        else if std.isEmpty(DatasetName) then (error 'DatasetName must be not empty')
        else if std.length(DatasetName) < 1 then error ('DatasetName should have at least 1 characters')
        else if std.length(DatasetName) > 63 then error ('DatasetName should have not more than 63 characters')
        else DatasetName,
      DatasetType:
        if !std.isString(DatasetType) then (error 'DatasetType must be a string')
        else if std.isEmpty(DatasetType) then (error 'DatasetType must be not empty')
        else if DatasetType != 'TARGET_TIME_SERIES' && DatasetType != 'RELATED_TIME_SERIES' && DatasetType != 'ITEM_METADATA' then (error "DatasetType should be 'TARGET_TIME_SERIES' or 'RELATED_TIME_SERIES' or 'ITEM_METADATA'")
        else DatasetType,
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else if Domain != 'RETAIL' && Domain != 'CUSTOM' && Domain != 'INVENTORY_PLANNING' && Domain != 'EC2_CAPACITY' && Domain != 'WORK_FORCE' && Domain != 'WEB_TRAFFIC' && Domain != 'METRICS' then (error "Domain should be 'RETAIL' or 'CUSTOM' or 'INVENTORY_PLANNING' or 'EC2_CAPACITY' or 'WORK_FORCE' or 'WEB_TRAFFIC' or 'METRICS'")
        else Domain,
      Schema:
        if !std.isObject(Schema) then (error 'Schema must be an object')
        else Schema,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Forecast::Dataset',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
    },
  },
  setDataFrequency(DataFrequency): {
    Properties+::: {
      DataFrequency:
        if !std.isString(DataFrequency) then (error 'DataFrequency must be a string')
        else if std.isEmpty(DataFrequency) then (error 'DataFrequency must be not empty')
        else DataFrequency,
    },
  },
  setEncryptionConfig(EncryptionConfig): {
    Properties+::: {
      EncryptionConfig:
        if !std.isObject(EncryptionConfig) then (error 'EncryptionConfig must be an object')
        else EncryptionConfig,
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
