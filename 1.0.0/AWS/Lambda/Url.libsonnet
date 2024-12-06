{
  new(
    TargetFunctionArn,
    AuthType,
  ): {
    local base = self,
    Properties: {
      TargetFunctionArn:
        if !std.isString(TargetFunctionArn) then (error 'TargetFunctionArn must be a string')
        else if std.isEmpty(TargetFunctionArn) then (error 'TargetFunctionArn must be not empty')
        else TargetFunctionArn,
      AuthType:
        if !std.isString(AuthType) then (error 'AuthType must be a string')
        else if std.isEmpty(AuthType) then (error 'AuthType must be not empty')
        else if AuthType != 'AWS_IAM' && AuthType != 'NONE' then (error "AuthType should be 'AWS_IAM' or 'NONE'")
        else AuthType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Url',
  },
  setQualifier(Qualifier): {
    Properties+::: {
      Qualifier:
        if !std.isString(Qualifier) then (error 'Qualifier must be a string')
        else if std.isEmpty(Qualifier) then (error 'Qualifier must be not empty')
        else if std.length(Qualifier) < 1 then error ('Qualifier should have at least 1 characters')
        else if std.length(Qualifier) > 128 then error ('Qualifier should have not more than 128 characters')
        else Qualifier,
    },
  },
  setInvokeMode(InvokeMode): {
    Properties+::: {
      InvokeMode:
        if !std.isString(InvokeMode) then (error 'InvokeMode must be a string')
        else if std.isEmpty(InvokeMode) then (error 'InvokeMode must be not empty')
        else if InvokeMode != 'BUFFERED' && InvokeMode != 'RESPONSE_STREAM' then (error "InvokeMode should be 'BUFFERED' or 'RESPONSE_STREAM'")
        else InvokeMode,
    },
  },
  setFunctionArn(FunctionArn): {
    Properties+::: {
      FunctionArn:
        if !std.isString(FunctionArn) then (error 'FunctionArn must be a string')
        else if std.isEmpty(FunctionArn) then (error 'FunctionArn must be not empty')
        else FunctionArn,
    },
  },
  setFunctionUrl(FunctionUrl): {
    Properties+::: {
      FunctionUrl:
        if !std.isString(FunctionUrl) then (error 'FunctionUrl must be a string')
        else if std.isEmpty(FunctionUrl) then (error 'FunctionUrl must be not empty')
        else FunctionUrl,
    },
  },
  setCors(Cors): {
    Properties+::: {
      Cors:
        if !std.isObject(Cors) then (error 'Cors must be an object')
        else Cors,
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
