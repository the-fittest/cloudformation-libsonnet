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
    Type: 'AWS::Transfer::Server',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAs2ServiceManagedEgressIpAddresses(As2ServiceManagedEgressIpAddresses): {
    Properties+::: {
      As2ServiceManagedEgressIpAddresses: (if std.isArray(As2ServiceManagedEgressIpAddresses) then As2ServiceManagedEgressIpAddresses else [As2ServiceManagedEgressIpAddresses]),
    },
  },
  withAs2ServiceManagedEgressIpAddressesMixin(As2ServiceManagedEgressIpAddresses): {
    Properties+::: {
      As2ServiceManagedEgressIpAddresses+: (if std.isArray(As2ServiceManagedEgressIpAddresses) then As2ServiceManagedEgressIpAddresses else [As2ServiceManagedEgressIpAddresses]),
    },
  },
  withCertificate(Certificate): {
    assert std.isString(Certificate) : 'Certificate must be a string',
    Properties+::: {
      Certificate: Certificate,
    },
  },
  withDomain(Domain): {
    assert std.isString(Domain) : 'Domain must be a string',
    Properties+::: {
      Domain: Domain,
    },
  },
  withEndpointDetails(EndpointDetails): {
    assert std.isObject(EndpointDetails) : 'EndpointDetails must be a object',
    Properties+::: {
      EndpointDetails: EndpointDetails,
    },
  },
  withEndpointType(EndpointType): {
    assert std.isString(EndpointType) : 'EndpointType must be a string',
    Properties+::: {
      EndpointType: EndpointType,
    },
  },
  withIdentityProviderDetails(IdentityProviderDetails): {
    assert std.isObject(IdentityProviderDetails) : 'IdentityProviderDetails must be a object',
    Properties+::: {
      IdentityProviderDetails: IdentityProviderDetails,
    },
  },
  withIdentityProviderType(IdentityProviderType): {
    assert std.isString(IdentityProviderType) : 'IdentityProviderType must be a string',
    Properties+::: {
      IdentityProviderType: IdentityProviderType,
    },
  },
  withLoggingRole(LoggingRole): {
    assert std.isString(LoggingRole) : 'LoggingRole must be a string',
    Properties+::: {
      LoggingRole: LoggingRole,
    },
  },
  withPostAuthenticationLoginBanner(PostAuthenticationLoginBanner): {
    assert std.isString(PostAuthenticationLoginBanner) : 'PostAuthenticationLoginBanner must be a string',
    Properties+::: {
      PostAuthenticationLoginBanner: PostAuthenticationLoginBanner,
    },
  },
  withPreAuthenticationLoginBanner(PreAuthenticationLoginBanner): {
    assert std.isString(PreAuthenticationLoginBanner) : 'PreAuthenticationLoginBanner must be a string',
    Properties+::: {
      PreAuthenticationLoginBanner: PreAuthenticationLoginBanner,
    },
  },
  withProtocolDetails(ProtocolDetails): {
    assert std.isObject(ProtocolDetails) : 'ProtocolDetails must be a object',
    Properties+::: {
      ProtocolDetails: ProtocolDetails,
    },
  },
  withProtocols(Protocols): {
    Properties+::: {
      Protocols: (if std.isArray(Protocols) then Protocols else [Protocols]),
    },
  },
  withProtocolsMixin(Protocols): {
    Properties+::: {
      Protocols+: (if std.isArray(Protocols) then Protocols else [Protocols]),
    },
  },
  withS3StorageOptions(S3StorageOptions): {
    assert std.isObject(S3StorageOptions) : 'S3StorageOptions must be a object',
    Properties+::: {
      S3StorageOptions: S3StorageOptions,
    },
  },
  withSecurityPolicyName(SecurityPolicyName): {
    assert std.isString(SecurityPolicyName) : 'SecurityPolicyName must be a string',
    Properties+::: {
      SecurityPolicyName: SecurityPolicyName,
    },
  },
  withServerId(ServerId): {
    assert std.isString(ServerId) : 'ServerId must be a string',
    Properties+::: {
      ServerId: ServerId,
    },
  },
  withStructuredLogDestinations(StructuredLogDestinations): {
    Properties+::: {
      StructuredLogDestinations: (if std.isArray(StructuredLogDestinations) then StructuredLogDestinations else [StructuredLogDestinations]),
    },
  },
  withStructuredLogDestinationsMixin(StructuredLogDestinations): {
    Properties+::: {
      StructuredLogDestinations+: (if std.isArray(StructuredLogDestinations) then StructuredLogDestinations else [StructuredLogDestinations]),
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
  withWorkflowDetails(WorkflowDetails): {
    assert std.isObject(WorkflowDetails) : 'WorkflowDetails must be a object',
    Properties+::: {
      WorkflowDetails: WorkflowDetails,
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
