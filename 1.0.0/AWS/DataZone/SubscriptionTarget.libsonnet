{
  // AWS DataZone SubscriptionTarget
  SubscriptionTarget: {
    new(
      ApplicableAssetTypes,
      AuthorizedPrincipals,
      DomainIdentifier,
      EnvironmentIdentifier,
      ManageAccessRole,
      Name,
      SubscriptionTargetConfig,
      Type,
    ): {
      local base = self,
      Properties: {
        ApplicableAssetTypes: (if std.isArray(ApplicableAssetTypes) then ApplicableAssetTypes else [ApplicableAssetTypes]),
        AuthorizedPrincipals: (if std.isArray(AuthorizedPrincipals) then AuthorizedPrincipals else [AuthorizedPrincipals]),
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
        EnvironmentIdentifier: EnvironmentIdentifier,
        assert std.isString(ManageAccessRole) : 'ManageAccessRole must be a string',
        ManageAccessRole: ManageAccessRole,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        SubscriptionTargetConfig: (if std.isArray(SubscriptionTargetConfig) then SubscriptionTargetConfig else [SubscriptionTargetConfig]),
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataZone::SubscriptionTarget',
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: {
        CreatedBy: CreatedBy,
      },
    },
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: {
        DomainId: DomainId,
      },
    },
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: {
        EnvironmentId: EnvironmentId,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: {
        ProjectId: ProjectId,
      },
    },
    withProvider(Provider): {
      assert std.isString(Provider) : 'Provider must be a string',
      Properties+::: {
        Provider: Provider,
      },
    },
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: {
        UpdatedAt: UpdatedAt,
      },
    },
    withUpdatedBy(UpdatedBy): {
      assert std.isString(UpdatedBy) : 'UpdatedBy must be a string',
      Properties+::: {
        UpdatedBy: UpdatedBy,
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
  },
}
