{
  new(
    ConnectionArn,
    InvocationEndpoint,
    HttpMethod,
  ): {
    local base = self,
    Properties: {
      ConnectionArn:
        if !std.isString(ConnectionArn) then (error 'ConnectionArn must be a string')
        else if std.isEmpty(ConnectionArn) then (error 'ConnectionArn must be not empty')
        else ConnectionArn,
      InvocationEndpoint:
        if !std.isString(InvocationEndpoint) then (error 'InvocationEndpoint must be a string')
        else if std.isEmpty(InvocationEndpoint) then (error 'InvocationEndpoint must be not empty')
        else InvocationEndpoint,
      HttpMethod:
        if !std.isString(HttpMethod) then (error 'HttpMethod must be a string')
        else if std.isEmpty(HttpMethod) then (error 'HttpMethod must be not empty')
        else if HttpMethod != 'GET' && HttpMethod != 'HEAD' && HttpMethod != 'POST' && HttpMethod != 'OPTIONS' && HttpMethod != 'PUT' && HttpMethod != 'DELETE' && HttpMethod != 'PATCH' then (error "HttpMethod should be 'GET' or 'HEAD' or 'POST' or 'OPTIONS' or 'PUT' or 'DELETE' or 'PATCH'")
        else HttpMethod,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Events::ApiDestination',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setInvocationRateLimitPerSecond(InvocationRateLimitPerSecond): {
    Properties+::: {
      InvocationRateLimitPerSecond:
        if !std.isNumber(InvocationRateLimitPerSecond) then (error 'InvocationRateLimitPerSecond must be an number')
        else if InvocationRateLimitPerSecond < 1 then error ('InvocationRateLimitPerSecond should be at least 1')
        else InvocationRateLimitPerSecond,
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
