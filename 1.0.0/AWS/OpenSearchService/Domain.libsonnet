{
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
    Type: 'AWS::OpenSearchService::Domain',
  },
  withClusterConfig(ClusterConfig): {
    assert std.isObject(ClusterConfig) : 'ClusterConfig must be a object',
    Properties+::: {
      ClusterConfig: ClusterConfig,
    },
  },
  withDomainName(DomainName): {
    assert std.isString(DomainName) : 'DomainName must be a string',
    Properties+::: {
      DomainName: DomainName,
    },
  },
  withAccessPolicies(AccessPolicies): {
    assert std.isObject(AccessPolicies) : 'AccessPolicies must be a object',
    Properties+::: {
      AccessPolicies: AccessPolicies,
    },
  },
  withIPAddressType(IPAddressType): {
    assert std.isString(IPAddressType) : 'IPAddressType must be a string',
    Properties+::: {
      IPAddressType: IPAddressType,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withAdvancedOptions(AdvancedOptions): {
    assert std.isObject(AdvancedOptions) : 'AdvancedOptions must be a object',
    Properties+::: {
      AdvancedOptions: AdvancedOptions,
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
  withDomainEndpointOptions(DomainEndpointOptions): {
    assert std.isObject(DomainEndpointOptions) : 'DomainEndpointOptions must be a object',
    Properties+::: {
      DomainEndpointOptions: DomainEndpointOptions,
    },
  },
  withCognitoOptions(CognitoOptions): {
    assert std.isObject(CognitoOptions) : 'CognitoOptions must be a object',
    Properties+::: {
      CognitoOptions: CognitoOptions,
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
  withDomainEndpointV2(DomainEndpointV2): {
    assert std.isString(DomainEndpointV2) : 'DomainEndpointV2 must be a string',
    Properties+::: {
      DomainEndpointV2: DomainEndpointV2,
    },
  },
  withDomainEndpoints(DomainEndpoints): {
    assert std.isObject(DomainEndpoints) : 'DomainEndpoints must be a object',
    Properties+::: {
      DomainEndpoints: DomainEndpoints,
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
  withDomainArn(DomainArn): {
    assert std.isString(DomainArn) : 'DomainArn must be a string',
    Properties+::: {
      DomainArn: DomainArn,
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
  withServiceSoftwareOptions(ServiceSoftwareOptions): {
    assert std.isObject(ServiceSoftwareOptions) : 'ServiceSoftwareOptions must be a object',
    Properties+::: {
      ServiceSoftwareOptions: ServiceSoftwareOptions,
    },
  },
  withOffPeakWindowOptions(OffPeakWindowOptions): {
    assert std.isObject(OffPeakWindowOptions) : 'OffPeakWindowOptions must be a object',
    Properties+::: {
      OffPeakWindowOptions: OffPeakWindowOptions,
    },
  },
  withSoftwareUpdateOptions(SoftwareUpdateOptions): {
    assert std.isObject(SoftwareUpdateOptions) : 'SoftwareUpdateOptions must be a object',
    Properties+::: {
      SoftwareUpdateOptions: SoftwareUpdateOptions,
    },
  },
  withSkipShardMigrationWait(SkipShardMigrationWait): {
    assert std.isBoolean(SkipShardMigrationWait) : 'SkipShardMigrationWait must be a boolean',
    Properties+::: {
      SkipShardMigrationWait: SkipShardMigrationWait,
    },
  },
  withIdentityCenterOptions(IdentityCenterOptions): {
    assert std.isObject(IdentityCenterOptions) : 'IdentityCenterOptions must be a object',
    Properties+::: {
      IdentityCenterOptions: IdentityCenterOptions,
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
