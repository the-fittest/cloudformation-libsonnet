{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::FirewallDomainList',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withDomainCount(DomainCount): {
    assert std.isNumber(DomainCount) : 'DomainCount must be a number',
    Properties+::: {
      DomainCount: DomainCount,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'COMPLETE' || Status == 'DELETING' || Status == 'UPDATING' || Status == 'COMPLETE_IMPORT_FAILED' || Status == 'IMPORTING' || Status == 'INACTIVE_OWNER_ACCOUNT_CLOSED' : "Status should be 'COMPLETE' or 'DELETING' or 'UPDATING' or 'COMPLETE_IMPORT_FAILED' or 'IMPORTING' or 'INACTIVE_OWNER_ACCOUNT_CLOSED'",
    Properties+::: {
      Status: Status,
    },
  },
  withStatusMessage(StatusMessage): {
    assert std.isString(StatusMessage) : 'StatusMessage must be a string',
    Properties+::: {
      StatusMessage: StatusMessage,
    },
  },
  withManagedOwnerName(ManagedOwnerName): {
    assert std.isString(ManagedOwnerName) : 'ManagedOwnerName must be a string',
    Properties+::: {
      ManagedOwnerName: ManagedOwnerName,
    },
  },
  withCreatorRequestId(CreatorRequestId): {
    assert std.isString(CreatorRequestId) : 'CreatorRequestId must be a string',
    Properties+::: {
      CreatorRequestId: CreatorRequestId,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withModificationTime(ModificationTime): {
    assert std.isString(ModificationTime) : 'ModificationTime must be a string',
    Properties+::: {
      ModificationTime: ModificationTime,
    },
  },
  withDomains(Domains): {
    Properties+::: {
      Domains: (if std.isArray(Domains) then Domains else [Domains]),
    },
  },
  withDomainsMixin(Domains): {
    Properties+::: {
      Domains+: (if std.isArray(Domains) then Domains else [Domains]),
    },
  },
  withDomainFileUrl(DomainFileUrl): {
    assert std.isString(DomainFileUrl) : 'DomainFileUrl must be a string',
    Properties+::: {
      DomainFileUrl: DomainFileUrl,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
