{
  // AWS EMR Studio
  Studio: {
    new(
      AuthMode,
      EngineSecurityGroupId,
      Name,
      ServiceRole,
      SubnetIds,
      VpcId,
      WorkspaceSecurityGroupId,
      DefaultS3Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AuthMode) : 'AuthMode must be a string',
        AuthMode: AuthMode,
        assert std.isString(EngineSecurityGroupId) : 'EngineSecurityGroupId must be a string',
        EngineSecurityGroupId: EngineSecurityGroupId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ServiceRole) : 'ServiceRole must be a string',
        ServiceRole: ServiceRole,
        SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(WorkspaceSecurityGroupId) : 'WorkspaceSecurityGroupId must be a string',
        WorkspaceSecurityGroupId: WorkspaceSecurityGroupId,
        assert std.isString(DefaultS3Location) : 'DefaultS3Location must be a string',
        DefaultS3Location: DefaultS3Location,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EMR::Studio',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withStudioId(StudioId): {
      assert std.isString(StudioId) : 'StudioId must be a string',
      Properties+::: {
        StudioId: StudioId,
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
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: {
        Url: Url,
      },
    },
    withUserRole(UserRole): {
      assert std.isString(UserRole) : 'UserRole must be a string',
      Properties+::: {
        UserRole: UserRole,
      },
    },
    withIdpAuthUrl(IdpAuthUrl): {
      assert std.isString(IdpAuthUrl) : 'IdpAuthUrl must be a string',
      Properties+::: {
        IdpAuthUrl: IdpAuthUrl,
      },
    },
    withIdpRelayStateParameterName(IdpRelayStateParameterName): {
      assert std.isString(IdpRelayStateParameterName) : 'IdpRelayStateParameterName must be a string',
      Properties+::: {
        IdpRelayStateParameterName: IdpRelayStateParameterName,
      },
    },
    withTrustedIdentityPropagationEnabled(TrustedIdentityPropagationEnabled): {
      assert std.isBoolean(TrustedIdentityPropagationEnabled) : 'TrustedIdentityPropagationEnabled must be a boolean',
      Properties+::: {
        TrustedIdentityPropagationEnabled: TrustedIdentityPropagationEnabled,
      },
    },
    withIdcUserAssignment(IdcUserAssignment): {
      assert std.isString(IdcUserAssignment) : 'IdcUserAssignment must be a string',
      Properties+::: {
        IdcUserAssignment: IdcUserAssignment,
      },
    },
    withIdcInstanceArn(IdcInstanceArn): {
      assert std.isString(IdcInstanceArn) : 'IdcInstanceArn must be a string',
      Properties+::: {
        IdcInstanceArn: IdcInstanceArn,
      },
    },
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: {
        EncryptionKeyArn: EncryptionKeyArn,
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
