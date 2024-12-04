{
  // AWS ApiGateway Method
  Method: {
    new(
      RestApiId,
      ResourceId,
      HttpMethod,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
        assert std.isString(HttpMethod) : 'HttpMethod must be a string',
        HttpMethod: HttpMethod,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ApiGateway::Method',
    },
    withIntegration(Integration): {
      assert std.isObject(Integration) : 'Integration must be a object',
      Properties+::: {
        Integration: Integration,
      },
    },
    withOperationName(OperationName): {
      assert std.isString(OperationName) : 'OperationName must be a string',
      Properties+::: {
        OperationName: OperationName,
      },
    },
    withRequestModels(RequestModels): {
      assert std.isObject(RequestModels) : 'RequestModels must be a object',
      Properties+::: {
        RequestModels: RequestModels,
      },
    },
    withAuthorizationScopes(AuthorizationScopes): {
      Properties+::: {
        AuthorizationScopes: (if std.isArray(AuthorizationScopes) then AuthorizationScopes else [AuthorizationScopes]),
      },
    },
    withAuthorizationScopesMixin(AuthorizationScopes): {
      Properties+::: {
        AuthorizationScopes+: (if std.isArray(AuthorizationScopes) then AuthorizationScopes else [AuthorizationScopes]),
      },
    },
    withRequestValidatorId(RequestValidatorId): {
      assert std.isString(RequestValidatorId) : 'RequestValidatorId must be a string',
      Properties+::: {
        RequestValidatorId: RequestValidatorId,
      },
    },
    withRequestParameters(RequestParameters): {
      assert std.isObject(RequestParameters) : 'RequestParameters must be a object',
      Properties+::: {
        RequestParameters: RequestParameters,
      },
    },
    withMethodResponses(MethodResponses): {
      Properties+::: {
        MethodResponses: (if std.isArray(MethodResponses) then MethodResponses else [MethodResponses]),
      },
    },
    withMethodResponsesMixin(MethodResponses): {
      Properties+::: {
        MethodResponses+: (if std.isArray(MethodResponses) then MethodResponses else [MethodResponses]),
      },
    },
    withAuthorizerId(AuthorizerId): {
      assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
      Properties+::: {
        AuthorizerId: AuthorizerId,
      },
    },
    withApiKeyRequired(ApiKeyRequired): {
      assert std.isBoolean(ApiKeyRequired) : 'ApiKeyRequired must be a boolean',
      Properties+::: {
        ApiKeyRequired: ApiKeyRequired,
      },
    },
    withAuthorizationType(AuthorizationType): {
      assert std.isString(AuthorizationType) : 'AuthorizationType must be a string',
      Properties+::: {
        AuthorizationType: AuthorizationType,
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
