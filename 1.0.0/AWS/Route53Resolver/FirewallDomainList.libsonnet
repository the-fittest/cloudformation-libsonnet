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
    Type: 'AWS::Route53Resolver::FirewallDomainList',
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
  setDomainCount(DomainCount): {
    Properties+::: {
      DomainCount:
        if !std.isNumber(DomainCount) then (error 'DomainCount must be an number')
        else DomainCount,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'COMPLETE' && Status != 'DELETING' && Status != 'UPDATING' && Status != 'COMPLETE_IMPORT_FAILED' && Status != 'IMPORTING' && Status != 'INACTIVE_OWNER_ACCOUNT_CLOSED' then (error "Status should be 'COMPLETE' or 'DELETING' or 'UPDATING' or 'COMPLETE_IMPORT_FAILED' or 'IMPORTING' or 'INACTIVE_OWNER_ACCOUNT_CLOSED'")
        else Status,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else StatusMessage,
    },
  },
  setManagedOwnerName(ManagedOwnerName): {
    Properties+::: {
      ManagedOwnerName:
        if !std.isString(ManagedOwnerName) then (error 'ManagedOwnerName must be a string')
        else if std.isEmpty(ManagedOwnerName) then (error 'ManagedOwnerName must be not empty')
        else if std.length(ManagedOwnerName) < 1 then error ('ManagedOwnerName should have at least 1 characters')
        else if std.length(ManagedOwnerName) > 512 then error ('ManagedOwnerName should have not more than 512 characters')
        else ManagedOwnerName,
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
  setModificationTime(ModificationTime): {
    Properties+::: {
      ModificationTime:
        if !std.isString(ModificationTime) then (error 'ModificationTime must be a string')
        else if std.isEmpty(ModificationTime) then (error 'ModificationTime must be not empty')
        else if std.length(ModificationTime) < 20 then error ('ModificationTime should have at least 20 characters')
        else if std.length(ModificationTime) > 40 then error ('ModificationTime should have not more than 40 characters')
        else ModificationTime,
    },
  },
  setDomains(Domains): {
    Properties+::: {
      Domains:
        if !std.isArray(Domains) then (error 'Domains must be an array')
        else Domains,
    },
  },
  setDomainsMixin(Domains): {
    Properties+::: {
      Domains+: Domains,
    },
  },
  setDomainFileUrl(DomainFileUrl): {
    Properties+::: {
      DomainFileUrl:
        if !std.isString(DomainFileUrl) then (error 'DomainFileUrl must be a string')
        else if std.isEmpty(DomainFileUrl) then (error 'DomainFileUrl must be not empty')
        else if std.length(DomainFileUrl) < 1 then error ('DomainFileUrl should have at least 1 characters')
        else if std.length(DomainFileUrl) > 1024 then error ('DomainFileUrl should have not more than 1024 characters')
        else DomainFileUrl,
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
