{
  new(
    DomainExecutionRole,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DomainExecutionRole) : 'DomainExecutionRole must be a string',
      DomainExecutionRole: DomainExecutionRole,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::Domain',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withKmsKeyIdentifier(KmsKeyIdentifier): {
    assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
    Properties+::: {
      KmsKeyIdentifier: KmsKeyIdentifier,
    },
  },
  withLastUpdatedAt(LastUpdatedAt): {
    assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
    Properties+::: {
      LastUpdatedAt: LastUpdatedAt,
    },
  },
  withManagedAccountId(ManagedAccountId): {
    assert std.isString(ManagedAccountId) : 'ManagedAccountId must be a string',
    Properties+::: {
      ManagedAccountId: ManagedAccountId,
    },
  },
  withPortalUrl(PortalUrl): {
    assert std.isString(PortalUrl) : 'PortalUrl must be a string',
    Properties+::: {
      PortalUrl: PortalUrl,
    },
  },
  withSingleSignOn(SingleSignOn): {
    assert std.isObject(SingleSignOn) : 'SingleSignOn must be a object',
    Properties+::: {
      SingleSignOn: SingleSignOn,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATING' || Status == 'AVAILABLE' || Status == 'CREATION_FAILED' || Status == 'DELETING' || Status == 'DELETED' || Status == 'DELETION_FAILED' : "Status should be 'CREATING' or 'AVAILABLE' or 'CREATION_FAILED' or 'DELETING' or 'DELETED' or 'DELETION_FAILED'",
    Properties+::: {
      Status: Status,
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
