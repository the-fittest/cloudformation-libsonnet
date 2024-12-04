{
  new(
    EnvironmentIdentifier,
    ApplicationIdentifier,
    ServiceIdentifier,
    RouteType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
      EnvironmentIdentifier: EnvironmentIdentifier,
      assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
      ApplicationIdentifier: ApplicationIdentifier,
      assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
      ServiceIdentifier: ServiceIdentifier,
      assert std.isString(RouteType) : 'RouteType must be a string',
      assert RouteType == 'DEFAULT' || RouteType == 'URI_PATH' : "RouteType should be 'DEFAULT' or 'URI_PATH'",
      RouteType: RouteType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RefactorSpaces::Route',
  },
  withPathResourceToId(PathResourceToId): {
    assert std.isString(PathResourceToId) : 'PathResourceToId must be a string',
    Properties+::: {
      PathResourceToId: PathResourceToId,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withRouteIdentifier(RouteIdentifier): {
    assert std.isString(RouteIdentifier) : 'RouteIdentifier must be a string',
    Properties+::: {
      RouteIdentifier: RouteIdentifier,
    },
  },
  withDefaultRoute(DefaultRoute): {
    assert std.isObject(DefaultRoute) : 'DefaultRoute must be a object',
    Properties+::: {
      DefaultRoute: DefaultRoute,
    },
  },
  withUriPathRoute(UriPathRoute): {
    assert std.isObject(UriPathRoute) : 'UriPathRoute must be a object',
    Properties+::: {
      UriPathRoute: UriPathRoute,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
