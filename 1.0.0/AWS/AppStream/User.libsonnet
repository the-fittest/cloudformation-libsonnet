{
  new(
    UserName,
    AuthenticationType,
  ): {
    local base = self,
    Properties: {
      UserName:
        if !std.isString(UserName) then (error 'UserName must be a string')
        else if std.isEmpty(UserName) then (error 'UserName must be not empty')
        else UserName,
      AuthenticationType:
        if !std.isString(AuthenticationType) then (error 'AuthenticationType must be a string')
        else if std.isEmpty(AuthenticationType) then (error 'AuthenticationType must be not empty')
        else AuthenticationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppStream::User',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setFirstName(FirstName): {
    Properties+::: {
      FirstName:
        if !std.isString(FirstName) then (error 'FirstName must be a string')
        else if std.isEmpty(FirstName) then (error 'FirstName must be not empty')
        else FirstName,
    },
  },
  setMessageAction(MessageAction): {
    Properties+::: {
      MessageAction:
        if !std.isString(MessageAction) then (error 'MessageAction must be a string')
        else if std.isEmpty(MessageAction) then (error 'MessageAction must be not empty')
        else MessageAction,
    },
  },
  setLastName(LastName): {
    Properties+::: {
      LastName:
        if !std.isString(LastName) then (error 'LastName must be a string')
        else if std.isEmpty(LastName) then (error 'LastName must be not empty')
        else LastName,
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
