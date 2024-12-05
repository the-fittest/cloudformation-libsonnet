{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTAnalytics::Datastore',
  },
  setDatastoreStorage(DatastoreStorage): {
    Properties+::: {
      DatastoreStorage:
        if !std.isObject(DatastoreStorage) then (error 'DatastoreStorage must be an object')
        else DatastoreStorage,
    },
  },
  setDatastoreName(DatastoreName): {
    Properties+::: {
      DatastoreName:
        if !std.isString(DatastoreName) then (error 'DatastoreName must be a string')
        else if std.isEmpty(DatastoreName) then (error 'DatastoreName must be not empty')
        else if std.length(DatastoreName) < 1 then error ('DatastoreName should have at least 1 characters')
        else if std.length(DatastoreName) > 128 then error ('DatastoreName should have not more than 128 characters')
        else DatastoreName,
    },
  },
  setDatastorePartitions(DatastorePartitions): {
    Properties+::: {
      DatastorePartitions:
        if !std.isObject(DatastorePartitions) then (error 'DatastorePartitions must be an object')
        else DatastorePartitions,
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
  setFileFormatConfiguration(FileFormatConfiguration): {
    Properties+::: {
      FileFormatConfiguration:
        if !std.isObject(FileFormatConfiguration) then (error 'FileFormatConfiguration must be an object')
        else FileFormatConfiguration,
    },
  },
  setRetentionPeriod(RetentionPeriod): {
    Properties+::: {
      RetentionPeriod:
        if !std.isObject(RetentionPeriod) then (error 'RetentionPeriod must be an object')
        else RetentionPeriod,
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
