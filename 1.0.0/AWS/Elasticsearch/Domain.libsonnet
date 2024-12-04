{
  // AWS Elasticsearch Domain
  Domain: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Elasticsearch::Domain',
    },
    withElasticsearchClusterConfig(ElasticsearchClusterConfig): {
      assert std.isObject(ElasticsearchClusterConfig) : 'ElasticsearchClusterConfig must be a object',
      Properties+::: {
        ElasticsearchClusterConfig: ElasticsearchClusterConfig,
      },
    },
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: {
        DomainName: DomainName,
      },
    },
    withElasticsearchVersion(ElasticsearchVersion): {
      assert std.isString(ElasticsearchVersion) : 'ElasticsearchVersion must be a string',
      Properties+::: {
        ElasticsearchVersion: ElasticsearchVersion,
      },
    },
    withLogPublishingOptions(LogPublishingOptions): {
      assert std.isObject(LogPublishingOptions) : 'LogPublishingOptions must be a object',
      Properties+::: {
        LogPublishingOptions: LogPublishingOptions,
      },
    },
    withSnapshotOptions(SnapshotOptions): {
      assert std.isObject(SnapshotOptions) : 'SnapshotOptions must be a object',
      Properties+::: {
        SnapshotOptions: SnapshotOptions,
      },
    },
    withVPCOptions(VPCOptions): {
      assert std.isObject(VPCOptions) : 'VPCOptions must be a object',
      Properties+::: {
        VPCOptions: VPCOptions,
      },
    },
    withNodeToNodeEncryptionOptions(NodeToNodeEncryptionOptions): {
      assert std.isObject(NodeToNodeEncryptionOptions) : 'NodeToNodeEncryptionOptions must be a object',
      Properties+::: {
        NodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions,
      },
    },
    withAccessPolicies(AccessPolicies): {
      assert std.isObject(AccessPolicies) : 'AccessPolicies must be a object',
      Properties+::: {
        AccessPolicies: AccessPolicies,
      },
    },
    withDomainEndpointOptions(DomainEndpointOptions): {
      assert std.isObject(DomainEndpointOptions) : 'DomainEndpointOptions must be a object',
      Properties+::: {
        DomainEndpointOptions: DomainEndpointOptions,
      },
    },
    withDomainArn(DomainArn): {
      assert std.isString(DomainArn) : 'DomainArn must be a string',
      Properties+::: {
        DomainArn: DomainArn,
      },
    },
    withCognitoOptions(CognitoOptions): {
      assert std.isObject(CognitoOptions) : 'CognitoOptions must be a object',
      Properties+::: {
        CognitoOptions: CognitoOptions,
      },
    },
    withAdvancedOptions(AdvancedOptions): {
      assert std.isObject(AdvancedOptions) : 'AdvancedOptions must be a object',
      Properties+::: {
        AdvancedOptions: AdvancedOptions,
      },
    },
    withAdvancedSecurityOptions(AdvancedSecurityOptions): {
      assert std.isObject(AdvancedSecurityOptions) : 'AdvancedSecurityOptions must be a object',
      Properties+::: {
        AdvancedSecurityOptions: AdvancedSecurityOptions,
      },
    },
    withDomainEndpoint(DomainEndpoint): {
      assert std.isString(DomainEndpoint) : 'DomainEndpoint must be a string',
      Properties+::: {
        DomainEndpoint: DomainEndpoint,
      },
    },
    withEBSOptions(EBSOptions): {
      assert std.isObject(EBSOptions) : 'EBSOptions must be a object',
      Properties+::: {
        EBSOptions: EBSOptions,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withEncryptionAtRestOptions(EncryptionAtRestOptions): {
      assert std.isObject(EncryptionAtRestOptions) : 'EncryptionAtRestOptions must be a object',
      Properties+::: {
        EncryptionAtRestOptions: EncryptionAtRestOptions,
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
