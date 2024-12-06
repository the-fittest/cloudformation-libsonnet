{
  new(
    ApiId,
    IntegrationType,
  ): {
    local base = self,
    Properties: {
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      IntegrationType:
        if !std.isString(IntegrationType) then (error 'IntegrationType must be a string')
        else if std.isEmpty(IntegrationType) then (error 'IntegrationType must be not empty')
        else IntegrationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Integration',
  },
  setConnectionId(ConnectionId): {
    Properties+::: {
      ConnectionId:
        if !std.isString(ConnectionId) then (error 'ConnectionId must be a string')
        else if std.isEmpty(ConnectionId) then (error 'ConnectionId must be not empty')
        else ConnectionId,
    },
  },
  setConnectionType(ConnectionType): {
    Properties+::: {
      ConnectionType:
        if !std.isString(ConnectionType) then (error 'ConnectionType must be a string')
        else if std.isEmpty(ConnectionType) then (error 'ConnectionType must be not empty')
        else ConnectionType,
    },
  },
  setContentHandlingStrategy(ContentHandlingStrategy): {
    Properties+::: {
      ContentHandlingStrategy:
        if !std.isString(ContentHandlingStrategy) then (error 'ContentHandlingStrategy must be a string')
        else if std.isEmpty(ContentHandlingStrategy) then (error 'ContentHandlingStrategy must be not empty')
        else ContentHandlingStrategy,
    },
  },
  setCredentialsArn(CredentialsArn): {
    Properties+::: {
      CredentialsArn:
        if !std.isString(CredentialsArn) then (error 'CredentialsArn must be a string')
        else if std.isEmpty(CredentialsArn) then (error 'CredentialsArn must be not empty')
        else CredentialsArn,
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
  setIntegrationMethod(IntegrationMethod): {
    Properties+::: {
      IntegrationMethod:
        if !std.isString(IntegrationMethod) then (error 'IntegrationMethod must be a string')
        else if std.isEmpty(IntegrationMethod) then (error 'IntegrationMethod must be not empty')
        else IntegrationMethod,
    },
  },
  setIntegrationSubtype(IntegrationSubtype): {
    Properties+::: {
      IntegrationSubtype:
        if !std.isString(IntegrationSubtype) then (error 'IntegrationSubtype must be a string')
        else if std.isEmpty(IntegrationSubtype) then (error 'IntegrationSubtype must be not empty')
        else IntegrationSubtype,
    },
  },
  setIntegrationId(IntegrationId): {
    Properties+::: {
      IntegrationId:
        if !std.isString(IntegrationId) then (error 'IntegrationId must be a string')
        else if std.isEmpty(IntegrationId) then (error 'IntegrationId must be not empty')
        else IntegrationId,
    },
  },
  setIntegrationUri(IntegrationUri): {
    Properties+::: {
      IntegrationUri:
        if !std.isString(IntegrationUri) then (error 'IntegrationUri must be a string')
        else if std.isEmpty(IntegrationUri) then (error 'IntegrationUri must be not empty')
        else IntegrationUri,
    },
  },
  setPassthroughBehavior(PassthroughBehavior): {
    Properties+::: {
      PassthroughBehavior:
        if !std.isString(PassthroughBehavior) then (error 'PassthroughBehavior must be a string')
        else if std.isEmpty(PassthroughBehavior) then (error 'PassthroughBehavior must be not empty')
        else PassthroughBehavior,
    },
  },
  setPayloadFormatVersion(PayloadFormatVersion): {
    Properties+::: {
      PayloadFormatVersion:
        if !std.isString(PayloadFormatVersion) then (error 'PayloadFormatVersion must be a string')
        else if std.isEmpty(PayloadFormatVersion) then (error 'PayloadFormatVersion must be not empty')
        else PayloadFormatVersion,
    },
  },
  setRequestParameters(RequestParameters): {
    Properties+::: {
      RequestParameters:
        if !std.isObject(RequestParameters) then (error 'RequestParameters must be an object')
        else RequestParameters,
    },
  },
  setRequestTemplates(RequestTemplates): {
    Properties+::: {
      RequestTemplates:
        if !std.isObject(RequestTemplates) then (error 'RequestTemplates must be an object')
        else RequestTemplates,
    },
  },
  setResponseParameters(ResponseParameters): {
    Properties+::: {
      ResponseParameters:
        if !std.isObject(ResponseParameters) then (error 'ResponseParameters must be an object')
        else ResponseParameters,
    },
  },
  setTemplateSelectionExpression(TemplateSelectionExpression): {
    Properties+::: {
      TemplateSelectionExpression:
        if !std.isString(TemplateSelectionExpression) then (error 'TemplateSelectionExpression must be a string')
        else if std.isEmpty(TemplateSelectionExpression) then (error 'TemplateSelectionExpression must be not empty')
        else TemplateSelectionExpression,
    },
  },
  setTimeoutInMillis(TimeoutInMillis): {
    Properties+::: {
      TimeoutInMillis:
        if !std.isNumber(TimeoutInMillis) then (error 'TimeoutInMillis must be an number')
        else TimeoutInMillis,
    },
  },
  setTlsConfig(TlsConfig): {
    Properties+::: {
      TlsConfig:
        if !std.isObject(TlsConfig) then (error 'TlsConfig must be an object')
        else TlsConfig,
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
