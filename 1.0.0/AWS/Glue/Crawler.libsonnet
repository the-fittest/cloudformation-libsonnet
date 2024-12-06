{
  new(
    Role,
    Targets,
  ): {
    local base = self,
    Properties: {
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else Role,
      Targets:
        if !std.isObject(Targets) then (error 'Targets must be an object')
        else Targets,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::Crawler',
  },
  setClassifiers(Classifiers): {
    Properties+::: {
      Classifiers:
        if !std.isArray(Classifiers) then (error 'Classifiers must be an array')
        else Classifiers,
    },
  },
  pushClassifiers(Classifiers): {
    Properties+::: {
      Classifiers+: Classifiers,
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
  setSchemaChangePolicy(SchemaChangePolicy): {
    Properties+::: {
      SchemaChangePolicy:
        if !std.isObject(SchemaChangePolicy) then (error 'SchemaChangePolicy must be an object')
        else SchemaChangePolicy,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration:
        if !std.isString(Configuration) then (error 'Configuration must be a string')
        else if std.isEmpty(Configuration) then (error 'Configuration must be not empty')
        else Configuration,
    },
  },
  setRecrawlPolicy(RecrawlPolicy): {
    Properties+::: {
      RecrawlPolicy:
        if !std.isObject(RecrawlPolicy) then (error 'RecrawlPolicy must be an object')
        else RecrawlPolicy,
    },
  },
  setDatabaseName(DatabaseName): {
    Properties+::: {
      DatabaseName:
        if !std.isString(DatabaseName) then (error 'DatabaseName must be a string')
        else if std.isEmpty(DatabaseName) then (error 'DatabaseName must be not empty')
        else DatabaseName,
    },
  },
  setCrawlerSecurityConfiguration(CrawlerSecurityConfiguration): {
    Properties+::: {
      CrawlerSecurityConfiguration:
        if !std.isString(CrawlerSecurityConfiguration) then (error 'CrawlerSecurityConfiguration must be a string')
        else if std.isEmpty(CrawlerSecurityConfiguration) then (error 'CrawlerSecurityConfiguration must be not empty')
        else CrawlerSecurityConfiguration,
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
  setLakeFormationConfiguration(LakeFormationConfiguration): {
    Properties+::: {
      LakeFormationConfiguration:
        if !std.isObject(LakeFormationConfiguration) then (error 'LakeFormationConfiguration must be an object')
        else LakeFormationConfiguration,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else Schedule,
    },
  },
  setTablePrefix(TablePrefix): {
    Properties+::: {
      TablePrefix:
        if !std.isString(TablePrefix) then (error 'TablePrefix must be a string')
        else if std.isEmpty(TablePrefix) then (error 'TablePrefix must be not empty')
        else TablePrefix,
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
