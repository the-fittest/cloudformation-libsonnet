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
    Type: 'AWS::Route53Resolver::FirewallRuleGroup',
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
  setRuleCount(RuleCount): {
    Properties+::: {
      RuleCount:
        if !std.isNumber(RuleCount) then (error 'RuleCount must be an number')
        else RuleCount,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'COMPLETE' && Status != 'DELETING' && Status != 'UPDATING' && Status != 'INACTIVE_OWNER_ACCOUNT_CLOSED' then (error "Status should be 'COMPLETE' or 'DELETING' or 'UPDATING' or 'INACTIVE_OWNER_ACCOUNT_CLOSED'")
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
  setShareStatus(ShareStatus): {
    Properties+::: {
      ShareStatus:
        if !std.isString(ShareStatus) then (error 'ShareStatus must be a string')
        else if std.isEmpty(ShareStatus) then (error 'ShareStatus must be not empty')
        else if ShareStatus != 'NOT_SHARED' && ShareStatus != 'SHARED_WITH_ME' && ShareStatus != 'SHARED_BY_ME' then (error "ShareStatus should be 'NOT_SHARED' or 'SHARED_WITH_ME' or 'SHARED_BY_ME'")
        else ShareStatus,
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
  setFirewallRules(FirewallRules): {
    Properties+::: {
      FirewallRules:
        if !std.isArray(FirewallRules) then (error 'FirewallRules must be an array')
        else FirewallRules,
    },
  },
  setFirewallRulesMixin(FirewallRules): {
    Properties+::: {
      FirewallRules+: FirewallRules,
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
