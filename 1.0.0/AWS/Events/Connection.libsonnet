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
    Type: 'AWS::Events::Connection',
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setSecretArn(SecretArn): {
    Properties+::: {
      SecretArn:
        if !std.isString(SecretArn) then (error 'SecretArn must be a string')
        else if std.isEmpty(SecretArn) then (error 'SecretArn must be not empty')
        else SecretArn,
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
  setAuthorizationType(AuthorizationType): {
    Properties+::: {
      AuthorizationType:
        if !std.isString(AuthorizationType) then (error 'AuthorizationType must be a string')
        else if std.isEmpty(AuthorizationType) then (error 'AuthorizationType must be not empty')
        else if AuthorizationType != 'API_KEY' && AuthorizationType != 'BASIC' && AuthorizationType != 'OAUTH_CLIENT_CREDENTIALS' then (error "AuthorizationType should be 'API_KEY' or 'BASIC' or 'OAUTH_CLIENT_CREDENTIALS'")
        else AuthorizationType,
    },
  },
  setAuthParameters(AuthParameters): {
    Properties+::: {
      AuthParameters:
        if !std.isObject(AuthParameters) then (error 'AuthParameters must be an object')
        else AuthParameters,
    },
  },
  setInvocationConnectivityParameters(InvocationConnectivityParameters): {
    Properties+::: {
      InvocationConnectivityParameters:
        if !std.isObject(InvocationConnectivityParameters) then (error 'InvocationConnectivityParameters must be an object')
        else if !std.objectHas(InvocationConnectivityParameters, 'ResourceParameters') then (error ' have attribute ResourceParameters')
        else InvocationConnectivityParameters,
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
