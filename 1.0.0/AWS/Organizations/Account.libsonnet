{
  new(
    AccountName,
    Email,
  ): {
    local base = self,
    Properties: {
      AccountName:
        if !std.isString(AccountName) then (error 'AccountName must be a string')
        else if std.isEmpty(AccountName) then (error 'AccountName must be not empty')
        else if std.length(AccountName) < 1 then error ('AccountName should have at least 1 characters')
        else if std.length(AccountName) > 50 then error ('AccountName should have not more than 50 characters')
        else AccountName,
      Email:
        if !std.isString(Email) then (error 'Email must be a string')
        else if std.isEmpty(Email) then (error 'Email must be not empty')
        else if std.length(Email) < 6 then error ('Email should have at least 6 characters')
        else if std.length(Email) > 64 then error ('Email should have not more than 64 characters')
        else Email,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Organizations::Account',
  },
  setRoleName(RoleName): {
    Properties+::: {
      RoleName:
        if !std.isString(RoleName) then (error 'RoleName must be a string')
        else if std.isEmpty(RoleName) then (error 'RoleName must be not empty')
        else if std.length(RoleName) < 1 then error ('RoleName should have at least 1 characters')
        else if std.length(RoleName) > 64 then error ('RoleName should have not more than 64 characters')
        else RoleName,
    },
  },
  setParentIds(ParentIds): {
    Properties+::: {
      ParentIds:
        if !std.isArray(ParentIds) then (error 'ParentIds must be an array')
        else ParentIds,
    },
  },
  pushParentIds(ParentIds): {
    Properties+::: {
      ParentIds+: ParentIds,
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
  setAccountId(AccountId): {
    Properties+::: {
      AccountId:
        if !std.isString(AccountId) then (error 'AccountId must be a string')
        else if std.isEmpty(AccountId) then (error 'AccountId must be not empty')
        else if std.length(AccountId) > 12 then error ('AccountId should have not more than 12 characters')
        else AccountId,
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
  setJoinedMethod(JoinedMethod): {
    Properties+::: {
      JoinedMethod:
        if !std.isString(JoinedMethod) then (error 'JoinedMethod must be a string')
        else if std.isEmpty(JoinedMethod) then (error 'JoinedMethod must be not empty')
        else if JoinedMethod != 'INVITED' && JoinedMethod != 'CREATED' then (error "JoinedMethod should be 'INVITED' or 'CREATED'")
        else JoinedMethod,
    },
  },
  setJoinedTimestamp(JoinedTimestamp): {
    Properties+::: {
      JoinedTimestamp:
        if !std.isString(JoinedTimestamp) then (error 'JoinedTimestamp must be a string')
        else if std.isEmpty(JoinedTimestamp) then (error 'JoinedTimestamp must be not empty')
        else JoinedTimestamp,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'SUSPENDED' && Status != 'PENDING_CLOSURE' then (error "Status should be 'ACTIVE' or 'SUSPENDED' or 'PENDING_CLOSURE'")
        else Status,
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
