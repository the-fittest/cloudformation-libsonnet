{
  // AWS SageMaker Domain
  Domain: {
    new(
      AuthMode,
      DefaultUserSettings,
      DomainName,
      SubnetIds,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AuthMode) : 'AuthMode must be a string',
        AuthMode: AuthMode,
        assert std.isObject(DefaultUserSettings) : 'DefaultUserSettings must be an object',
        DefaultUserSettings: DefaultUserSettings,
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::Domain',
    },
    withDomainArn(DomainArn): {
      assert std.isString(DomainArn) : 'DomainArn must be a string',
      Properties+::: {
        DomainArn: DomainArn,
      },
    },
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: {
        Url: Url,
      },
    },
    withAppNetworkAccessType(AppNetworkAccessType): {
      assert std.isString(AppNetworkAccessType) : 'AppNetworkAccessType must be a string',
      Properties+::: {
        AppNetworkAccessType: AppNetworkAccessType,
      },
    },
    withDefaultSpaceSettings(DefaultSpaceSettings): {
      assert std.isObject(DefaultSpaceSettings) : 'DefaultSpaceSettings must be a object',
      Properties+::: {
        DefaultSpaceSettings: DefaultSpaceSettings,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
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
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: {
        DomainId: DomainId,
      },
    },
    withHomeEfsFileSystemId(HomeEfsFileSystemId): {
      assert std.isString(HomeEfsFileSystemId) : 'HomeEfsFileSystemId must be a string',
      Properties+::: {
        HomeEfsFileSystemId: HomeEfsFileSystemId,
      },
    },
    withSingleSignOnManagedApplicationInstanceId(SingleSignOnManagedApplicationInstanceId): {
      assert std.isString(SingleSignOnManagedApplicationInstanceId) : 'SingleSignOnManagedApplicationInstanceId must be a string',
      Properties+::: {
        SingleSignOnManagedApplicationInstanceId: SingleSignOnManagedApplicationInstanceId,
      },
    },
    withSingleSignOnApplicationArn(SingleSignOnApplicationArn): {
      assert std.isString(SingleSignOnApplicationArn) : 'SingleSignOnApplicationArn must be a string',
      Properties+::: {
        SingleSignOnApplicationArn: SingleSignOnApplicationArn,
      },
    },
    withDomainSettings(DomainSettings): {
      assert std.isObject(DomainSettings) : 'DomainSettings must be a object',
      Properties+::: {
        DomainSettings: DomainSettings,
      },
    },
    withAppSecurityGroupManagement(AppSecurityGroupManagement): {
      assert std.isString(AppSecurityGroupManagement) : 'AppSecurityGroupManagement must be a string',
      Properties+::: {
        AppSecurityGroupManagement: AppSecurityGroupManagement,
      },
    },
    withSecurityGroupIdForDomainBoundary(SecurityGroupIdForDomainBoundary): {
      assert std.isString(SecurityGroupIdForDomainBoundary) : 'SecurityGroupIdForDomainBoundary must be a string',
      Properties+::: {
        SecurityGroupIdForDomainBoundary: SecurityGroupIdForDomainBoundary,
      },
    },
    withTagPropagation(TagPropagation): {
      assert std.isString(TagPropagation) : 'TagPropagation must be a string',
      Properties+::: {
        TagPropagation: TagPropagation,
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
