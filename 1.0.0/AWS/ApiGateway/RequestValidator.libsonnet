{
  new(
    RestApiId,
  ): {
    local base = self,
    Properties: {
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
    Type: 'AWS::ApiGateway::RequestValidator',
  },
  setRequestValidatorId(RequestValidatorId): {
    Properties+::: {
      RequestValidatorId:
        if !std.isString(RequestValidatorId) then (error 'RequestValidatorId must be a string')
        else if std.isEmpty(RequestValidatorId) then (error 'RequestValidatorId must be not empty')
        else RequestValidatorId,
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
  setValidateRequestBody(ValidateRequestBody): {
    Properties+::: {
      ValidateRequestBody:
        if !std.isBoolean(ValidateRequestBody) then (error 'ValidateRequestBody must be a boolean') else ValidateRequestBody,
    },
  },
  setValidateRequestParameters(ValidateRequestParameters): {
    Properties+::: {
      ValidateRequestParameters:
        if !std.isBoolean(ValidateRequestParameters) then (error 'ValidateRequestParameters must be a boolean') else ValidateRequestParameters,
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
