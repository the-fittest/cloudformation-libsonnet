{
  new(
    UserId,
    UserName,
    Engine,
  ): {
    local base = self,
    Properties: {
      UserId:
        if !std.isString(UserId) then (error 'UserId must be a string')
        else if std.isEmpty(UserId) then (error 'UserId must be not empty')
        else UserId,
      UserName:
        if !std.isString(UserName) then (error 'UserName must be a string')
        else if std.isEmpty(UserName) then (error 'UserName must be not empty')
        else UserName,
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else if Engine != 'redis' && Engine != 'valkey' then (error "Engine should be 'redis' or 'valkey'")
        else Engine,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::User',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setAccessString(AccessString): {
    Properties+::: {
      AccessString:
        if !std.isString(AccessString) then (error 'AccessString must be a string')
        else if std.isEmpty(AccessString) then (error 'AccessString must be not empty')
        else AccessString,
    },
  },
  setNoPasswordRequired(NoPasswordRequired): {
    Properties+::: {
      NoPasswordRequired:
        if !std.isBoolean(NoPasswordRequired) then (error 'NoPasswordRequired must be a boolean') else NoPasswordRequired,
    },
  },
  setPasswords(Passwords): {
    Properties+::: {
      Passwords:
        if !std.isArray(Passwords) then (error 'Passwords must be an array')
        else Passwords,
    },
  },
  pushPasswords(Passwords): {
    Properties+::: {
      Passwords+: Passwords,
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
  setAuthenticationMode(AuthenticationMode): {
    Properties+::: {
      AuthenticationMode:
        if !std.isObject(AuthenticationMode) then (error 'AuthenticationMode must be an object')
        else if !std.objectHas(AuthenticationMode, 'Type') then (error ' have attribute Type')
        else AuthenticationMode,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
