{
  // AWS S3 AccessGrant
  AccessGrant: {
    new(
      Grantee,
      Permission,
      AccessGrantsLocationId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Grantee) : 'Grantee must be an object',
        Grantee: Grantee,
        assert std.isString(Permission) : 'Permission must be a string',
        Permission: Permission,
        assert std.isString(AccessGrantsLocationId) : 'AccessGrantsLocationId must be a string',
        AccessGrantsLocationId: AccessGrantsLocationId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::S3::AccessGrant',
    },
    withAccessGrantId(AccessGrantId): {
      assert std.isString(AccessGrantId) : 'AccessGrantId must be a string',
      Properties+::: {
        AccessGrantId: AccessGrantId,
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
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: {
        ApplicationArn: ApplicationArn,
      },
    },
    withS3PrefixType(S3PrefixType): {
      assert std.isString(S3PrefixType) : 'S3PrefixType must be a string',
      Properties+::: {
        S3PrefixType: S3PrefixType,
      },
    },
    withGrantScope(GrantScope): {
      assert std.isString(GrantScope) : 'GrantScope must be a string',
      Properties+::: {
        GrantScope: GrantScope,
      },
    },
    withAccessGrantArn(AccessGrantArn): {
      assert std.isString(AccessGrantArn) : 'AccessGrantArn must be a string',
      Properties+::: {
        AccessGrantArn: AccessGrantArn,
      },
    },
    withAccessGrantsLocationConfiguration(AccessGrantsLocationConfiguration): {
      assert std.isObject(AccessGrantsLocationConfiguration) : 'AccessGrantsLocationConfiguration must be a object',
      Properties+::: {
        AccessGrantsLocationConfiguration: AccessGrantsLocationConfiguration,
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
