local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Elasticsearch.libsonnet',
      help='Resource Type definition for AWS::Elasticsearch::Domain',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Elasticsearch::Domain Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Elasticsearch::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withElasticsearchClusterConfig': d.fn('`withElasticsearchClusterConfig` ElasticsearchClusterConfig ', [d.arg('ElasticsearchClusterConfig', d.T.object)]),
    withElasticsearchClusterConfig(ElasticsearchClusterConfig): {
      assert std.isObject(ElasticsearchClusterConfig) : 'ElasticsearchClusterConfig must be a object',
      Properties+::: { ElasticsearchClusterConfig: ElasticsearchClusterConfig },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withElasticsearchVersion': d.fn('`withElasticsearchVersion` ElasticsearchVersion ', [d.arg('ElasticsearchVersion', d.T.string)]),
    withElasticsearchVersion(ElasticsearchVersion): {
      assert std.isString(ElasticsearchVersion) : 'ElasticsearchVersion must be a string',
      Properties+::: { ElasticsearchVersion: ElasticsearchVersion },
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
    '#withAccessPolicies': d.fn('`withAccessPolicies` AccessPolicies ', [d.arg('AccessPolicies', d.T.object)]),
    withAccessPolicies(AccessPolicies): {
      assert std.isObject(AccessPolicies) : 'AccessPolicies must be a object',
      Properties+::: { AccessPolicies: AccessPolicies },
    },
    '#withDomainEndpointOptions': d.fn('`withDomainEndpointOptions` DomainEndpointOptions ', [d.arg('DomainEndpointOptions', d.T.object)]),
    withDomainEndpointOptions(DomainEndpointOptions): {
      assert std.isObject(DomainEndpointOptions) : 'DomainEndpointOptions must be a object',
      Properties+::: { DomainEndpointOptions: DomainEndpointOptions },
    },
    '#withDomainArn': d.fn('`withDomainArn` DomainArn ', [d.arg('DomainArn', d.T.string)]),
    withDomainArn(DomainArn): {
      assert std.isString(DomainArn) : 'DomainArn must be a string',
      Properties+::: { DomainArn: DomainArn },
    },
    '#withCognitoOptions': d.fn('`withCognitoOptions` CognitoOptions ', [d.arg('CognitoOptions', d.T.object)]),
    withCognitoOptions(CognitoOptions): {
      assert std.isObject(CognitoOptions) : 'CognitoOptions must be a object',
      Properties+::: { CognitoOptions: CognitoOptions },
    },
    '#withAdvancedOptions': d.fn('`withAdvancedOptions` AdvancedOptions ', [d.arg('AdvancedOptions', d.T.object)]),
    withAdvancedOptions(AdvancedOptions): {
      assert std.isObject(AdvancedOptions) : 'AdvancedOptions must be a object',
      Properties+::: { AdvancedOptions: AdvancedOptions },
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
  },
}
