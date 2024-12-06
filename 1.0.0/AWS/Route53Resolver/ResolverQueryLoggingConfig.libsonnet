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
    Type: 'AWS::Route53Resolver::ResolverQueryLoggingConfig',
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
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else if std.length(OwnerId) < 12 then error ('OwnerId should have at least 12 characters')
        else if std.length(OwnerId) > 32 then error ('OwnerId should have not more than 32 characters')
        else OwnerId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'CREATED' && Status != 'DELETING' && Status != 'FAILED' then (error "Status should be 'CREATING' or 'CREATED' or 'DELETING' or 'FAILED'")
        else Status,
    },
  },
  setShareStatus(ShareStatus): {
    Properties+::: {
      ShareStatus:
        if !std.isString(ShareStatus) then (error 'ShareStatus must be a string')
        else if std.isEmpty(ShareStatus) then (error 'ShareStatus must be not empty')
        else if ShareStatus != 'NOT_SHARED' && ShareStatus != 'SHARED_WITH_ME' && ShareStatus != 'SHARED_BY_ME' then (error "ShareStatus should be 'NOT_SHARED' or 'SHARED_WITH_ME' or 'SHARED_BY_ME'")
        else ShareStatus,
    },
  },
  setAssociationCount(AssociationCount): {
    Properties+::: {
      AssociationCount:
        if !std.isNumber(AssociationCount) then (error 'AssociationCount must be an number')
        else AssociationCount,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 600 then error ('Arn should have not more than 600 characters')
        else Arn,
    },
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
  setCreatorRequestId(CreatorRequestId): {
    Properties+::: {
      CreatorRequestId:
        if !std.isString(CreatorRequestId) then (error 'CreatorRequestId must be a string')
        else if std.isEmpty(CreatorRequestId) then (error 'CreatorRequestId must be not empty')
        else if std.length(CreatorRequestId) < 1 then error ('CreatorRequestId should have at least 1 characters')
        else if std.length(CreatorRequestId) > 255 then error ('CreatorRequestId should have not more than 255 characters')
        else CreatorRequestId,
    },
  },
  setDestinationArn(DestinationArn): {
    Properties+::: {
      DestinationArn:
        if !std.isString(DestinationArn) then (error 'DestinationArn must be a string')
        else if std.isEmpty(DestinationArn) then (error 'DestinationArn must be not empty')
        else if std.length(DestinationArn) < 1 then error ('DestinationArn should have at least 1 characters')
        else if std.length(DestinationArn) > 600 then error ('DestinationArn should have not more than 600 characters')
        else DestinationArn,
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
