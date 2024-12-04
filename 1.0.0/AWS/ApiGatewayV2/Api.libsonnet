{
  // AWS ApiGatewayV2 Api
  Api: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ApiGatewayV2::Api',
    },
    withRouteSelectionExpression(RouteSelectionExpression): {
      assert std.isString(RouteSelectionExpression) : 'RouteSelectionExpression must be a string',
      Properties+::: {
        RouteSelectionExpression: RouteSelectionExpression,
      },
    },
    withBodyS3Location(BodyS3Location): {
      assert std.isObject(BodyS3Location) : 'BodyS3Location must be a object',
      Properties+::: {
        BodyS3Location: BodyS3Location,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withApiEndpoint(ApiEndpoint): {
      assert std.isString(ApiEndpoint) : 'ApiEndpoint must be a string',
      Properties+::: {
        ApiEndpoint: ApiEndpoint,
      },
    },
    withBasePath(BasePath): {
      assert std.isString(BasePath) : 'BasePath must be a string',
      Properties+::: {
        BasePath: BasePath,
      },
    },
    withFailOnWarnings(FailOnWarnings): {
      assert std.isBoolean(FailOnWarnings) : 'FailOnWarnings must be a boolean',
      Properties+::: {
        FailOnWarnings: FailOnWarnings,
      },
    },
    withDisableExecuteApiEndpoint(DisableExecuteApiEndpoint): {
      assert std.isBoolean(DisableExecuteApiEndpoint) : 'DisableExecuteApiEndpoint must be a boolean',
      Properties+::: {
        DisableExecuteApiEndpoint: DisableExecuteApiEndpoint,
      },
    },
    withDisableSchemaValidation(DisableSchemaValidation): {
      assert std.isBoolean(DisableSchemaValidation) : 'DisableSchemaValidation must be a boolean',
      Properties+::: {
        DisableSchemaValidation: DisableSchemaValidation,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withTarget(Target): {
      assert std.isString(Target) : 'Target must be a string',
      Properties+::: {
        Target: Target,
      },
    },
    withCredentialsArn(CredentialsArn): {
      assert std.isString(CredentialsArn) : 'CredentialsArn must be a string',
      Properties+::: {
        CredentialsArn: CredentialsArn,
      },
    },
    withCorsConfiguration(CorsConfiguration): {
      assert std.isObject(CorsConfiguration) : 'CorsConfiguration must be a object',
      Properties+::: {
        CorsConfiguration: CorsConfiguration,
      },
    },
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: {
        Version: Version,
      },
    },
    withProtocolType(ProtocolType): {
      assert std.isString(ProtocolType) : 'ProtocolType must be a string',
      Properties+::: {
        ProtocolType: ProtocolType,
      },
    },
    withRouteKey(RouteKey): {
      assert std.isString(RouteKey) : 'RouteKey must be a string',
      Properties+::: {
        RouteKey: RouteKey,
      },
    },
    withApiId(ApiId): {
      assert std.isString(ApiId) : 'ApiId must be a string',
      Properties+::: {
        ApiId: ApiId,
      },
    },
    withBody(Body): {
      assert std.isObject(Body) : 'Body must be a object',
      Properties+::: {
        Body: Body,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withApiKeySelectionExpression(ApiKeySelectionExpression): {
      assert std.isString(ApiKeySelectionExpression) : 'ApiKeySelectionExpression must be a string',
      Properties+::: {
        ApiKeySelectionExpression: ApiKeySelectionExpression,
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
  },
}
