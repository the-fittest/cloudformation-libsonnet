local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchService.libsonnet',
      help='Amazon OpenSearchService application resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchService::Application Resource
        * Name The name of the application.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::OpenSearchService::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIamIdentityCenterOptions': d.fn('`withIamIdentityCenterOptions` IamIdentityCenterOptions ', [d.arg('IamIdentityCenterOptions', d.T.object)]),
    withIamIdentityCenterOptions(IamIdentityCenterOptions): {
      assert std.isObject(IamIdentityCenterOptions) : 'IamIdentityCenterOptions must be a object',
      Properties+::: { IamIdentityCenterOptions: IamIdentityCenterOptions },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withAppConfigs': d.fn('`withAppConfigs` AppConfigs ', [d.arg('AppConfigs', d.T.array)]),
    withAppConfigs(AppConfigs): {
      assert std.isArray(AppConfigs) : 'AppConfigs must be a array',
      Properties+::: { AppConfigs: AppConfigs },
    },
    '#withDataSources': d.fn('`withDataSources` DataSources ', [d.arg('DataSources', d.T.array)]),
    withDataSources(DataSources): {
      assert std.isArray(DataSources) : 'DataSources must be a array',
      Properties+::: { DataSources: DataSources },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpenSearchService.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpenSearchService::Domain Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::OpenSearchService::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClusterConfig': d.fn('`withClusterConfig` ClusterConfig ', [d.arg('ClusterConfig', d.T.object)]),
    withClusterConfig(ClusterConfig): {
      assert std.isObject(ClusterConfig) : 'ClusterConfig must be a object',
      Properties+::: { ClusterConfig: ClusterConfig },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withAccessPolicies': d.fn('`withAccessPolicies` AccessPolicies ', [d.arg('AccessPolicies', d.T.object)]),
    withAccessPolicies(AccessPolicies): {
      assert std.isObject(AccessPolicies) : 'AccessPolicies must be a object',
      Properties+::: { AccessPolicies: AccessPolicies },
    },
    '#withIPAddressType': d.fn('`withIPAddressType` IPAddressType ', [d.arg('IPAddressType', d.T.string)]),
    withIPAddressType(IPAddressType): {
      assert std.isString(IPAddressType) : 'IPAddressType must be a string',
      Properties+::: { IPAddressType: IPAddressType },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withAdvancedOptions': d.fn('`withAdvancedOptions` AdvancedOptions ', [d.arg('AdvancedOptions', d.T.object)]),
    withAdvancedOptions(AdvancedOptions): {
      assert std.isObject(AdvancedOptions) : 'AdvancedOptions must be a object',
      Properties+::: { AdvancedOptions: AdvancedOptions },
    },
    '#withLogPublishingOptions': d.fn('`withLogPublishingOptions` LogPublishingOptions ', [d.arg('LogPublishingOptions', d.T.object)]),
    withLogPublishingOptions(LogPublishingOptions): {
      assert std.isObject(LogPublishingOptions) : 'LogPublishingOptions must be a object',
      Properties+::: { LogPublishingOptions: LogPublishingOptions },
    },
    '#withSnapshotOptions': d.fn('`withSnapshotOptions` SnapshotOptions ', [d.arg('SnapshotOptions', d.T.object)]),
    withSnapshotOptions(SnapshotOptions): {
      assert std.isObject(SnapshotOptions) : 'SnapshotOptions must be a object',
      Properties+::: { SnapshotOptions: SnapshotOptions },
    },
    '#withVPCOptions': d.fn('`withVPCOptions` VPCOptions ', [d.arg('VPCOptions', d.T.object)]),
    withVPCOptions(VPCOptions): {
      assert std.isObject(VPCOptions) : 'VPCOptions must be a object',
      Properties+::: { VPCOptions: VPCOptions },
    },
    '#withNodeToNodeEncryptionOptions': d.fn('`withNodeToNodeEncryptionOptions` NodeToNodeEncryptionOptions ', [d.arg('NodeToNodeEncryptionOptions', d.T.object)]),
    withNodeToNodeEncryptionOptions(NodeToNodeEncryptionOptions): {
      assert std.isObject(NodeToNodeEncryptionOptions) : 'NodeToNodeEncryptionOptions must be a object',
      Properties+::: { NodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions },
    },
    '#withDomainEndpointOptions': d.fn('`withDomainEndpointOptions` DomainEndpointOptions ', [d.arg('DomainEndpointOptions', d.T.object)]),
    withDomainEndpointOptions(DomainEndpointOptions): {
      assert std.isObject(DomainEndpointOptions) : 'DomainEndpointOptions must be a object',
      Properties+::: { DomainEndpointOptions: DomainEndpointOptions },
    },
    '#withCognitoOptions': d.fn('`withCognitoOptions` CognitoOptions ', [d.arg('CognitoOptions', d.T.object)]),
    withCognitoOptions(CognitoOptions): {
      assert std.isObject(CognitoOptions) : 'CognitoOptions must be a object',
      Properties+::: { CognitoOptions: CognitoOptions },
    },
    '#withAdvancedSecurityOptions': d.fn('`withAdvancedSecurityOptions` AdvancedSecurityOptions ', [d.arg('AdvancedSecurityOptions', d.T.object)]),
    withAdvancedSecurityOptions(AdvancedSecurityOptions): {
      assert std.isObject(AdvancedSecurityOptions) : 'AdvancedSecurityOptions must be a object',
      Properties+::: { AdvancedSecurityOptions: AdvancedSecurityOptions },
    },
    '#withDomainEndpoint': d.fn('`withDomainEndpoint` DomainEndpoint ', [d.arg('DomainEndpoint', d.T.string)]),
    withDomainEndpoint(DomainEndpoint): {
      assert std.isString(DomainEndpoint) : 'DomainEndpoint must be a string',
      Properties+::: { DomainEndpoint: DomainEndpoint },
    },
    '#withDomainEndpointV2': d.fn('`withDomainEndpointV2` DomainEndpointV2 ', [d.arg('DomainEndpointV2', d.T.string)]),
    withDomainEndpointV2(DomainEndpointV2): {
      assert std.isString(DomainEndpointV2) : 'DomainEndpointV2 must be a string',
      Properties+::: { DomainEndpointV2: DomainEndpointV2 },
    },
    '#withDomainEndpoints': d.fn('`withDomainEndpoints` DomainEndpoints ', [d.arg('DomainEndpoints', d.T.object)]),
    withDomainEndpoints(DomainEndpoints): {
      assert std.isObject(DomainEndpoints) : 'DomainEndpoints must be a object',
      Properties+::: { DomainEndpoints: DomainEndpoints },
    },
    '#withEBSOptions': d.fn('`withEBSOptions` EBSOptions ', [d.arg('EBSOptions', d.T.object)]),
    withEBSOptions(EBSOptions): {
      assert std.isObject(EBSOptions) : 'EBSOptions must be a object',
      Properties+::: { EBSOptions: EBSOptions },
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
    '#withDomainArn': d.fn('`withDomainArn` DomainArn ', [d.arg('DomainArn', d.T.string)]),
    withDomainArn(DomainArn): {
      assert std.isString(DomainArn) : 'DomainArn must be a string',
      Properties+::: { DomainArn: DomainArn },
    },
    '#withEncryptionAtRestOptions': d.fn('`withEncryptionAtRestOptions` EncryptionAtRestOptions ', [d.arg('EncryptionAtRestOptions', d.T.object)]),
    withEncryptionAtRestOptions(EncryptionAtRestOptions): {
      assert std.isObject(EncryptionAtRestOptions) : 'EncryptionAtRestOptions must be a object',
      Properties+::: { EncryptionAtRestOptions: EncryptionAtRestOptions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withServiceSoftwareOptions': d.fn('`withServiceSoftwareOptions` ServiceSoftwareOptions ', [d.arg('ServiceSoftwareOptions', d.T.object)]),
    withServiceSoftwareOptions(ServiceSoftwareOptions): {
      assert std.isObject(ServiceSoftwareOptions) : 'ServiceSoftwareOptions must be a object',
      Properties+::: { ServiceSoftwareOptions: ServiceSoftwareOptions },
    },
    '#withOffPeakWindowOptions': d.fn('`withOffPeakWindowOptions` OffPeakWindowOptions ', [d.arg('OffPeakWindowOptions', d.T.object)]),
    withOffPeakWindowOptions(OffPeakWindowOptions): {
      assert std.isObject(OffPeakWindowOptions) : 'OffPeakWindowOptions must be a object',
      Properties+::: { OffPeakWindowOptions: OffPeakWindowOptions },
    },
    '#withSoftwareUpdateOptions': d.fn('`withSoftwareUpdateOptions` SoftwareUpdateOptions ', [d.arg('SoftwareUpdateOptions', d.T.object)]),
    withSoftwareUpdateOptions(SoftwareUpdateOptions): {
      assert std.isObject(SoftwareUpdateOptions) : 'SoftwareUpdateOptions must be a object',
      Properties+::: { SoftwareUpdateOptions: SoftwareUpdateOptions },
    },
    '#withSkipShardMigrationWait': d.fn('`withSkipShardMigrationWait` SkipShardMigrationWait ', [d.arg('SkipShardMigrationWait', d.T.boolean)]),
    withSkipShardMigrationWait(SkipShardMigrationWait): {
      assert std.isBoolean(SkipShardMigrationWait) : 'SkipShardMigrationWait must be a boolean',
      Properties+::: { SkipShardMigrationWait: SkipShardMigrationWait },
    },
    '#withIdentityCenterOptions': d.fn('`withIdentityCenterOptions` IdentityCenterOptions ', [d.arg('IdentityCenterOptions', d.T.object)]),
    withIdentityCenterOptions(IdentityCenterOptions): {
      assert std.isObject(IdentityCenterOptions) : 'IdentityCenterOptions must be a object',
      Properties+::: { IdentityCenterOptions: IdentityCenterOptions },
    },
  },
}
