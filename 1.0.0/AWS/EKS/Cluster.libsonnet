{
  new(
    RoleArn,
    ResourcesVpcConfig,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
      assert std.isObject(ResourcesVpcConfig) : 'ResourcesVpcConfig must be an object',
      ResourcesVpcConfig: ResourcesVpcConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::Cluster',
  },
  withEncryptionConfig(EncryptionConfig): {
    Properties+::: {
      EncryptionConfig: (if std.isArray(EncryptionConfig) then EncryptionConfig else [EncryptionConfig]),
    },
  },
  withEncryptionConfigMixin(EncryptionConfig): {
    Properties+::: {
      EncryptionConfig+: (if std.isArray(EncryptionConfig) then EncryptionConfig else [EncryptionConfig]),
    },
  },
  withKubernetesNetworkConfig(KubernetesNetworkConfig): {
    assert std.isObject(KubernetesNetworkConfig) : 'KubernetesNetworkConfig must be a object',
    Properties+::: {
      KubernetesNetworkConfig: KubernetesNetworkConfig,
    },
  },
  withLogging(Logging): {
    assert std.isObject(Logging) : 'Logging must be a object',
    Properties+::: {
      Logging: Logging,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withOutpostConfig(OutpostConfig): {
    assert std.isObject(OutpostConfig) : 'OutpostConfig must be a object',
    Properties+::: {
      OutpostConfig: OutpostConfig,
    },
  },
  withAccessConfig(AccessConfig): {
    assert std.isObject(AccessConfig) : 'AccessConfig must be a object',
    Properties+::: {
      AccessConfig: AccessConfig,
    },
  },
  withUpgradePolicy(UpgradePolicy): {
    assert std.isObject(UpgradePolicy) : 'UpgradePolicy must be a object',
    Properties+::: {
      UpgradePolicy: UpgradePolicy,
    },
  },
  withRemoteNetworkConfig(RemoteNetworkConfig): {
    assert std.isObject(RemoteNetworkConfig) : 'RemoteNetworkConfig must be a object',
    Properties+::: {
      RemoteNetworkConfig: RemoteNetworkConfig,
    },
  },
  withComputeConfig(ComputeConfig): {
    assert std.isObject(ComputeConfig) : 'ComputeConfig must be a object',
    Properties+::: {
      ComputeConfig: ComputeConfig,
    },
  },
  withStorageConfig(StorageConfig): {
    assert std.isObject(StorageConfig) : 'StorageConfig must be a object',
    Properties+::: {
      StorageConfig: StorageConfig,
    },
  },
  withVersion(Version): {
    assert std.isString(Version) : 'Version must be a string',
    Properties+::: {
      Version: Version,
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
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withCertificateAuthorityData(CertificateAuthorityData): {
    assert std.isString(CertificateAuthorityData) : 'CertificateAuthorityData must be a string',
    Properties+::: {
      CertificateAuthorityData: CertificateAuthorityData,
    },
  },
  withClusterSecurityGroupId(ClusterSecurityGroupId): {
    assert std.isString(ClusterSecurityGroupId) : 'ClusterSecurityGroupId must be a string',
    Properties+::: {
      ClusterSecurityGroupId: ClusterSecurityGroupId,
    },
  },
  withEncryptionConfigKeyArn(EncryptionConfigKeyArn): {
    assert std.isString(EncryptionConfigKeyArn) : 'EncryptionConfigKeyArn must be a string',
    Properties+::: {
      EncryptionConfigKeyArn: EncryptionConfigKeyArn,
    },
  },
  withOpenIdConnectIssuerUrl(OpenIdConnectIssuerUrl): {
    assert std.isString(OpenIdConnectIssuerUrl) : 'OpenIdConnectIssuerUrl must be a string',
    Properties+::: {
      OpenIdConnectIssuerUrl: OpenIdConnectIssuerUrl,
    },
  },
  withBootstrapSelfManagedAddons(BootstrapSelfManagedAddons): {
    assert std.isBoolean(BootstrapSelfManagedAddons) : 'BootstrapSelfManagedAddons must be a boolean',
    Properties+::: {
      BootstrapSelfManagedAddons: BootstrapSelfManagedAddons,
    },
  },
  withZonalShiftConfig(ZonalShiftConfig): {
    assert std.isObject(ZonalShiftConfig) : 'ZonalShiftConfig must be a object',
    Properties+::: {
      ZonalShiftConfig: ZonalShiftConfig,
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
