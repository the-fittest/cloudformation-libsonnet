{
  new(
    ConfigurationDefinitions,
  ): {
    local base = self,
    Properties: {
      ConfigurationDefinitions:
        if !std.isArray(ConfigurationDefinitions) then (error 'ConfigurationDefinitions must be an array')
        else ConfigurationDefinitions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSMQuickSetup::ConfigurationManager',
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setLastModifiedAt(LastModifiedAt): {
    Properties+::: {
      LastModifiedAt:
        if !std.isString(LastModifiedAt) then (error 'LastModifiedAt must be a string')
        else if std.isEmpty(LastModifiedAt) then (error 'LastModifiedAt must be not empty')
        else LastModifiedAt,
    },
  },
  setManagerArn(ManagerArn): {
    Properties+::: {
      ManagerArn:
        if !std.isString(ManagerArn) then (error 'ManagerArn must be a string')
        else if std.isEmpty(ManagerArn) then (error 'ManagerArn must be not empty')
        else ManagerArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setStatusSummaries(StatusSummaries): {
    Properties+::: {
      StatusSummaries:
        if !std.isArray(StatusSummaries) then (error 'StatusSummaries must be an array')
        else StatusSummaries,
    },
  },
  pushStatusSummaries(StatusSummaries): {
    Properties+::: {
      StatusSummaries+: StatusSummaries,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
