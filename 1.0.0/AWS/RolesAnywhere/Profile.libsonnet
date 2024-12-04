{
  // AWS RolesAnywhere Profile
  Profile: {
    new(
      Name,
      RoleArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        RoleArns: (if std.isArray(RoleArns) then RoleArns else [RoleArns]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RolesAnywhere::Profile',
    },
    withDurationSeconds(DurationSeconds): {
      assert std.isNumber(DurationSeconds) : 'DurationSeconds must be a number',
      Properties+::: {
        DurationSeconds: DurationSeconds,
      },
    },
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: {
        Enabled: Enabled,
      },
    },
    withManagedPolicyArns(ManagedPolicyArns): {
      Properties+::: {
        ManagedPolicyArns: (if std.isArray(ManagedPolicyArns) then ManagedPolicyArns else [ManagedPolicyArns]),
      },
    },
    withManagedPolicyArnsMixin(ManagedPolicyArns): {
      Properties+::: {
        ManagedPolicyArns+: (if std.isArray(ManagedPolicyArns) then ManagedPolicyArns else [ManagedPolicyArns]),
      },
    },
    withProfileArn(ProfileArn): {
      assert std.isString(ProfileArn) : 'ProfileArn must be a string',
      Properties+::: {
        ProfileArn: ProfileArn,
      },
    },
    withProfileId(ProfileId): {
      assert std.isString(ProfileId) : 'ProfileId must be a string',
      Properties+::: {
        ProfileId: ProfileId,
      },
    },
    withRequireInstanceProperties(RequireInstanceProperties): {
      assert std.isBoolean(RequireInstanceProperties) : 'RequireInstanceProperties must be a boolean',
      Properties+::: {
        RequireInstanceProperties: RequireInstanceProperties,
      },
    },
    withSessionPolicy(SessionPolicy): {
      assert std.isString(SessionPolicy) : 'SessionPolicy must be a string',
      Properties+::: {
        SessionPolicy: SessionPolicy,
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
    withAttributeMappings(AttributeMappings): {
      Properties+::: {
        AttributeMappings: (if std.isArray(AttributeMappings) then AttributeMappings else [AttributeMappings]),
      },
    },
    withAttributeMappingsMixin(AttributeMappings): {
      Properties+::: {
        AttributeMappings+: (if std.isArray(AttributeMappings) then AttributeMappings else [AttributeMappings]),
      },
    },
    withAcceptRoleSessionName(AcceptRoleSessionName): {
      assert std.isBoolean(AcceptRoleSessionName) : 'AcceptRoleSessionName must be a boolean',
      Properties+::: {
        AcceptRoleSessionName: AcceptRoleSessionName,
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
