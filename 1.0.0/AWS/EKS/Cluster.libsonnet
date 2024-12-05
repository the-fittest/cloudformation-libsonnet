{
  new(
    RoleArn,
    ResourcesVpcConfig,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      ResourcesVpcConfig:
        if !std.isObject(ResourcesVpcConfig) then (error 'ResourcesVpcConfig must be an object')
        else if !std.objectHas(ResourcesVpcConfig, 'SubnetIds') then (error ' have attribute SubnetIds')
        else ResourcesVpcConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::Cluster',
  },
  setEncryptionConfig(EncryptionConfig): {
    Properties+::: {
      EncryptionConfig:
        if !std.isArray(EncryptionConfig) then (error 'EncryptionConfig must be an array')
        else EncryptionConfig,
    },
  },
  setEncryptionConfigMixin(EncryptionConfig): {
    Properties+::: {
      EncryptionConfig+: EncryptionConfig,
    },
  },
  setKubernetesNetworkConfig(KubernetesNetworkConfig): {
    Properties+::: {
      KubernetesNetworkConfig:
        if !std.isObject(KubernetesNetworkConfig) then (error 'KubernetesNetworkConfig must be an object')
        else KubernetesNetworkConfig,
    },
  },
  setLogging(Logging): {
    Properties+::: {
      Logging:
        if !std.isObject(Logging) then (error 'Logging must be an object')
        else Logging,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setOutpostConfig(OutpostConfig): {
    Properties+::: {
      OutpostConfig:
        if !std.isObject(OutpostConfig) then (error 'OutpostConfig must be an object')
        else if !std.objectHas(OutpostConfig, 'OutpostArns') then (error ' have attribute OutpostArns')
        else if !std.objectHas(OutpostConfig, 'ControlPlaneInstanceType') then (error ' have attribute ControlPlaneInstanceType')
        else OutpostConfig,
    },
  },
  setAccessConfig(AccessConfig): {
    Properties+::: {
      AccessConfig:
        if !std.isObject(AccessConfig) then (error 'AccessConfig must be an object')
        else AccessConfig,
    },
  },
  setUpgradePolicy(UpgradePolicy): {
    Properties+::: {
      UpgradePolicy:
        if !std.isObject(UpgradePolicy) then (error 'UpgradePolicy must be an object')
        else UpgradePolicy,
    },
  },
  setRemoteNetworkConfig(RemoteNetworkConfig): {
    Properties+::: {
      RemoteNetworkConfig:
        if !std.isObject(RemoteNetworkConfig) then (error 'RemoteNetworkConfig must be an object')
        else if !std.objectHas(RemoteNetworkConfig, 'RemoteNodeNetworks') then (error ' have attribute RemoteNodeNetworks')
        else RemoteNetworkConfig,
    },
  },
  setComputeConfig(ComputeConfig): {
    Properties+::: {
      ComputeConfig:
        if !std.isObject(ComputeConfig) then (error 'ComputeConfig must be an object')
        else ComputeConfig,
    },
  },
  setStorageConfig(StorageConfig): {
    Properties+::: {
      StorageConfig:
        if !std.isObject(StorageConfig) then (error 'StorageConfig must be an object')
        else StorageConfig,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setCertificateAuthorityData(CertificateAuthorityData): {
    Properties+::: {
      CertificateAuthorityData:
        if !std.isString(CertificateAuthorityData) then (error 'CertificateAuthorityData must be a string')
        else if std.isEmpty(CertificateAuthorityData) then (error 'CertificateAuthorityData must be not empty')
        else CertificateAuthorityData,
    },
  },
  setClusterSecurityGroupId(ClusterSecurityGroupId): {
    Properties+::: {
      ClusterSecurityGroupId:
        if !std.isString(ClusterSecurityGroupId) then (error 'ClusterSecurityGroupId must be a string')
        else if std.isEmpty(ClusterSecurityGroupId) then (error 'ClusterSecurityGroupId must be not empty')
        else ClusterSecurityGroupId,
    },
  },
  setEncryptionConfigKeyArn(EncryptionConfigKeyArn): {
    Properties+::: {
      EncryptionConfigKeyArn:
        if !std.isString(EncryptionConfigKeyArn) then (error 'EncryptionConfigKeyArn must be a string')
        else if std.isEmpty(EncryptionConfigKeyArn) then (error 'EncryptionConfigKeyArn must be not empty')
        else EncryptionConfigKeyArn,
    },
  },
  setOpenIdConnectIssuerUrl(OpenIdConnectIssuerUrl): {
    Properties+::: {
      OpenIdConnectIssuerUrl:
        if !std.isString(OpenIdConnectIssuerUrl) then (error 'OpenIdConnectIssuerUrl must be a string')
        else if std.isEmpty(OpenIdConnectIssuerUrl) then (error 'OpenIdConnectIssuerUrl must be not empty')
        else OpenIdConnectIssuerUrl,
    },
  },
  setBootstrapSelfManagedAddons(BootstrapSelfManagedAddons): {
    Properties+::: {
      BootstrapSelfManagedAddons:
        if !std.isBoolean(BootstrapSelfManagedAddons) then (error 'BootstrapSelfManagedAddons must be a boolean') else BootstrapSelfManagedAddons,
    },
  },
  setZonalShiftConfig(ZonalShiftConfig): {
    Properties+::: {
      ZonalShiftConfig:
        if !std.isObject(ZonalShiftConfig) then (error 'ZonalShiftConfig must be an object')
        else ZonalShiftConfig,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
