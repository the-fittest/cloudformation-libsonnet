{
  // AWS IoT DomainConfiguration
  DomainConfiguration: {
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
      Type: 'AWS::IoT::DomainConfiguration',
    },
    withDomainConfigurationName(DomainConfigurationName): {
      assert std.isString(DomainConfigurationName) : 'DomainConfigurationName must be a string',
      Properties+::: {
        DomainConfigurationName: DomainConfigurationName,
      },
    },
    withAuthorizerConfig(AuthorizerConfig): {
      assert std.isObject(AuthorizerConfig) : 'AuthorizerConfig must be a object',
      Properties+::: {
        AuthorizerConfig: AuthorizerConfig,
      },
    },
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: {
        DomainName: DomainName,
      },
    },
    withServerCertificateArns(ServerCertificateArns): {
      Properties+::: {
        ServerCertificateArns: (if std.isArray(ServerCertificateArns) then ServerCertificateArns else [ServerCertificateArns]),
      },
    },
    withServerCertificateArnsMixin(ServerCertificateArns): {
      Properties+::: {
        ServerCertificateArns+: (if std.isArray(ServerCertificateArns) then ServerCertificateArns else [ServerCertificateArns]),
      },
    },
    withServiceType(ServiceType): {
      assert std.isString(ServiceType) : 'ServiceType must be a string',
      Properties+::: {
        ServiceType: ServiceType,
      },
    },
    withValidationCertificateArn(ValidationCertificateArn): {
      assert std.isString(ValidationCertificateArn) : 'ValidationCertificateArn must be a string',
      Properties+::: {
        ValidationCertificateArn: ValidationCertificateArn,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDomainConfigurationStatus(DomainConfigurationStatus): {
      assert std.isString(DomainConfigurationStatus) : 'DomainConfigurationStatus must be a string',
      Properties+::: {
        DomainConfigurationStatus: DomainConfigurationStatus,
      },
    },
    withDomainType(DomainType): {
      assert std.isString(DomainType) : 'DomainType must be a string',
      Properties+::: {
        DomainType: DomainType,
      },
    },
    withServerCertificateConfig(ServerCertificateConfig): {
      assert std.isObject(ServerCertificateConfig) : 'ServerCertificateConfig must be a object',
      Properties+::: {
        ServerCertificateConfig: ServerCertificateConfig,
      },
    },
    withServerCertificates(ServerCertificates): {
      Properties+::: {
        ServerCertificates: (if std.isArray(ServerCertificates) then ServerCertificates else [ServerCertificates]),
      },
    },
    withServerCertificatesMixin(ServerCertificates): {
      Properties+::: {
        ServerCertificates+: (if std.isArray(ServerCertificates) then ServerCertificates else [ServerCertificates]),
      },
    },
    withTlsConfig(TlsConfig): {
      assert std.isObject(TlsConfig) : 'TlsConfig must be a object',
      Properties+::: {
        TlsConfig: TlsConfig,
      },
    },
    withAuthenticationType(AuthenticationType): {
      assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
      Properties+::: {
        AuthenticationType: AuthenticationType,
      },
    },
    withApplicationProtocol(ApplicationProtocol): {
      assert std.isString(ApplicationProtocol) : 'ApplicationProtocol must be a string',
      Properties+::: {
        ApplicationProtocol: ApplicationProtocol,
      },
    },
    withClientCertificateConfig(ClientCertificateConfig): {
      assert std.isObject(ClientCertificateConfig) : 'ClientCertificateConfig must be a object',
      Properties+::: {
        ClientCertificateConfig: ClientCertificateConfig,
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
