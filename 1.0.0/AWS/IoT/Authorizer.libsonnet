{
  new(
    AuthorizerFunctionArn,
  ): {
    local base = self,
    Properties: {
      AuthorizerFunctionArn:
        if !std.isString(AuthorizerFunctionArn) then (error 'AuthorizerFunctionArn must be a string')
        else if std.isEmpty(AuthorizerFunctionArn) then (error 'AuthorizerFunctionArn must be not empty')
        else AuthorizerFunctionArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::Authorizer',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAuthorizerName(AuthorizerName): {
    Properties+::: {
      AuthorizerName:
        if !std.isString(AuthorizerName) then (error 'AuthorizerName must be a string')
        else if std.isEmpty(AuthorizerName) then (error 'AuthorizerName must be not empty')
        else if std.length(AuthorizerName) < 1 then error ('AuthorizerName should have at least 1 characters')
        else if std.length(AuthorizerName) > 128 then error ('AuthorizerName should have not more than 128 characters')
        else AuthorizerName,
    },
  },
  setSigningDisabled(SigningDisabled): {
    Properties+::: {
      SigningDisabled:
        if !std.isBoolean(SigningDisabled) then (error 'SigningDisabled must be a boolean') else SigningDisabled,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'INACTIVE' then (error "Status should be 'ACTIVE' or 'INACTIVE'")
        else Status,
    },
  },
  setTokenKeyName(TokenKeyName): {
    Properties+::: {
      TokenKeyName:
        if !std.isString(TokenKeyName) then (error 'TokenKeyName must be a string')
        else if std.isEmpty(TokenKeyName) then (error 'TokenKeyName must be not empty')
        else TokenKeyName,
    },
  },
  setTokenSigningPublicKeys(TokenSigningPublicKeys): {
    Properties+::: {
      TokenSigningPublicKeys:
        if !std.isObject(TokenSigningPublicKeys) then (error 'TokenSigningPublicKeys must be an object')
        else TokenSigningPublicKeys,
    },
  },
  setEnableCachingForHttp(EnableCachingForHttp): {
    Properties+::: {
      EnableCachingForHttp:
        if !std.isBoolean(EnableCachingForHttp) then (error 'EnableCachingForHttp must be a boolean') else EnableCachingForHttp,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
