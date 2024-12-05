{
  new(
    Name,
    DatasetType,
    DatasetGroupArn,
    SchemaArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 63 then error ('Name should have not more than 63 characters')
        else Name,
      DatasetType:
        if !std.isString(DatasetType) then (error 'DatasetType must be a string')
        else if std.isEmpty(DatasetType) then (error 'DatasetType must be not empty')
        else if DatasetType != 'Interactions' && DatasetType != 'Items' && DatasetType != 'Users' then (error "DatasetType should be 'Interactions' or 'Items' or 'Users'")
        else if std.length(DatasetType) > 256 then error ('DatasetType should have not more than 256 characters')
        else DatasetType,
      DatasetGroupArn:
        if !std.isString(DatasetGroupArn) then (error 'DatasetGroupArn must be a string')
        else if std.isEmpty(DatasetGroupArn) then (error 'DatasetGroupArn must be not empty')
        else if std.length(DatasetGroupArn) > 256 then error ('DatasetGroupArn should have not more than 256 characters')
        else DatasetGroupArn,
      SchemaArn:
        if !std.isString(SchemaArn) then (error 'SchemaArn must be a string')
        else if std.isEmpty(SchemaArn) then (error 'SchemaArn must be not empty')
        else if std.length(SchemaArn) > 256 then error ('SchemaArn should have not more than 256 characters')
        else SchemaArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Personalize::Dataset',
  },
  setDatasetArn(DatasetArn): {
    Properties+::: {
      DatasetArn:
        if !std.isString(DatasetArn) then (error 'DatasetArn must be a string')
        else if std.isEmpty(DatasetArn) then (error 'DatasetArn must be not empty')
        else if std.length(DatasetArn) > 256 then error ('DatasetArn should have not more than 256 characters')
        else DatasetArn,
    },
  },
  setDatasetImportJob(DatasetImportJob): {
    Properties+::: {
      DatasetImportJob:
        if !std.isObject(DatasetImportJob) then (error 'DatasetImportJob must be an object')
        else DatasetImportJob,
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
