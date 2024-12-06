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
    Type: 'AWS::CloudWatch::MetricStream',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setCreationDate(CreationDate): {
    Properties+::: {
      CreationDate:
        if !std.isString(CreationDate) then (error 'CreationDate must be a string')
        else if std.isEmpty(CreationDate) then (error 'CreationDate must be not empty')
        else CreationDate,
    },
  },
  setExcludeFilters(ExcludeFilters): {
    Properties+::: {
      ExcludeFilters:
        if !std.isArray(ExcludeFilters) then (error 'ExcludeFilters must be an array')
        else if std.length(ExcludeFilters) > 1000 then error ('ExcludeFilters cannot have more than 1000 items')
        else ExcludeFilters,
    },
  },
  pushExcludeFilters(ExcludeFilters): {
    Properties+::: {
      ExcludeFilters+: ExcludeFilters,
    },
  },
  setFirehoseArn(FirehoseArn): {
    Properties+::: {
      FirehoseArn:
        if !std.isString(FirehoseArn) then (error 'FirehoseArn must be a string')
        else if std.isEmpty(FirehoseArn) then (error 'FirehoseArn must be not empty')
        else if std.length(FirehoseArn) < 20 then error ('FirehoseArn should have at least 20 characters')
        else if std.length(FirehoseArn) > 2048 then error ('FirehoseArn should have not more than 2048 characters')
        else FirehoseArn,
    },
  },
  setIncludeFilters(IncludeFilters): {
    Properties+::: {
      IncludeFilters:
        if !std.isArray(IncludeFilters) then (error 'IncludeFilters must be an array')
        else if std.length(IncludeFilters) > 1000 then error ('IncludeFilters cannot have more than 1000 items')
        else IncludeFilters,
    },
  },
  pushIncludeFilters(IncludeFilters): {
    Properties+::: {
      IncludeFilters+: IncludeFilters,
    },
  },
  setLastUpdateDate(LastUpdateDate): {
    Properties+::: {
      LastUpdateDate:
        if !std.isString(LastUpdateDate) then (error 'LastUpdateDate must be a string')
        else if std.isEmpty(LastUpdateDate) then (error 'LastUpdateDate must be not empty')
        else LastUpdateDate,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if std.length(State) < 1 then error ('State should have at least 1 characters')
        else if std.length(State) > 255 then error ('State should have not more than 255 characters')
        else State,
    },
  },
  setOutputFormat(OutputFormat): {
    Properties+::: {
      OutputFormat:
        if !std.isString(OutputFormat) then (error 'OutputFormat must be a string')
        else if std.isEmpty(OutputFormat) then (error 'OutputFormat must be not empty')
        else if std.length(OutputFormat) < 1 then error ('OutputFormat should have at least 1 characters')
        else if std.length(OutputFormat) > 255 then error ('OutputFormat should have not more than 255 characters')
        else OutputFormat,
    },
  },
  setStatisticsConfigurations(StatisticsConfigurations): {
    Properties+::: {
      StatisticsConfigurations:
        if !std.isArray(StatisticsConfigurations) then (error 'StatisticsConfigurations must be an array')
        else if std.length(StatisticsConfigurations) > 100 then error ('StatisticsConfigurations cannot have more than 100 items')
        else StatisticsConfigurations,
    },
  },
  pushStatisticsConfigurations(StatisticsConfigurations): {
    Properties+::: {
      StatisticsConfigurations+: StatisticsConfigurations,
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
  setIncludeLinkedAccountsMetrics(IncludeLinkedAccountsMetrics): {
    Properties+::: {
      IncludeLinkedAccountsMetrics:
        if !std.isBoolean(IncludeLinkedAccountsMetrics) then (error 'IncludeLinkedAccountsMetrics must be a boolean') else IncludeLinkedAccountsMetrics,
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
