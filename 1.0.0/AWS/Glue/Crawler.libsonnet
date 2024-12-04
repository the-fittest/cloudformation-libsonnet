{
  new(
    Role,
    Targets,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Role) : 'Role must be a string',
      Role: Role,
      assert std.isObject(Targets) : 'Targets must be an object',
      Targets: Targets,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::Crawler',
  },
  withClassifiers(Classifiers): {
    Properties+::: {
      Classifiers: (if std.isArray(Classifiers) then Classifiers else [Classifiers]),
    },
  },
  withClassifiersMixin(Classifiers): {
    Properties+::: {
      Classifiers+: (if std.isArray(Classifiers) then Classifiers else [Classifiers]),
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withSchemaChangePolicy(SchemaChangePolicy): {
    assert std.isObject(SchemaChangePolicy) : 'SchemaChangePolicy must be a object',
    Properties+::: {
      SchemaChangePolicy: SchemaChangePolicy,
    },
  },
  withConfiguration(Configuration): {
    assert std.isString(Configuration) : 'Configuration must be a string',
    Properties+::: {
      Configuration: Configuration,
    },
  },
  withRecrawlPolicy(RecrawlPolicy): {
    assert std.isObject(RecrawlPolicy) : 'RecrawlPolicy must be a object',
    Properties+::: {
      RecrawlPolicy: RecrawlPolicy,
    },
  },
  withDatabaseName(DatabaseName): {
    assert std.isString(DatabaseName) : 'DatabaseName must be a string',
    Properties+::: {
      DatabaseName: DatabaseName,
    },
  },
  withCrawlerSecurityConfiguration(CrawlerSecurityConfiguration): {
    assert std.isString(CrawlerSecurityConfiguration) : 'CrawlerSecurityConfiguration must be a string',
    Properties+::: {
      CrawlerSecurityConfiguration: CrawlerSecurityConfiguration,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withLakeFormationConfiguration(LakeFormationConfiguration): {
    assert std.isObject(LakeFormationConfiguration) : 'LakeFormationConfiguration must be a object',
    Properties+::: {
      LakeFormationConfiguration: LakeFormationConfiguration,
    },
  },
  withSchedule(Schedule): {
    assert std.isObject(Schedule) : 'Schedule must be a object',
    Properties+::: {
      Schedule: Schedule,
    },
  },
  withTablePrefix(TablePrefix): {
    assert std.isString(TablePrefix) : 'TablePrefix must be a string',
    Properties+::: {
      TablePrefix: TablePrefix,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
