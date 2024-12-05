{
  new(
    RestApiId,
    ResourceId,
    HttpMethod,
  ): {
    local base = self,
    Properties: {
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else ResourceId,
      HttpMethod:
        if !std.isString(HttpMethod) then (error 'HttpMethod must be a string')
        else if std.isEmpty(HttpMethod) then (error 'HttpMethod must be not empty')
        else HttpMethod,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::Method',
  },
  setIntegration(Integration): {
    Properties+::: {
      Integration:
        if !std.isObject(Integration) then (error 'Integration must be an object')
        else if !std.objectHas(Integration, 'Type') then (error ' have attribute Type')
        else Integration,
    },
  },
  setOperationName(OperationName): {
    Properties+::: {
      OperationName:
        if !std.isString(OperationName) then (error 'OperationName must be a string')
        else if std.isEmpty(OperationName) then (error 'OperationName must be not empty')
        else OperationName,
    },
  },
  setRequestModels(RequestModels): {
    Properties+::: {
      RequestModels:
        if !std.isObject(RequestModels) then (error 'RequestModels must be an object')
        else RequestModels,
    },
  },
  setAuthorizationScopes(AuthorizationScopes): {
    Properties+::: {
      AuthorizationScopes:
        if !std.isArray(AuthorizationScopes) then (error 'AuthorizationScopes must be an array')
        else AuthorizationScopes,
    },
  },
  setAuthorizationScopesMixin(AuthorizationScopes): {
    Properties+::: {
      AuthorizationScopes+: AuthorizationScopes,
    },
  },
  setRequestValidatorId(RequestValidatorId): {
    Properties+::: {
      RequestValidatorId:
        if !std.isString(RequestValidatorId) then (error 'RequestValidatorId must be a string')
        else if std.isEmpty(RequestValidatorId) then (error 'RequestValidatorId must be not empty')
        else RequestValidatorId,
    },
  },
  setRequestParameters(RequestParameters): {
    Properties+::: {
      RequestParameters:
        if !std.isObject(RequestParameters) then (error 'RequestParameters must be an object')
        else RequestParameters,
    },
  },
  setMethodResponses(MethodResponses): {
    Properties+::: {
      MethodResponses:
        if !std.isArray(MethodResponses) then (error 'MethodResponses must be an array')
        else MethodResponses,
    },
  },
  setMethodResponsesMixin(MethodResponses): {
    Properties+::: {
      MethodResponses+: MethodResponses,
    },
  },
  setAuthorizerId(AuthorizerId): {
    Properties+::: {
      AuthorizerId:
        if !std.isString(AuthorizerId) then (error 'AuthorizerId must be a string')
        else if std.isEmpty(AuthorizerId) then (error 'AuthorizerId must be not empty')
        else AuthorizerId,
    },
  },
  setApiKeyRequired(ApiKeyRequired): {
    Properties+::: {
      ApiKeyRequired:
        if !std.isBoolean(ApiKeyRequired) then (error 'ApiKeyRequired must be a boolean') else ApiKeyRequired,
    },
  },
  setAuthorizationType(AuthorizationType): {
    Properties+::: {
      AuthorizationType:
        if !std.isString(AuthorizationType) then (error 'AuthorizationType must be a string')
        else if std.isEmpty(AuthorizationType) then (error 'AuthorizationType must be not empty')
        else AuthorizationType,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
