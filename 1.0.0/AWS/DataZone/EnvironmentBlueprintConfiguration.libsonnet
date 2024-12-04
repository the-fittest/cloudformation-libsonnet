{
  // AWS DataZone EnvironmentBlueprintConfiguration
  EnvironmentBlueprintConfiguration: {
    new(
      DomainIdentifier,
      EnvironmentBlueprintIdentifier,
      EnabledRegions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(EnvironmentBlueprintIdentifier) : 'EnvironmentBlueprintIdentifier must be a string',
        EnvironmentBlueprintIdentifier: EnvironmentBlueprintIdentifier,
        EnabledRegions: (if std.isArray(EnabledRegions) then EnabledRegions else [EnabledRegions]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataZone::EnvironmentBlueprintConfiguration',
    },
    withRegionalParameters(RegionalParameters): {
      Properties+::: {
        RegionalParameters: (if std.isArray(RegionalParameters) then RegionalParameters else [RegionalParameters]),
      },
    },
    withRegionalParametersMixin(RegionalParameters): {
      Properties+::: {
        RegionalParameters+: (if std.isArray(RegionalParameters) then RegionalParameters else [RegionalParameters]),
      },
    },
    withProvisioningRoleArn(ProvisioningRoleArn): {
      assert std.isString(ProvisioningRoleArn) : 'ProvisioningRoleArn must be a string',
      Properties+::: {
        ProvisioningRoleArn: ProvisioningRoleArn,
      },
    },
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: {
        DomainId: DomainId,
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withEnvironmentBlueprintId(EnvironmentBlueprintId): {
      assert std.isString(EnvironmentBlueprintId) : 'EnvironmentBlueprintId must be a string',
      Properties+::: {
        EnvironmentBlueprintId: EnvironmentBlueprintId,
      },
    },
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: {
        UpdatedAt: UpdatedAt,
      },
    },
    withManageAccessRoleArn(ManageAccessRoleArn): {
      assert std.isString(ManageAccessRoleArn) : 'ManageAccessRoleArn must be a string',
      Properties+::: {
        ManageAccessRoleArn: ManageAccessRoleArn,
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
