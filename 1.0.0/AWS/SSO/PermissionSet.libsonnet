{
  // AWS SSO PermissionSet
  PermissionSet: {
    new(
      Name,
      InstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SSO::PermissionSet',
    },
    withPermissionSetArn(PermissionSetArn): {
      assert std.isString(PermissionSetArn) : 'PermissionSetArn must be a string',
      Properties+::: {
        PermissionSetArn: PermissionSetArn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withSessionDuration(SessionDuration): {
      assert std.isString(SessionDuration) : 'SessionDuration must be a string',
      Properties+::: {
        SessionDuration: SessionDuration,
      },
    },
    withRelayStateType(RelayStateType): {
      assert std.isString(RelayStateType) : 'RelayStateType must be a string',
      Properties+::: {
        RelayStateType: RelayStateType,
      },
    },
    withManagedPolicies(ManagedPolicies): {
      Properties+::: {
        ManagedPolicies: (if std.isArray(ManagedPolicies) then ManagedPolicies else [ManagedPolicies]),
      },
    },
    withManagedPoliciesMixin(ManagedPolicies): {
      Properties+::: {
        ManagedPolicies+: (if std.isArray(ManagedPolicies) then ManagedPolicies else [ManagedPolicies]),
      },
    },
    withInlinePolicy(InlinePolicy): {
      Properties+::: {
        InlinePolicy: InlinePolicy,
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
    withCustomerManagedPolicyReferences(CustomerManagedPolicyReferences): {
      Properties+::: {
        CustomerManagedPolicyReferences: (if std.isArray(CustomerManagedPolicyReferences) then CustomerManagedPolicyReferences else [CustomerManagedPolicyReferences]),
      },
    },
    withCustomerManagedPolicyReferencesMixin(CustomerManagedPolicyReferences): {
      Properties+::: {
        CustomerManagedPolicyReferences+: (if std.isArray(CustomerManagedPolicyReferences) then CustomerManagedPolicyReferences else [CustomerManagedPolicyReferences]),
      },
    },
    withPermissionsBoundary(PermissionsBoundary): {
      assert std.isObject(PermissionsBoundary) : 'PermissionsBoundary must be a object',
      Properties+::: {
        PermissionsBoundary: PermissionsBoundary,
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
