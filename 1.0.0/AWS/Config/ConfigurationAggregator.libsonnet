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
    Type: 'AWS::Config::ConfigurationAggregator',
  },
  setAccountAggregationSources(AccountAggregationSources): {
    Properties+::: {
      AccountAggregationSources:
        if !std.isArray(AccountAggregationSources) then (error 'AccountAggregationSources must be an array')
        else AccountAggregationSources,
    },
  },
  pushAccountAggregationSources(AccountAggregationSources): {
    Properties+::: {
      AccountAggregationSources+: AccountAggregationSources,
    },
  },
  setConfigurationAggregatorName(ConfigurationAggregatorName): {
    Properties+::: {
      ConfigurationAggregatorName:
        if !std.isString(ConfigurationAggregatorName) then (error 'ConfigurationAggregatorName must be a string')
        else if std.isEmpty(ConfigurationAggregatorName) then (error 'ConfigurationAggregatorName must be not empty')
        else if std.length(ConfigurationAggregatorName) < 1 then error ('ConfigurationAggregatorName should have at least 1 characters')
        else if std.length(ConfigurationAggregatorName) > 256 then error ('ConfigurationAggregatorName should have not more than 256 characters')
        else ConfigurationAggregatorName,
    },
  },
  setConfigurationAggregatorArn(ConfigurationAggregatorArn): {
    Properties+::: {
      ConfigurationAggregatorArn:
        if !std.isString(ConfigurationAggregatorArn) then (error 'ConfigurationAggregatorArn must be a string')
        else if std.isEmpty(ConfigurationAggregatorArn) then (error 'ConfigurationAggregatorArn must be not empty')
        else ConfigurationAggregatorArn,
    },
  },
  setOrganizationAggregationSource(OrganizationAggregationSource): {
    Properties+::: {
      OrganizationAggregationSource:
        if !std.isObject(OrganizationAggregationSource) then (error 'OrganizationAggregationSource must be an object')
        else if !std.objectHas(OrganizationAggregationSource, 'RoleArn') then (error ' have attribute RoleArn')
        else OrganizationAggregationSource,
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
