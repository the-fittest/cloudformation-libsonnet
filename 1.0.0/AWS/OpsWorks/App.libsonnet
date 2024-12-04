{
  new(
    Type,
    Name,
    StackId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(StackId) : 'StackId must be a string',
      StackId: StackId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::App',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withAppSource(AppSource): {
    assert std.isObject(AppSource) : 'AppSource must be a object',
    Properties+::: {
      AppSource: AppSource,
    },
  },
  withAttributes(Attributes): {
    assert std.isObject(Attributes) : 'Attributes must be a object',
    Properties+::: {
      Attributes: Attributes,
    },
  },
  withDataSources(DataSources): {
    Properties+::: {
      DataSources: (if std.isArray(DataSources) then DataSources else [DataSources]),
    },
  },
  withDataSourcesMixin(DataSources): {
    Properties+::: {
      DataSources+: (if std.isArray(DataSources) then DataSources else [DataSources]),
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDomains(Domains): {
    Properties+::: {
      Domains: (if std.isArray(Domains) then Domains else [Domains]),
    },
  },
  withDomainsMixin(Domains): {
    Properties+::: {
      Domains+: (if std.isArray(Domains) then Domains else [Domains]),
    },
  },
  withEnableSsl(EnableSsl): {
    assert std.isBoolean(EnableSsl) : 'EnableSsl must be a boolean',
    Properties+::: {
      EnableSsl: EnableSsl,
    },
  },
  withEnvironment(Environment): {
    Properties+::: {
      Environment: (if std.isArray(Environment) then Environment else [Environment]),
    },
  },
  withEnvironmentMixin(Environment): {
    Properties+::: {
      Environment+: (if std.isArray(Environment) then Environment else [Environment]),
    },
  },
  withShortname(Shortname): {
    assert std.isString(Shortname) : 'Shortname must be a string',
    Properties+::: {
      Shortname: Shortname,
    },
  },
  withSslConfiguration(SslConfiguration): {
    assert std.isObject(SslConfiguration) : 'SslConfiguration must be a object',
    Properties+::: {
      SslConfiguration: SslConfiguration,
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
