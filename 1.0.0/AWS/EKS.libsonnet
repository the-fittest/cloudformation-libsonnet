local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessEntry: {
    '#': d.pkg(
      name='AccessEntry',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='An object representing an Amazon EKS AccessEntry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::AccessEntry Resource
        * PrincipalArn The principal ARN that the access entry is created for.
        * ClusterName The cluster that the access entry is created for.
      |||,
      args=[
        d.arg('PrincipalArn', 'd.T.string'),
        d.arg('ClusterName', 'd.T.string'),
      ]
    ),
    new(
      PrincipalArn,
      ClusterName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PrincipalArn) : 'PrincipalArn must be a string',
        PrincipalArn: PrincipalArn,
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::AccessEntry',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUsername': d.fn('`withUsername` Username ', [d.arg('Username', d.T.string)]),
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: { Username: Username },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAccessEntryArn': d.fn('`withAccessEntryArn` AccessEntryArn ', [d.arg('AccessEntryArn', d.T.string)]),
    withAccessEntryArn(AccessEntryArn): {
      assert std.isString(AccessEntryArn) : 'AccessEntryArn must be a string',
      Properties+::: { AccessEntryArn: AccessEntryArn },
    },
    '#withKubernetesGroups': d.fn('`withKubernetesGroups` KubernetesGroups ', [d.arg('KubernetesGroups', d.T.array)]),
    withKubernetesGroups(KubernetesGroups): {
      assert std.isArray(KubernetesGroups) : 'KubernetesGroups must be a array',
      Properties+::: { KubernetesGroups: KubernetesGroups },
    },
    '#withAccessPolicies': d.fn('`withAccessPolicies` AccessPolicies ', [d.arg('AccessPolicies', d.T.array)]),
    withAccessPolicies(AccessPolicies): {
      assert std.isArray(AccessPolicies) : 'AccessPolicies must be a array',
      Properties+::: { AccessPolicies: AccessPolicies },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
  },
  Addon: {
    '#': d.pkg(
      name='Addon',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='Resource Schema for AWS::EKS::Addon',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::Addon Resource
        * ClusterName Name of Cluster
        * AddonName Name of Addon
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('AddonName', 'd.T.string'),
      ]
    ),
    new(
      ClusterName,
      AddonName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isString(AddonName) : 'AddonName must be a string',
        AddonName: AddonName,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::Addon',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAddonVersion': d.fn('`withAddonVersion` AddonVersion ', [d.arg('AddonVersion', d.T.string)]),
    withAddonVersion(AddonVersion): {
      assert std.isString(AddonVersion) : 'AddonVersion must be a string',
      Properties+::: { AddonVersion: AddonVersion },
    },
    '#withPreserveOnDelete': d.fn('`withPreserveOnDelete` PreserveOnDelete ', [d.arg('PreserveOnDelete', d.T.boolean)]),
    withPreserveOnDelete(PreserveOnDelete): {
      assert std.isBoolean(PreserveOnDelete) : 'PreserveOnDelete must be a boolean',
      Properties+::: { PreserveOnDelete: PreserveOnDelete },
    },
    '#withResolveConflicts': d.fn('`withResolveConflicts` ResolveConflicts ', [d.arg('ResolveConflicts', d.T.string)]),
    withResolveConflicts(ResolveConflicts): {
      assert std.isString(ResolveConflicts) : 'ResolveConflicts must be a string',
      assert ResolveConflicts == 'NONE' || ResolveConflicts == 'OVERWRITE' || ResolveConflicts == 'PRESERVE' : "ResolveConflicts must be either 'NONE' or 'OVERWRITE' or 'PRESERVE'",
      Properties+::: { ResolveConflicts: ResolveConflicts },
    },
    '#withServiceAccountRoleArn': d.fn('`withServiceAccountRoleArn` ServiceAccountRoleArn ', [d.arg('ServiceAccountRoleArn', d.T.string)]),
    withServiceAccountRoleArn(ServiceAccountRoleArn): {
      assert std.isString(ServiceAccountRoleArn) : 'ServiceAccountRoleArn must be a string',
      Properties+::: { ServiceAccountRoleArn: ServiceAccountRoleArn },
    },
    '#withPodIdentityAssociations': d.fn('`withPodIdentityAssociations` PodIdentityAssociations ', [d.arg('PodIdentityAssociations', d.T.array)]),
    withPodIdentityAssociations(PodIdentityAssociations): {
      assert std.isArray(PodIdentityAssociations) : 'PodIdentityAssociations must be a array',
      Properties+::: { PodIdentityAssociations: PodIdentityAssociations },
    },
    '#withConfigurationValues': d.fn('`withConfigurationValues` ConfigurationValues ', [d.arg('ConfigurationValues', d.T.string)]),
    withConfigurationValues(ConfigurationValues): {
      assert std.isString(ConfigurationValues) : 'ConfigurationValues must be a string',
      Properties+::: { ConfigurationValues: ConfigurationValues },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='An object representing an Amazon EKS cluster.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::Cluster Resource
        * RoleArn The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
        * ResourcesVpcConfig 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
        d.arg('ResourcesVpcConfig', 'd.T.object'),
      ]
    ),
    new(
      RoleArn,
      ResourcesVpcConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(ResourcesVpcConfig) : 'ResourcesVpcConfig must be a object',
        ResourcesVpcConfig: ResourcesVpcConfig,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEncryptionConfig': d.fn('`withEncryptionConfig` EncryptionConfig ', [d.arg('EncryptionConfig', d.T.array)]),
    withEncryptionConfig(EncryptionConfig): {
      assert std.isArray(EncryptionConfig) : 'EncryptionConfig must be a array',
      Properties+::: { EncryptionConfig: EncryptionConfig },
    },
    '#withKubernetesNetworkConfig': d.fn('`withKubernetesNetworkConfig` KubernetesNetworkConfig ', [d.arg('KubernetesNetworkConfig', d.T.object)]),
    withKubernetesNetworkConfig(KubernetesNetworkConfig): {
      assert std.isObject(KubernetesNetworkConfig) : 'KubernetesNetworkConfig must be a object',
      Properties+::: { KubernetesNetworkConfig: KubernetesNetworkConfig },
    },
    '#withLogging': d.fn('`withLogging` Logging ', [d.arg('Logging', d.T.object)]),
    withLogging(Logging): {
      assert std.isObject(Logging) : 'Logging must be a object',
      Properties+::: { Logging: Logging },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withOutpostConfig': d.fn('`withOutpostConfig` OutpostConfig ', [d.arg('OutpostConfig', d.T.object)]),
    withOutpostConfig(OutpostConfig): {
      assert std.isObject(OutpostConfig) : 'OutpostConfig must be a object',
      Properties+::: { OutpostConfig: OutpostConfig },
    },
    '#withAccessConfig': d.fn('`withAccessConfig` AccessConfig ', [d.arg('AccessConfig', d.T.object)]),
    withAccessConfig(AccessConfig): {
      assert std.isObject(AccessConfig) : 'AccessConfig must be a object',
      Properties+::: { AccessConfig: AccessConfig },
    },
    '#withUpgradePolicy': d.fn('`withUpgradePolicy` UpgradePolicy ', [d.arg('UpgradePolicy', d.T.object)]),
    withUpgradePolicy(UpgradePolicy): {
      assert std.isObject(UpgradePolicy) : 'UpgradePolicy must be a object',
      Properties+::: { UpgradePolicy: UpgradePolicy },
    },
    '#withRemoteNetworkConfig': d.fn('`withRemoteNetworkConfig` RemoteNetworkConfig ', [d.arg('RemoteNetworkConfig', d.T.object)]),
    withRemoteNetworkConfig(RemoteNetworkConfig): {
      assert std.isObject(RemoteNetworkConfig) : 'RemoteNetworkConfig must be a object',
      Properties+::: { RemoteNetworkConfig: RemoteNetworkConfig },
    },
    '#withComputeConfig': d.fn('`withComputeConfig` ComputeConfig ', [d.arg('ComputeConfig', d.T.object)]),
    withComputeConfig(ComputeConfig): {
      assert std.isObject(ComputeConfig) : 'ComputeConfig must be a object',
      Properties+::: { ComputeConfig: ComputeConfig },
    },
    '#withStorageConfig': d.fn('`withStorageConfig` StorageConfig ', [d.arg('StorageConfig', d.T.object)]),
    withStorageConfig(StorageConfig): {
      assert std.isObject(StorageConfig) : 'StorageConfig must be a object',
      Properties+::: { StorageConfig: StorageConfig },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withCertificateAuthorityData': d.fn('`withCertificateAuthorityData` CertificateAuthorityData ', [d.arg('CertificateAuthorityData', d.T.string)]),
    withCertificateAuthorityData(CertificateAuthorityData): {
      assert std.isString(CertificateAuthorityData) : 'CertificateAuthorityData must be a string',
      Properties+::: { CertificateAuthorityData: CertificateAuthorityData },
    },
    '#withClusterSecurityGroupId': d.fn('`withClusterSecurityGroupId` ClusterSecurityGroupId ', [d.arg('ClusterSecurityGroupId', d.T.string)]),
    withClusterSecurityGroupId(ClusterSecurityGroupId): {
      assert std.isString(ClusterSecurityGroupId) : 'ClusterSecurityGroupId must be a string',
      Properties+::: { ClusterSecurityGroupId: ClusterSecurityGroupId },
    },
    '#withEncryptionConfigKeyArn': d.fn('`withEncryptionConfigKeyArn` EncryptionConfigKeyArn ', [d.arg('EncryptionConfigKeyArn', d.T.string)]),
    withEncryptionConfigKeyArn(EncryptionConfigKeyArn): {
      assert std.isString(EncryptionConfigKeyArn) : 'EncryptionConfigKeyArn must be a string',
      Properties+::: { EncryptionConfigKeyArn: EncryptionConfigKeyArn },
    },
    '#withOpenIdConnectIssuerUrl': d.fn('`withOpenIdConnectIssuerUrl` OpenIdConnectIssuerUrl ', [d.arg('OpenIdConnectIssuerUrl', d.T.string)]),
    withOpenIdConnectIssuerUrl(OpenIdConnectIssuerUrl): {
      assert std.isString(OpenIdConnectIssuerUrl) : 'OpenIdConnectIssuerUrl must be a string',
      Properties+::: { OpenIdConnectIssuerUrl: OpenIdConnectIssuerUrl },
    },
    '#withBootstrapSelfManagedAddons': d.fn('`withBootstrapSelfManagedAddons` BootstrapSelfManagedAddons ', [d.arg('BootstrapSelfManagedAddons', d.T.boolean)]),
    withBootstrapSelfManagedAddons(BootstrapSelfManagedAddons): {
      assert std.isBoolean(BootstrapSelfManagedAddons) : 'BootstrapSelfManagedAddons must be a boolean',
      Properties+::: { BootstrapSelfManagedAddons: BootstrapSelfManagedAddons },
    },
    '#withZonalShiftConfig': d.fn('`withZonalShiftConfig` ZonalShiftConfig ', [d.arg('ZonalShiftConfig', d.T.object)]),
    withZonalShiftConfig(ZonalShiftConfig): {
      assert std.isObject(ZonalShiftConfig) : 'ZonalShiftConfig must be a object',
      Properties+::: { ZonalShiftConfig: ZonalShiftConfig },
    },
  },
  FargateProfile: {
    '#': d.pkg(
      name='FargateProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='Resource Schema for AWS::EKS::FargateProfile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::FargateProfile Resource
        * ClusterName Name of the Cluster
        * PodExecutionRoleArn The IAM policy arn for pods
        * Selectors 
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('PodExecutionRoleArn', 'd.T.string'),
        d.arg('Selectors', 'd.T.array'),
      ]
    ),
    new(
      ClusterName,
      PodExecutionRoleArn,
      Selectors,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isString(PodExecutionRoleArn) : 'PodExecutionRoleArn must be a string',
        PodExecutionRoleArn: PodExecutionRoleArn,
        assert std.isArray(Selectors) : 'Selectors must be a array',
        Selectors: Selectors,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::FargateProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFargateProfileName': d.fn('`withFargateProfileName` FargateProfileName ', [d.arg('FargateProfileName', d.T.string)]),
    withFargateProfileName(FargateProfileName): {
      assert std.isString(FargateProfileName) : 'FargateProfileName must be a string',
      Properties+::: { FargateProfileName: FargateProfileName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withSubnets': d.fn('`withSubnets` Subnets ', [d.arg('Subnets', d.T.array)]),
    withSubnets(Subnets): {
      assert std.isArray(Subnets) : 'Subnets must be a array',
      Properties+::: { Subnets: Subnets },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IdentityProviderConfig: {
    '#': d.pkg(
      name='IdentityProviderConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='An object representing an Amazon EKS IdentityProviderConfig.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::IdentityProviderConfig Resource
        * Type The type of the identity provider configuration.
        * ClusterName The name of the identity provider configuration.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('ClusterName', 'd.T.string'),
      ]
    ),
    new(
      Type,
      ClusterName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'oidc' : "Type must be either 'oidc'",
        Type: Type,
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::IdentityProviderConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdentityProviderConfigName': d.fn('`withIdentityProviderConfigName` IdentityProviderConfigName ', [d.arg('IdentityProviderConfigName', d.T.string)]),
    withIdentityProviderConfigName(IdentityProviderConfigName): {
      assert std.isString(IdentityProviderConfigName) : 'IdentityProviderConfigName must be a string',
      Properties+::: { IdentityProviderConfigName: IdentityProviderConfigName },
    },
    '#withOidc': d.fn('`withOidc` Oidc ', [d.arg('Oidc', d.T.object)]),
    withOidc(Oidc): {
      assert std.isObject(Oidc) : 'Oidc must be a object',
      Properties+::: { Oidc: Oidc },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withIdentityProviderConfigArn': d.fn('`withIdentityProviderConfigArn` IdentityProviderConfigArn ', [d.arg('IdentityProviderConfigArn', d.T.string)]),
    withIdentityProviderConfigArn(IdentityProviderConfigArn): {
      assert std.isString(IdentityProviderConfigArn) : 'IdentityProviderConfigArn must be a string',
      Properties+::: { IdentityProviderConfigArn: IdentityProviderConfigArn },
    },
  },
  Nodegroup: {
    '#': d.pkg(
      name='Nodegroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='Resource schema for AWS::EKS::Nodegroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::Nodegroup Resource
        * ClusterName Name of the cluster to create the node group in.
        * NodeRole The Amazon Resource Name (ARN) of the IAM role to associate with your node group.
        * Subnets The subnets to use for the Auto Scaling group that is created for your node group.
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('NodeRole', 'd.T.string'),
        d.arg('Subnets', 'd.T.array'),
      ]
    ),
    new(
      ClusterName,
      NodeRole,
      Subnets,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isString(NodeRole) : 'NodeRole must be a string',
        NodeRole: NodeRole,
        assert std.isArray(Subnets) : 'Subnets must be a array',
        Subnets: Subnets,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::Nodegroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAmiType': d.fn('`withAmiType` AmiType ', [d.arg('AmiType', d.T.string)]),
    withAmiType(AmiType): {
      assert std.isString(AmiType) : 'AmiType must be a string',
      Properties+::: { AmiType: AmiType },
    },
    '#withCapacityType': d.fn('`withCapacityType` CapacityType ', [d.arg('CapacityType', d.T.string)]),
    withCapacityType(CapacityType): {
      assert std.isString(CapacityType) : 'CapacityType must be a string',
      Properties+::: { CapacityType: CapacityType },
    },
    '#withDiskSize': d.fn('`withDiskSize` DiskSize ', [d.arg('DiskSize', d.T.integer)]),
    withDiskSize(DiskSize): {
      assert std.isNumber(DiskSize) : 'DiskSize must be a integer',
      Properties+::: { DiskSize: DiskSize },
    },
    '#withForceUpdateEnabled': d.fn('`withForceUpdateEnabled` ForceUpdateEnabled ', [d.arg('ForceUpdateEnabled', d.T.boolean)]),
    withForceUpdateEnabled(ForceUpdateEnabled): {
      assert std.isBoolean(ForceUpdateEnabled) : 'ForceUpdateEnabled must be a boolean',
      Properties+::: { ForceUpdateEnabled: ForceUpdateEnabled },
    },
    '#withInstanceTypes': d.fn('`withInstanceTypes` InstanceTypes ', [d.arg('InstanceTypes', d.T.array)]),
    withInstanceTypes(InstanceTypes): {
      assert std.isArray(InstanceTypes) : 'InstanceTypes must be a array',
      Properties+::: { InstanceTypes: InstanceTypes },
    },
    '#withLabels': d.fn('`withLabels` Labels ', [d.arg('Labels', d.T.object)]),
    withLabels(Labels): {
      assert std.isObject(Labels) : 'Labels must be a object',
      Properties+::: { Labels: Labels },
    },
    '#withLaunchTemplate': d.fn('`withLaunchTemplate` LaunchTemplate ', [d.arg('LaunchTemplate', d.T.object)]),
    withLaunchTemplate(LaunchTemplate): {
      assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
      Properties+::: { LaunchTemplate: LaunchTemplate },
    },
    '#withNodegroupName': d.fn('`withNodegroupName` NodegroupName ', [d.arg('NodegroupName', d.T.string)]),
    withNodegroupName(NodegroupName): {
      assert std.isString(NodegroupName) : 'NodegroupName must be a string',
      Properties+::: { NodegroupName: NodegroupName },
    },
    '#withReleaseVersion': d.fn('`withReleaseVersion` ReleaseVersion ', [d.arg('ReleaseVersion', d.T.string)]),
    withReleaseVersion(ReleaseVersion): {
      assert std.isString(ReleaseVersion) : 'ReleaseVersion must be a string',
      Properties+::: { ReleaseVersion: ReleaseVersion },
    },
    '#withRemoteAccess': d.fn('`withRemoteAccess` RemoteAccess ', [d.arg('RemoteAccess', d.T.object)]),
    withRemoteAccess(RemoteAccess): {
      assert std.isObject(RemoteAccess) : 'RemoteAccess must be a object',
      Properties+::: { RemoteAccess: RemoteAccess },
    },
    '#withScalingConfig': d.fn('`withScalingConfig` ScalingConfig ', [d.arg('ScalingConfig', d.T.object)]),
    withScalingConfig(ScalingConfig): {
      assert std.isObject(ScalingConfig) : 'ScalingConfig must be a object',
      Properties+::: { ScalingConfig: ScalingConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTaints': d.fn('`withTaints` Taints ', [d.arg('Taints', d.T.array)]),
    withTaints(Taints): {
      assert std.isArray(Taints) : 'Taints must be a array',
      Properties+::: { Taints: Taints },
    },
    '#withUpdateConfig': d.fn('`withUpdateConfig` UpdateConfig ', [d.arg('UpdateConfig', d.T.object)]),
    withUpdateConfig(UpdateConfig): {
      assert std.isObject(UpdateConfig) : 'UpdateConfig must be a object',
      Properties+::: { UpdateConfig: UpdateConfig },
    },
    '#withNodeRepairConfig': d.fn('`withNodeRepairConfig` NodeRepairConfig ', [d.arg('NodeRepairConfig', d.T.object)]),
    withNodeRepairConfig(NodeRepairConfig): {
      assert std.isObject(NodeRepairConfig) : 'NodeRepairConfig must be a object',
      Properties+::: { NodeRepairConfig: NodeRepairConfig },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  PodIdentityAssociation: {
    '#': d.pkg(
      name='PodIdentityAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EKS.libsonnet',
      help='An object representing an Amazon EKS PodIdentityAssociation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EKS::PodIdentityAssociation Resource
        * ClusterName The cluster that the pod identity association is created for.
        * RoleArn The IAM role ARN that the pod identity association is created for.
        * Namespace The Kubernetes namespace that the pod identity association is created for.
        * ServiceAccount The Kubernetes service account that the pod identity association is created for.
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('Namespace', 'd.T.string'),
        d.arg('ServiceAccount', 'd.T.string'),
      ]
    ),
    new(
      ClusterName,
      RoleArn,
      Namespace,
      ServiceAccount,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(Namespace) : 'Namespace must be a string',
        Namespace: Namespace,
        assert std.isString(ServiceAccount) : 'ServiceAccount must be a string',
        ServiceAccount: ServiceAccount,
      },
      DependsOn:: [],
      Type: 'AWS::EKS::PodIdentityAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationArn': d.fn('`withAssociationArn` AssociationArn ', [d.arg('AssociationArn', d.T.string)]),
    withAssociationArn(AssociationArn): {
      assert std.isString(AssociationArn) : 'AssociationArn must be a string',
      Properties+::: { AssociationArn: AssociationArn },
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
