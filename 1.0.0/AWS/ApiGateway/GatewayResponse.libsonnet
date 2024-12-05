{
  new(
    ResponseType,
    RestApiId,
  ): {
    local base = self,
    Properties: {
      ResponseType:
        if !std.isString(ResponseType) then (error 'ResponseType must be a string')
        else if std.isEmpty(ResponseType) then (error 'ResponseType must be not empty')
        else ResponseType,
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::GatewayResponse',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setStatusCode(StatusCode): {
    Properties+::: {
      StatusCode:
        if !std.isString(StatusCode) then (error 'StatusCode must be a string')
        else if std.isEmpty(StatusCode) then (error 'StatusCode must be not empty')
        else StatusCode,
    },
  },
  setResponseParameters(ResponseParameters): {
    Properties+::: {
      ResponseParameters:
        if !std.isObject(ResponseParameters) then (error 'ResponseParameters must be an object')
        else ResponseParameters,
    },
  },
  setResponseTemplates(ResponseTemplates): {
    Properties+::: {
      ResponseTemplates:
        if !std.isObject(ResponseTemplates) then (error 'ResponseTemplates must be an object')
        else ResponseTemplates,
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
