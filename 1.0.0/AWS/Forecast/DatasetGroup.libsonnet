{
  new(
    DatasetGroupName,
    Domain,
  ): {
    local base = self,
    Properties: {
      DatasetGroupName:
        if !std.isString(DatasetGroupName) then (error 'DatasetGroupName must be a string')
        else if std.isEmpty(DatasetGroupName) then (error 'DatasetGroupName must be not empty')
        else if std.length(DatasetGroupName) < 1 then error ('DatasetGroupName should have at least 1 characters')
        else if std.length(DatasetGroupName) > 63 then error ('DatasetGroupName should have not more than 63 characters')
        else DatasetGroupName,
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else if Domain != 'RETAIL' && Domain != 'CUSTOM' && Domain != 'INVENTORY_PLANNING' && Domain != 'EC2_CAPACITY' && Domain != 'WORK_FORCE' && Domain != 'WEB_TRAFFIC' && Domain != 'METRICS' then (error "Domain should be 'RETAIL' or 'CUSTOM' or 'INVENTORY_PLANNING' or 'EC2_CAPACITY' or 'WORK_FORCE' or 'WEB_TRAFFIC' or 'METRICS'")
        else Domain,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Forecast::DatasetGroup',
  },
  setDatasetArns(DatasetArns): {
    Properties+::: {
      DatasetArns:
        if !std.isArray(DatasetArns) then (error 'DatasetArns must be an array')
        else DatasetArns,
    },
  },
  pushDatasetArns(DatasetArns): {
    Properties+::: {
      DatasetArns+: DatasetArns,
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
  setDatasetGroupArn(DatasetGroupArn): {
    Properties+::: {
      DatasetGroupArn:
        if !std.isString(DatasetGroupArn) then (error 'DatasetGroupArn must be a string')
        else if std.isEmpty(DatasetGroupArn) then (error 'DatasetGroupArn must be not empty')
        else if std.length(DatasetGroupArn) > 256 then error ('DatasetGroupArn should have not more than 256 characters')
        else DatasetGroupArn,
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
