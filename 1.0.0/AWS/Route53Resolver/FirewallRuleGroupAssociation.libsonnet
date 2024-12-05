{
  new(
    FirewallRuleGroupId,
    VpcId,
    Priority,
  ): {
    local base = self,
    Properties: {
      FirewallRuleGroupId:
        if !std.isString(FirewallRuleGroupId) then (error 'FirewallRuleGroupId must be a string')
        else if std.isEmpty(FirewallRuleGroupId) then (error 'FirewallRuleGroupId must be not empty')
        else if std.length(FirewallRuleGroupId) < 1 then error ('FirewallRuleGroupId should have at least 1 characters')
        else if std.length(FirewallRuleGroupId) > 64 then error ('FirewallRuleGroupId should have not more than 64 characters')
        else FirewallRuleGroupId,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) < 1 then error ('VpcId should have at least 1 characters')
        else if std.length(VpcId) > 64 then error ('VpcId should have not more than 64 characters')
        else VpcId,
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else Priority,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::FirewallRuleGroupAssociation',
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
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setMutationProtection(MutationProtection): {
    Properties+::: {
      MutationProtection:
        if !std.isString(MutationProtection) then (error 'MutationProtection must be a string')
        else if std.isEmpty(MutationProtection) then (error 'MutationProtection must be not empty')
        else if MutationProtection != 'ENABLED' && MutationProtection != 'DISABLED' then (error "MutationProtection should be 'ENABLED' or 'DISABLED'")
        else MutationProtection,
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
