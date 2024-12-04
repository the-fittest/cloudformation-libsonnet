{
  // AWS DataZone Environment
  Environment: {
    new(
      Name,
      ProjectIdentifier,
      DomainIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ProjectIdentifier) : 'ProjectIdentifier must be a string',
        ProjectIdentifier: ProjectIdentifier,
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataZone::Environment',
    },
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: {
        AwsAccountId: AwsAccountId,
      },
    },
    withAwsAccountRegion(AwsAccountRegion): {
      assert std.isString(AwsAccountRegion) : 'AwsAccountRegion must be a string',
      Properties+::: {
        AwsAccountRegion: AwsAccountRegion,
      },
    },
    withEnvironmentAccountIdentifier(EnvironmentAccountIdentifier): {
      assert std.isString(EnvironmentAccountIdentifier) : 'EnvironmentAccountIdentifier must be a string',
      Properties+::: {
        EnvironmentAccountIdentifier: EnvironmentAccountIdentifier,
      },
    },
    withEnvironmentAccountRegion(EnvironmentAccountRegion): {
      assert std.isString(EnvironmentAccountRegion) : 'EnvironmentAccountRegion must be a string',
      Properties+::: {
        EnvironmentAccountRegion: EnvironmentAccountRegion,
      },
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
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: {
        DomainId: DomainId,
      },
    },
    withEnvironmentBlueprintId(EnvironmentBlueprintId): {
      assert std.isString(EnvironmentBlueprintId) : 'EnvironmentBlueprintId must be a string',
      Properties+::: {
        EnvironmentBlueprintId: EnvironmentBlueprintId,
      },
    },
    withEnvironmentProfileId(EnvironmentProfileId): {
      assert std.isString(EnvironmentProfileId) : 'EnvironmentProfileId must be a string',
      Properties+::: {
        EnvironmentProfileId: EnvironmentProfileId,
      },
    },
    withEnvironmentProfileIdentifier(EnvironmentProfileIdentifier): {
      assert std.isString(EnvironmentProfileIdentifier) : 'EnvironmentProfileIdentifier must be a string',
      Properties+::: {
        EnvironmentProfileIdentifier: EnvironmentProfileIdentifier,
      },
    },
    withGlossaryTerms(GlossaryTerms): {
      Properties+::: {
        GlossaryTerms: (if std.isArray(GlossaryTerms) then GlossaryTerms else [GlossaryTerms]),
      },
    },
    withGlossaryTermsMixin(GlossaryTerms): {
      Properties+::: {
        GlossaryTerms+: (if std.isArray(GlossaryTerms) then GlossaryTerms else [GlossaryTerms]),
      },
    },
    withEnvironmentRoleArn(EnvironmentRoleArn): {
      assert std.isString(EnvironmentRoleArn) : 'EnvironmentRoleArn must be a string',
      Properties+::: {
        EnvironmentRoleArn: EnvironmentRoleArn,
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
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: {
        UpdatedAt: UpdatedAt,
      },
    },
    withUserParameters(UserParameters): {
      Properties+::: {
        UserParameters: (if std.isArray(UserParameters) then UserParameters else [UserParameters]),
      },
    },
    withUserParametersMixin(UserParameters): {
      Properties+::: {
        UserParameters+: (if std.isArray(UserParameters) then UserParameters else [UserParameters]),
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
