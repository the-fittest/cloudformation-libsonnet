{
  // AWS LicenseManager Grant
  Grant: {
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
      Type: 'AWS::LicenseManager::Grant',
    },
    withGrantArn(GrantArn): {
      assert std.isString(GrantArn) : 'GrantArn must be a string',
      Properties+::: {
        GrantArn: GrantArn,
      },
    },
    withGrantName(GrantName): {
      assert std.isString(GrantName) : 'GrantName must be a string',
      Properties+::: {
        GrantName: GrantName,
      },
    },
    withLicenseArn(LicenseArn): {
      assert std.isString(LicenseArn) : 'LicenseArn must be a string',
      Properties+::: {
        LicenseArn: LicenseArn,
      },
    },
    withHomeRegion(HomeRegion): {
      assert std.isString(HomeRegion) : 'HomeRegion must be a string',
      Properties+::: {
        HomeRegion: HomeRegion,
      },
    },
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: {
        Version: Version,
      },
    },
    withAllowedOperations(AllowedOperations): {
      Properties+::: {
        AllowedOperations: (if std.isArray(AllowedOperations) then AllowedOperations else [AllowedOperations]),
      },
    },
    withAllowedOperationsMixin(AllowedOperations): {
      Properties+::: {
        AllowedOperations+: (if std.isArray(AllowedOperations) then AllowedOperations else [AllowedOperations]),
      },
    },
    withPrincipals(Principals): {
      Properties+::: {
        Principals: (if std.isArray(Principals) then Principals else [Principals]),
      },
    },
    withPrincipalsMixin(Principals): {
      Properties+::: {
        Principals+: (if std.isArray(Principals) then Principals else [Principals]),
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
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
