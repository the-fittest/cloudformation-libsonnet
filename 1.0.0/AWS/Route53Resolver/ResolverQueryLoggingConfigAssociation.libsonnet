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
    Type: 'AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 64 then error ('Id should have not more than 64 characters')
        else Id,
    },
  },
  setResolverQueryLogConfigId(ResolverQueryLogConfigId): {
    Properties+::: {
      ResolverQueryLogConfigId:
        if !std.isString(ResolverQueryLogConfigId) then (error 'ResolverQueryLogConfigId must be a string')
        else if std.isEmpty(ResolverQueryLogConfigId) then (error 'ResolverQueryLogConfigId must be not empty')
        else if std.length(ResolverQueryLogConfigId) < 1 then error ('ResolverQueryLogConfigId should have at least 1 characters')
        else if std.length(ResolverQueryLogConfigId) > 64 then error ('ResolverQueryLogConfigId should have not more than 64 characters')
        else ResolverQueryLogConfigId,
    },
  },
  setResourceId(ResourceId): {
    Properties+::: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else if std.length(ResourceId) < 1 then error ('ResourceId should have at least 1 characters')
        else if std.length(ResourceId) > 64 then error ('ResourceId should have not more than 64 characters')
        else ResourceId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'ACTIVE' && Status != 'ACTION_NEEDED' && Status != 'DELETING' && Status != 'FAILED' && Status != 'OVERRIDDEN' then (error "Status should be 'CREATING' or 'ACTIVE' or 'ACTION_NEEDED' or 'DELETING' or 'FAILED' or 'OVERRIDDEN'")
        else Status,
    },
  },
  setError(Error): {
    Properties+::: {
      Error:
        if !std.isString(Error) then (error 'Error must be a string')
        else if std.isEmpty(Error) then (error 'Error must be not empty')
        else if Error != 'NONE' && Error != 'DESTINATION_NOT_FOUND' && Error != 'ACCESS_DENIED' then (error "Error should be 'NONE' or 'DESTINATION_NOT_FOUND' or 'ACCESS_DENIED'")
        else Error,
    },
  },
  setErrorMessage(ErrorMessage): {
    Properties+::: {
      ErrorMessage:
        if !std.isString(ErrorMessage) then (error 'ErrorMessage must be a string')
        else if std.isEmpty(ErrorMessage) then (error 'ErrorMessage must be not empty')
        else ErrorMessage,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else if std.length(CreationTime) < 20 then error ('CreationTime should have at least 20 characters')
        else if std.length(CreationTime) > 40 then error ('CreationTime should have not more than 40 characters')
        else CreationTime,
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
