{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::RestApi',
  },
  setPolicy(Policy): {
    Properties+::: {
      Policy: Policy,
    },
  },
  setBodyS3Location(BodyS3Location): {
    Properties+::: {
      BodyS3Location:
        if !std.isObject(BodyS3Location) then (error 'BodyS3Location must be an object')
        else BodyS3Location,
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
  setMinimumCompressionSize(MinimumCompressionSize): {
    Properties+::: {
      MinimumCompressionSize:
        if !std.isNumber(MinimumCompressionSize) then (error 'MinimumCompressionSize must be an number')
        else MinimumCompressionSize,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters: Parameters,
    },
  },
  setCloneFrom(CloneFrom): {
    Properties+::: {
      CloneFrom:
        if !std.isString(CloneFrom) then (error 'CloneFrom must be a string')
        else if std.isEmpty(CloneFrom) then (error 'CloneFrom must be not empty')
        else CloneFrom,
    },
  },
  setMode(Mode): {
    Properties+::: {
      Mode:
        if !std.isString(Mode) then (error 'Mode must be a string')
        else if std.isEmpty(Mode) then (error 'Mode must be not empty')
        else Mode,
    },
  },
  setRestApiId(RestApiId): {
    Properties+::: {
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
    },
  },
  setDisableExecuteApiEndpoint(DisableExecuteApiEndpoint): {
    Properties+::: {
      DisableExecuteApiEndpoint:
        if !std.isBoolean(DisableExecuteApiEndpoint) then (error 'DisableExecuteApiEndpoint must be a boolean') else DisableExecuteApiEndpoint,
    },
  },
  setFailOnWarnings(FailOnWarnings): {
    Properties+::: {
      FailOnWarnings:
        if !std.isBoolean(FailOnWarnings) then (error 'FailOnWarnings must be a boolean') else FailOnWarnings,
    },
  },
  setBinaryMediaTypes(BinaryMediaTypes): {
    Properties+::: {
      BinaryMediaTypes:
        if !std.isArray(BinaryMediaTypes) then (error 'BinaryMediaTypes must be an array')
        else BinaryMediaTypes,
    },
  },
  pushBinaryMediaTypes(BinaryMediaTypes): {
    Properties+::: {
      BinaryMediaTypes+: BinaryMediaTypes,
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
  setRootResourceId(RootResourceId): {
    Properties+::: {
      RootResourceId:
        if !std.isString(RootResourceId) then (error 'RootResourceId must be a string')
        else if std.isEmpty(RootResourceId) then (error 'RootResourceId must be not empty')
        else RootResourceId,
    },
  },
  setApiKeySourceType(ApiKeySourceType): {
    Properties+::: {
      ApiKeySourceType:
        if !std.isString(ApiKeySourceType) then (error 'ApiKeySourceType must be a string')
        else if std.isEmpty(ApiKeySourceType) then (error 'ApiKeySourceType must be not empty')
        else ApiKeySourceType,
    },
  },
  setEndpointConfiguration(EndpointConfiguration): {
    Properties+::: {
      EndpointConfiguration:
        if !std.isObject(EndpointConfiguration) then (error 'EndpointConfiguration must be an object')
        else EndpointConfiguration,
    },
  },
  setBody(Body): {
    Properties+::: {
      Body: Body,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
