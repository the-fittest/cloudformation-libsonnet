{
  new(
    FunctionName,
    Action,
    Principal,
  ): {
    local base = self,
    Properties: {
      FunctionName:
        if !std.isString(FunctionName) then (error 'FunctionName must be a string')
        else if std.isEmpty(FunctionName) then (error 'FunctionName must be not empty')
        else if std.length(FunctionName) < 1 then error ('FunctionName should have at least 1 characters')
        else if std.length(FunctionName) > 140 then error ('FunctionName should have not more than 140 characters')
        else FunctionName,
      Action:
        if !std.isString(Action) then (error 'Action must be a string')
        else if std.isEmpty(Action) then (error 'Action must be not empty')
        else if std.length(Action) < 1 then error ('Action should have at least 1 characters')
        else if std.length(Action) > 256 then error ('Action should have not more than 256 characters')
        else Action,
      Principal:
        if !std.isString(Principal) then (error 'Principal must be a string')
        else if std.isEmpty(Principal) then (error 'Principal must be not empty')
        else if std.length(Principal) < 1 then error ('Principal should have at least 1 characters')
        else if std.length(Principal) > 256 then error ('Principal should have not more than 256 characters')
        else Principal,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Permission',
  },
  setEventSourceToken(EventSourceToken): {
    Properties+::: {
      EventSourceToken:
        if !std.isString(EventSourceToken) then (error 'EventSourceToken must be a string')
        else if std.isEmpty(EventSourceToken) then (error 'EventSourceToken must be not empty')
        else if std.length(EventSourceToken) < 1 then error ('EventSourceToken should have at least 1 characters')
        else if std.length(EventSourceToken) > 256 then error ('EventSourceToken should have not more than 256 characters')
        else EventSourceToken,
    },
  },
  setFunctionUrlAuthType(FunctionUrlAuthType): {
    Properties+::: {
      FunctionUrlAuthType:
        if !std.isString(FunctionUrlAuthType) then (error 'FunctionUrlAuthType must be a string')
        else if std.isEmpty(FunctionUrlAuthType) then (error 'FunctionUrlAuthType must be not empty')
        else if FunctionUrlAuthType != 'AWS_IAM' && FunctionUrlAuthType != 'NONE' then (error "FunctionUrlAuthType should be 'AWS_IAM' or 'NONE'")
        else FunctionUrlAuthType,
    },
  },
  setSourceArn(SourceArn): {
    Properties+::: {
      SourceArn:
        if !std.isString(SourceArn) then (error 'SourceArn must be a string')
        else if std.isEmpty(SourceArn) then (error 'SourceArn must be not empty')
        else if std.length(SourceArn) < 12 then error ('SourceArn should have at least 12 characters')
        else if std.length(SourceArn) > 1024 then error ('SourceArn should have not more than 1024 characters')
        else SourceArn,
    },
  },
  setSourceAccount(SourceAccount): {
    Properties+::: {
      SourceAccount:
        if !std.isString(SourceAccount) then (error 'SourceAccount must be a string')
        else if std.isEmpty(SourceAccount) then (error 'SourceAccount must be not empty')
        else if std.length(SourceAccount) < 12 then error ('SourceAccount should have at least 12 characters')
        else if std.length(SourceAccount) > 12 then error ('SourceAccount should have not more than 12 characters')
        else SourceAccount,
    },
  },
  setPrincipalOrgID(PrincipalOrgID): {
    Properties+::: {
      PrincipalOrgID:
        if !std.isString(PrincipalOrgID) then (error 'PrincipalOrgID must be a string')
        else if std.isEmpty(PrincipalOrgID) then (error 'PrincipalOrgID must be not empty')
        else if std.length(PrincipalOrgID) < 12 then error ('PrincipalOrgID should have at least 12 characters')
        else if std.length(PrincipalOrgID) > 34 then error ('PrincipalOrgID should have not more than 34 characters')
        else PrincipalOrgID,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 256 then error ('Id should have not more than 256 characters')
        else Id,
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
