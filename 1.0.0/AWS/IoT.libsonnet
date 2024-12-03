local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccountAuditConfiguration: {
    '#': d.pkg(
      name='AccountAuditConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Configures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::AccountAuditConfiguration Resource
        * AccountId Your 12-digit account ID (used as the primary identifier for the CloudFormation resource).
        * AuditCheckConfigurations 
        * RoleArn The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates and other items as required when performing an audit.
      |||,
      args=[
        d.arg('AccountId', 'd.T.string'),
        d.arg('AuditCheckConfigurations', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      AccountId,
      AuditCheckConfigurations,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccountId) : 'AccountId must be a string',
        AccountId: AccountId,
        assert std.isObject(AuditCheckConfigurations) : 'AuditCheckConfigurations must be a object',
        AuditCheckConfigurations: AuditCheckConfigurations,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::AccountAuditConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAuditNotificationTargetConfigurations': d.fn('`withAuditNotificationTargetConfigurations` AuditNotificationTargetConfigurations ', [d.arg('AuditNotificationTargetConfigurations', d.T.object)]),
    withAuditNotificationTargetConfigurations(AuditNotificationTargetConfigurations): {
      assert std.isObject(AuditNotificationTargetConfigurations) : 'AuditNotificationTargetConfigurations must be a object',
      Properties+::: { AuditNotificationTargetConfigurations: AuditNotificationTargetConfigurations },
    },
  },
  Authorizer: {
    '#': d.pkg(
      name='Authorizer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Creates an authorizer.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::Authorizer Resource
        * AuthorizerFunctionArn 
      |||,
      args=[
        d.arg('AuthorizerFunctionArn', 'd.T.string'),
      ]
    ),
    new(
      AuthorizerFunctionArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AuthorizerFunctionArn) : 'AuthorizerFunctionArn must be a string',
        AuthorizerFunctionArn: AuthorizerFunctionArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::Authorizer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAuthorizerName': d.fn('`withAuthorizerName` AuthorizerName ', [d.arg('AuthorizerName', d.T.string)]),
    withAuthorizerName(AuthorizerName): {
      assert std.isString(AuthorizerName) : 'AuthorizerName must be a string',
      Properties+::: { AuthorizerName: AuthorizerName },
    },
    '#withSigningDisabled': d.fn('`withSigningDisabled` SigningDisabled ', [d.arg('SigningDisabled', d.T.boolean)]),
    withSigningDisabled(SigningDisabled): {
      assert std.isBoolean(SigningDisabled) : 'SigningDisabled must be a boolean',
      Properties+::: { SigningDisabled: SigningDisabled },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'INACTIVE' : "Status must be either 'ACTIVE' or 'INACTIVE'",
      Properties+::: { Status: Status },
    },
    '#withTokenKeyName': d.fn('`withTokenKeyName` TokenKeyName ', [d.arg('TokenKeyName', d.T.string)]),
    withTokenKeyName(TokenKeyName): {
      assert std.isString(TokenKeyName) : 'TokenKeyName must be a string',
      Properties+::: { TokenKeyName: TokenKeyName },
    },
    '#withTokenSigningPublicKeys': d.fn('`withTokenSigningPublicKeys` TokenSigningPublicKeys ', [d.arg('TokenSigningPublicKeys', d.T.object)]),
    withTokenSigningPublicKeys(TokenSigningPublicKeys): {
      assert std.isObject(TokenSigningPublicKeys) : 'TokenSigningPublicKeys must be a object',
      Properties+::: { TokenSigningPublicKeys: TokenSigningPublicKeys },
    },
    '#withEnableCachingForHttp': d.fn('`withEnableCachingForHttp` EnableCachingForHttp ', [d.arg('EnableCachingForHttp', d.T.boolean)]),
    withEnableCachingForHttp(EnableCachingForHttp): {
      assert std.isBoolean(EnableCachingForHttp) : 'EnableCachingForHttp must be a boolean',
      Properties+::: { EnableCachingForHttp: EnableCachingForHttp },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  BillingGroup: {
    '#': d.pkg(
      name='BillingGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::BillingGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::BillingGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoT::BillingGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withBillingGroupName': d.fn('`withBillingGroupName` BillingGroupName ', [d.arg('BillingGroupName', d.T.string)]),
    withBillingGroupName(BillingGroupName): {
      assert std.isString(BillingGroupName) : 'BillingGroupName must be a string',
      Properties+::: { BillingGroupName: BillingGroupName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withBillingGroupProperties': d.fn('`withBillingGroupProperties` BillingGroupProperties ', [d.arg('BillingGroupProperties', d.T.object)]),
    withBillingGroupProperties(BillingGroupProperties): {
      assert std.isObject(BillingGroupProperties) : 'BillingGroupProperties must be a object',
      Properties+::: { BillingGroupProperties: BillingGroupProperties },
    },
  },
  CACertificate: {
    '#': d.pkg(
      name='CACertificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Registers a CA Certificate in IoT.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::CACertificate Resource
        * CACertificatePem 
        * Status 
      |||,
      args=[
        d.arg('CACertificatePem', 'd.T.string'),
        d.arg('Status', 'd.T.string'),
      ]
    ),
    new(
      CACertificatePem,
      Status,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CACertificatePem) : 'CACertificatePem must be a string',
        CACertificatePem: CACertificatePem,
        assert std.isString(Status) : 'Status must be a string',
        assert Status == 'ACTIVE' || Status == 'INACTIVE' : "Status must be either 'ACTIVE' or 'INACTIVE'",
        Status: Status,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::CACertificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVerificationCertificatePem': d.fn('`withVerificationCertificatePem` VerificationCertificatePem ', [d.arg('VerificationCertificatePem', d.T.string)]),
    withVerificationCertificatePem(VerificationCertificatePem): {
      assert std.isString(VerificationCertificatePem) : 'VerificationCertificatePem must be a string',
      Properties+::: { VerificationCertificatePem: VerificationCertificatePem },
    },
    '#withCertificateMode': d.fn('`withCertificateMode` CertificateMode ', [d.arg('CertificateMode', d.T.string)]),
    withCertificateMode(CertificateMode): {
      assert std.isString(CertificateMode) : 'CertificateMode must be a string',
      assert CertificateMode == 'DEFAULT' || CertificateMode == 'SNI_ONLY' : "CertificateMode must be either 'DEFAULT' or 'SNI_ONLY'",
      Properties+::: { CertificateMode: CertificateMode },
    },
    '#withAutoRegistrationStatus': d.fn('`withAutoRegistrationStatus` AutoRegistrationStatus ', [d.arg('AutoRegistrationStatus', d.T.string)]),
    withAutoRegistrationStatus(AutoRegistrationStatus): {
      assert std.isString(AutoRegistrationStatus) : 'AutoRegistrationStatus must be a string',
      assert AutoRegistrationStatus == 'ENABLE' || AutoRegistrationStatus == 'DISABLE' : "AutoRegistrationStatus must be either 'ENABLE' or 'DISABLE'",
      Properties+::: { AutoRegistrationStatus: AutoRegistrationStatus },
    },
    '#withRemoveAutoRegistration': d.fn('`withRemoveAutoRegistration` RemoveAutoRegistration ', [d.arg('RemoveAutoRegistration', d.T.boolean)]),
    withRemoveAutoRegistration(RemoveAutoRegistration): {
      assert std.isBoolean(RemoveAutoRegistration) : 'RemoveAutoRegistration must be a boolean',
      Properties+::: { RemoveAutoRegistration: RemoveAutoRegistration },
    },
    '#withRegistrationConfig': d.fn('`withRegistrationConfig` RegistrationConfig ', [d.arg('RegistrationConfig', d.T.object)]),
    withRegistrationConfig(RegistrationConfig): {
      assert std.isObject(RegistrationConfig) : 'RegistrationConfig must be a object',
      Properties+::: { RegistrationConfig: RegistrationConfig },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Certificate: {
    '#': d.pkg(
      name='Certificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Use the AWS::IoT::Certificate resource to declare an AWS IoT X.509 certificate.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::Certificate Resource
        * Status 
      |||,
      args=[
        d.arg('Status', 'd.T.string'),
      ]
    ),
    new(
      Status,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Status) : 'Status must be a string',
        assert Status == 'ACTIVE' || Status == 'INACTIVE' || Status == 'REVOKED' || Status == 'PENDING_TRANSFER' || Status == 'PENDING_ACTIVATION' : "Status must be either 'ACTIVE' or 'INACTIVE' or 'REVOKED' or 'PENDING_TRANSFER' or 'PENDING_ACTIVATION'",
        Status: Status,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::Certificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCACertificatePem': d.fn('`withCACertificatePem` CACertificatePem ', [d.arg('CACertificatePem', d.T.string)]),
    withCACertificatePem(CACertificatePem): {
      assert std.isString(CACertificatePem) : 'CACertificatePem must be a string',
      Properties+::: { CACertificatePem: CACertificatePem },
    },
    '#withCertificatePem': d.fn('`withCertificatePem` CertificatePem ', [d.arg('CertificatePem', d.T.string)]),
    withCertificatePem(CertificatePem): {
      assert std.isString(CertificatePem) : 'CertificatePem must be a string',
      Properties+::: { CertificatePem: CertificatePem },
    },
    '#withCertificateSigningRequest': d.fn('`withCertificateSigningRequest` CertificateSigningRequest ', [d.arg('CertificateSigningRequest', d.T.string)]),
    withCertificateSigningRequest(CertificateSigningRequest): {
      assert std.isString(CertificateSigningRequest) : 'CertificateSigningRequest must be a string',
      Properties+::: { CertificateSigningRequest: CertificateSigningRequest },
    },
    '#withCertificateMode': d.fn('`withCertificateMode` CertificateMode ', [d.arg('CertificateMode', d.T.string)]),
    withCertificateMode(CertificateMode): {
      assert std.isString(CertificateMode) : 'CertificateMode must be a string',
      assert CertificateMode == 'DEFAULT' || CertificateMode == 'SNI_ONLY' : "CertificateMode must be either 'DEFAULT' or 'SNI_ONLY'",
      Properties+::: { CertificateMode: CertificateMode },
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
  CertificateProvider: {
    '#': d.pkg(
      name='CertificateProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Use the AWS::IoT::CertificateProvider resource to declare an AWS IoT Certificate Provider.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::CertificateProvider Resource
        * LambdaFunctionArn 
        * AccountDefaultForOperations 
      |||,
      args=[
        d.arg('LambdaFunctionArn', 'd.T.string'),
        d.arg('AccountDefaultForOperations', 'd.T.array'),
      ]
    ),
    new(
      LambdaFunctionArn,
      AccountDefaultForOperations,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LambdaFunctionArn) : 'LambdaFunctionArn must be a string',
        LambdaFunctionArn: LambdaFunctionArn,
        assert std.isArray(AccountDefaultForOperations) : 'AccountDefaultForOperations must be a array',
        AccountDefaultForOperations: AccountDefaultForOperations,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::CertificateProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateProviderName': d.fn('`withCertificateProviderName` CertificateProviderName ', [d.arg('CertificateProviderName', d.T.string)]),
    withCertificateProviderName(CertificateProviderName): {
      assert std.isString(CertificateProviderName) : 'CertificateProviderName must be a string',
      Properties+::: { CertificateProviderName: CertificateProviderName },
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
  },
  CustomMetric: {
    '#': d.pkg(
      name='CustomMetric',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='A custom metric published by your devices to Device Defender.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::CustomMetric Resource
        * MetricType The type of the custom metric. Types include string-list, ip-address-list, number-list, and number.
      |||,
      args=[
        d.arg('MetricType', 'd.T.string'),
      ]
    ),
    new(
      MetricType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MetricType) : 'MetricType must be a string',
        assert MetricType == 'string-list' || MetricType == 'ip-address-list' || MetricType == 'number-list' || MetricType == 'number' : "MetricType must be either 'string-list' or 'ip-address-list' or 'number-list' or 'number'",
        MetricType: MetricType,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::CustomMetric',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMetricName': d.fn('`withMetricName` MetricName ', [d.arg('MetricName', d.T.string)]),
    withMetricName(MetricName): {
      assert std.isString(MetricName) : 'MetricName must be a string',
      Properties+::: { MetricName: MetricName },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withMetricArn': d.fn('`withMetricArn` MetricArn ', [d.arg('MetricArn', d.T.string)]),
    withMetricArn(MetricArn): {
      assert std.isString(MetricArn) : 'MetricArn must be a string',
      Properties+::: { MetricArn: MetricArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Dimension: {
    '#': d.pkg(
      name='Dimension',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='A dimension can be used to limit the scope of a metric used in a security profile for AWS IoT Device Defender.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::Dimension Resource
        * Type Specifies the type of the dimension.
        * StringValues Specifies the value or list of values for the dimension.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('StringValues', 'd.T.array'),
      ]
    ),
    new(
      Type,
      StringValues,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'TOPIC_FILTER' : "Type must be either 'TOPIC_FILTER'",
        Type: Type,
        assert std.isArray(StringValues) : 'StringValues must be a array',
        StringValues: StringValues,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::Dimension',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
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
  },
  DomainConfiguration: {
    '#': d.pkg(
      name='DomainConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Create and manage a Domain Configuration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::DomainConfiguration Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IoT::DomainConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomainConfigurationName': d.fn('`withDomainConfigurationName` DomainConfigurationName ', [d.arg('DomainConfigurationName', d.T.string)]),
    withDomainConfigurationName(DomainConfigurationName): {
      assert std.isString(DomainConfigurationName) : 'DomainConfigurationName must be a string',
      Properties+::: { DomainConfigurationName: DomainConfigurationName },
    },
    '#withAuthorizerConfig': d.fn('`withAuthorizerConfig` AuthorizerConfig ', [d.arg('AuthorizerConfig', d.T.object)]),
    withAuthorizerConfig(AuthorizerConfig): {
      assert std.isObject(AuthorizerConfig) : 'AuthorizerConfig must be a object',
      Properties+::: { AuthorizerConfig: AuthorizerConfig },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withServerCertificateArns': d.fn('`withServerCertificateArns` ServerCertificateArns ', [d.arg('ServerCertificateArns', d.T.array)]),
    withServerCertificateArns(ServerCertificateArns): {
      assert std.isArray(ServerCertificateArns) : 'ServerCertificateArns must be a array',
      Properties+::: { ServerCertificateArns: ServerCertificateArns },
    },
    '#withServiceType': d.fn('`withServiceType` ServiceType ', [d.arg('ServiceType', d.T.string)]),
    withServiceType(ServiceType): {
      assert std.isString(ServiceType) : 'ServiceType must be a string',
      assert ServiceType == 'DATA' || ServiceType == 'CREDENTIAL_PROVIDER' || ServiceType == 'JOBS' : "ServiceType must be either 'DATA' or 'CREDENTIAL_PROVIDER' or 'JOBS'",
      Properties+::: { ServiceType: ServiceType },
    },
    '#withValidationCertificateArn': d.fn('`withValidationCertificateArn` ValidationCertificateArn ', [d.arg('ValidationCertificateArn', d.T.string)]),
    withValidationCertificateArn(ValidationCertificateArn): {
      assert std.isString(ValidationCertificateArn) : 'ValidationCertificateArn must be a string',
      Properties+::: { ValidationCertificateArn: ValidationCertificateArn },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDomainConfigurationStatus': d.fn('`withDomainConfigurationStatus` DomainConfigurationStatus ', [d.arg('DomainConfigurationStatus', d.T.string)]),
    withDomainConfigurationStatus(DomainConfigurationStatus): {
      assert std.isString(DomainConfigurationStatus) : 'DomainConfigurationStatus must be a string',
      assert DomainConfigurationStatus == 'ENABLED' || DomainConfigurationStatus == 'DISABLED' : "DomainConfigurationStatus must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { DomainConfigurationStatus: DomainConfigurationStatus },
    },
    '#withDomainType': d.fn('`withDomainType` DomainType ', [d.arg('DomainType', d.T.string)]),
    withDomainType(DomainType): {
      assert std.isString(DomainType) : 'DomainType must be a string',
      assert DomainType == 'ENDPOINT' || DomainType == 'AWS_MANAGED' || DomainType == 'CUSTOMER_MANAGED' : "DomainType must be either 'ENDPOINT' or 'AWS_MANAGED' or 'CUSTOMER_MANAGED'",
      Properties+::: { DomainType: DomainType },
    },
    '#withServerCertificateConfig': d.fn('`withServerCertificateConfig` ServerCertificateConfig ', [d.arg('ServerCertificateConfig', d.T.object)]),
    withServerCertificateConfig(ServerCertificateConfig): {
      assert std.isObject(ServerCertificateConfig) : 'ServerCertificateConfig must be a object',
      Properties+::: { ServerCertificateConfig: ServerCertificateConfig },
    },
    '#withServerCertificates': d.fn('`withServerCertificates` ServerCertificates ', [d.arg('ServerCertificates', d.T.array)]),
    withServerCertificates(ServerCertificates): {
      assert std.isArray(ServerCertificates) : 'ServerCertificates must be a array',
      Properties+::: { ServerCertificates: ServerCertificates },
    },
    '#withTlsConfig': d.fn('`withTlsConfig` TlsConfig ', [d.arg('TlsConfig', d.T.object)]),
    withTlsConfig(TlsConfig): {
      assert std.isObject(TlsConfig) : 'TlsConfig must be a object',
      Properties+::: { TlsConfig: TlsConfig },
    },
    '#withAuthenticationType': d.fn('`withAuthenticationType` AuthenticationType ', [d.arg('AuthenticationType', d.T.string)]),
    withAuthenticationType(AuthenticationType): {
      assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
      assert AuthenticationType == 'AWS_X509' || AuthenticationType == 'CUSTOM_AUTH' || AuthenticationType == 'AWS_SIGV4' || AuthenticationType == 'CUSTOM_AUTH_X509' || AuthenticationType == 'DEFAULT' : "AuthenticationType must be either 'AWS_X509' or 'CUSTOM_AUTH' or 'AWS_SIGV4' or 'CUSTOM_AUTH_X509' or 'DEFAULT'",
      Properties+::: { AuthenticationType: AuthenticationType },
    },
    '#withApplicationProtocol': d.fn('`withApplicationProtocol` ApplicationProtocol ', [d.arg('ApplicationProtocol', d.T.string)]),
    withApplicationProtocol(ApplicationProtocol): {
      assert std.isString(ApplicationProtocol) : 'ApplicationProtocol must be a string',
      assert ApplicationProtocol == 'SECURE_MQTT' || ApplicationProtocol == 'MQTT_WSS' || ApplicationProtocol == 'HTTPS' || ApplicationProtocol == 'DEFAULT' : "ApplicationProtocol must be either 'SECURE_MQTT' or 'MQTT_WSS' or 'HTTPS' or 'DEFAULT'",
      Properties+::: { ApplicationProtocol: ApplicationProtocol },
    },
    '#withClientCertificateConfig': d.fn('`withClientCertificateConfig` ClientCertificateConfig ', [d.arg('ClientCertificateConfig', d.T.object)]),
    withClientCertificateConfig(ClientCertificateConfig): {
      assert std.isObject(ClientCertificateConfig) : 'ClientCertificateConfig must be a object',
      Properties+::: { ClientCertificateConfig: ClientCertificateConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  FleetMetric: {
    '#': d.pkg(
      name='FleetMetric',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='An aggregated metric of certain devices in your fleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::FleetMetric Resource
        * MetricName The name of the fleet metric
      |||,
      args=[
        d.arg('MetricName', 'd.T.string'),
      ]
    ),
    new(
      MetricName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MetricName) : 'MetricName must be a string',
        MetricName: MetricName,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::FleetMetric',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withQueryString': d.fn('`withQueryString` QueryString ', [d.arg('QueryString', d.T.string)]),
    withQueryString(QueryString): {
      assert std.isString(QueryString) : 'QueryString must be a string',
      Properties+::: { QueryString: QueryString },
    },
    '#withPeriod': d.fn('`withPeriod` Period ', [d.arg('Period', d.T.integer)]),
    withPeriod(Period): {
      assert std.isNumber(Period) : 'Period must be a integer',
      Properties+::: { Period: Period },
    },
    '#withAggregationField': d.fn('`withAggregationField` AggregationField ', [d.arg('AggregationField', d.T.string)]),
    withAggregationField(AggregationField): {
      assert std.isString(AggregationField) : 'AggregationField must be a string',
      Properties+::: { AggregationField: AggregationField },
    },
    '#withQueryVersion': d.fn('`withQueryVersion` QueryVersion ', [d.arg('QueryVersion', d.T.string)]),
    withQueryVersion(QueryVersion): {
      assert std.isString(QueryVersion) : 'QueryVersion must be a string',
      Properties+::: { QueryVersion: QueryVersion },
    },
    '#withIndexName': d.fn('`withIndexName` IndexName ', [d.arg('IndexName', d.T.string)]),
    withIndexName(IndexName): {
      assert std.isString(IndexName) : 'IndexName must be a string',
      Properties+::: { IndexName: IndexName },
    },
    '#withUnit': d.fn('`withUnit` Unit ', [d.arg('Unit', d.T.string)]),
    withUnit(Unit): {
      assert std.isString(Unit) : 'Unit must be a string',
      Properties+::: { Unit: Unit },
    },
    '#withAggregationType': d.fn('`withAggregationType` AggregationType ', [d.arg('AggregationType', d.T.object)]),
    withAggregationType(AggregationType): {
      assert std.isObject(AggregationType) : 'AggregationType must be a object',
      Properties+::: { AggregationType: AggregationType },
    },
    '#withMetricArn': d.fn('`withMetricArn` MetricArn ', [d.arg('MetricArn', d.T.string)]),
    withMetricArn(MetricArn): {
      assert std.isString(MetricArn) : 'MetricArn must be a string',
      Properties+::: { MetricArn: MetricArn },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withLastModifiedDate': d.fn('`withLastModifiedDate` LastModifiedDate ', [d.arg('LastModifiedDate', d.T.string)]),
    withLastModifiedDate(LastModifiedDate): {
      assert std.isString(LastModifiedDate) : 'LastModifiedDate must be a string',
      Properties+::: { LastModifiedDate: LastModifiedDate },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.integer)]),
    withVersion(Version): {
      // Type: number
      Properties+::: { Version: Version },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  JobTemplate: {
    '#': d.pkg(
      name='JobTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Job templates enable you to preconfigure jobs so that you can deploy them to multiple sets of target devices.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::JobTemplate Resource
        * JobTemplateId 
        * Description A description of the Job Template.
      |||,
      args=[
        d.arg('JobTemplateId', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      JobTemplateId,
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(JobTemplateId) : 'JobTemplateId must be a string',
        JobTemplateId: JobTemplateId,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::JobTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withJobArn': d.fn('`withJobArn` JobArn ', [d.arg('JobArn', d.T.string)]),
    withJobArn(JobArn): {
      assert std.isString(JobArn) : 'JobArn must be a string',
      Properties+::: { JobArn: JobArn },
    },
    '#withDocument': d.fn('`withDocument` Document ', [d.arg('Document', d.T.string)]),
    withDocument(Document): {
      assert std.isString(Document) : 'Document must be a string',
      Properties+::: { Document: Document },
    },
    '#withDocumentSource': d.fn('`withDocumentSource` DocumentSource ', [d.arg('DocumentSource', d.T.string)]),
    withDocumentSource(DocumentSource): {
      assert std.isString(DocumentSource) : 'DocumentSource must be a string',
      Properties+::: { DocumentSource: DocumentSource },
    },
    '#withTimeoutConfig': d.fn('`withTimeoutConfig` TimeoutConfig ', [d.arg('TimeoutConfig', d.T.object)]),
    withTimeoutConfig(TimeoutConfig): {
      assert std.isObject(TimeoutConfig) : 'TimeoutConfig must be a object',
      Properties+::: { TimeoutConfig: TimeoutConfig },
    },
    '#withJobExecutionsRolloutConfig': d.fn('`withJobExecutionsRolloutConfig` JobExecutionsRolloutConfig ', [d.arg('JobExecutionsRolloutConfig', d.T.object)]),
    withJobExecutionsRolloutConfig(JobExecutionsRolloutConfig): {
      assert std.isObject(JobExecutionsRolloutConfig) : 'JobExecutionsRolloutConfig must be a object',
      Properties+::: { JobExecutionsRolloutConfig: JobExecutionsRolloutConfig },
    },
    '#withAbortConfig': d.fn('`withAbortConfig` AbortConfig ', [d.arg('AbortConfig', d.T.object)]),
    withAbortConfig(AbortConfig): {
      assert std.isObject(AbortConfig) : 'AbortConfig must be a object',
      Properties+::: { AbortConfig: AbortConfig },
    },
    '#withPresignedUrlConfig': d.fn('`withPresignedUrlConfig` PresignedUrlConfig ', [d.arg('PresignedUrlConfig', d.T.object)]),
    withPresignedUrlConfig(PresignedUrlConfig): {
      assert std.isObject(PresignedUrlConfig) : 'PresignedUrlConfig must be a object',
      Properties+::: { PresignedUrlConfig: PresignedUrlConfig },
    },
    '#withJobExecutionsRetryConfig': d.fn('`withJobExecutionsRetryConfig` JobExecutionsRetryConfig ', [d.arg('JobExecutionsRetryConfig', d.T.object)]),
    withJobExecutionsRetryConfig(JobExecutionsRetryConfig): {
      assert std.isObject(JobExecutionsRetryConfig) : 'JobExecutionsRetryConfig must be a object',
      Properties+::: { JobExecutionsRetryConfig: JobExecutionsRetryConfig },
    },
    '#withMaintenanceWindows': d.fn('`withMaintenanceWindows` MaintenanceWindows ', [d.arg('MaintenanceWindows', d.T.array)]),
    withMaintenanceWindows(MaintenanceWindows): {
      assert std.isArray(MaintenanceWindows) : 'MaintenanceWindows must be a array',
      Properties+::: { MaintenanceWindows: MaintenanceWindows },
    },
    '#withDestinationPackageVersions': d.fn('`withDestinationPackageVersions` DestinationPackageVersions ', [d.arg('DestinationPackageVersions', d.T.array)]),
    withDestinationPackageVersions(DestinationPackageVersions): {
      assert std.isArray(DestinationPackageVersions) : 'DestinationPackageVersions must be a array',
      Properties+::: { DestinationPackageVersions: DestinationPackageVersions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Logging: {
    '#': d.pkg(
      name='Logging',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Logging Options enable you to configure your IoT V2 logging role and default logging level so that you can monitor progress events logs as it passes from your devices through Iot core service.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::Logging Resource
        * AccountId Your 12-digit account ID (used as the primary identifier for the CloudFormation resource).
        * RoleArn The ARN of the role that allows IoT to write to Cloudwatch logs.
        * DefaultLogLevel The log level to use. Valid values are: ERROR, WARN, INFO, DEBUG, or DISABLED.
      |||,
      args=[
        d.arg('AccountId', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('DefaultLogLevel', 'd.T.string'),
      ]
    ),
    new(
      AccountId,
      RoleArn,
      DefaultLogLevel,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccountId) : 'AccountId must be a string',
        AccountId: AccountId,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(DefaultLogLevel) : 'DefaultLogLevel must be a string',
        assert DefaultLogLevel == 'ERROR' || DefaultLogLevel == 'WARN' || DefaultLogLevel == 'INFO' || DefaultLogLevel == 'DEBUG' || DefaultLogLevel == 'DISABLED' : "DefaultLogLevel must be either 'ERROR' or 'WARN' or 'INFO' or 'DEBUG' or 'DISABLED'",
        DefaultLogLevel: DefaultLogLevel,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::Logging',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  MitigationAction: {
    '#': d.pkg(
      name='MitigationAction',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Mitigation actions can be used to take actions to mitigate issues that were found in an Audit finding or Detect violation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::MitigationAction Resource
        * RoleArn 
        * ActionParams 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
        d.arg('ActionParams', 'd.T.object'),
      ]
    ),
    new(
      RoleArn,
      ActionParams,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(ActionParams) : 'ActionParams must be a object',
        ActionParams: ActionParams,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::MitigationAction',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withActionName': d.fn('`withActionName` ActionName ', [d.arg('ActionName', d.T.string)]),
    withActionName(ActionName): {
      assert std.isString(ActionName) : 'ActionName must be a string',
      Properties+::: { ActionName: ActionName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withMitigationActionArn': d.fn('`withMitigationActionArn` MitigationActionArn ', [d.arg('MitigationActionArn', d.T.string)]),
    withMitigationActionArn(MitigationActionArn): {
      assert std.isString(MitigationActionArn) : 'MitigationActionArn must be a string',
      Properties+::: { MitigationActionArn: MitigationActionArn },
    },
    '#withMitigationActionId': d.fn('`withMitigationActionId` MitigationActionId ', [d.arg('MitigationActionId', d.T.string)]),
    withMitigationActionId(MitigationActionId): {
      assert std.isString(MitigationActionId) : 'MitigationActionId must be a string',
      Properties+::: { MitigationActionId: MitigationActionId },
    },
  },
  Policy: {
    '#': d.pkg(
      name='Policy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::Policy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::Policy Resource
        * PolicyDocument 
      |||,
      args=[
        d.arg('PolicyDocument', ''),
      ]
    ),
    new(
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::Policy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withPolicyName': d.fn('`withPolicyName` PolicyName ', [d.arg('PolicyName', d.T.string)]),
    withPolicyName(PolicyName): {
      assert std.isString(PolicyName) : 'PolicyName must be a string',
      Properties+::: { PolicyName: PolicyName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PolicyPrincipalAttachment: {
    '#': d.pkg(
      name='PolicyPrincipalAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::PolicyPrincipalAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::PolicyPrincipalAttachment Resource
        * Principal 
        * PolicyName 
      |||,
      args=[
        d.arg('Principal', 'd.T.string'),
        d.arg('PolicyName', 'd.T.string'),
      ]
    ),
    new(
      Principal,
      PolicyName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Principal) : 'Principal must be a string',
        Principal: Principal,
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::PolicyPrincipalAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ProvisioningTemplate: {
    '#': d.pkg(
      name='ProvisioningTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Creates a fleet provisioning template.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::ProvisioningTemplate Resource
        * ProvisioningRoleArn 
        * TemplateBody 
      |||,
      args=[
        d.arg('ProvisioningRoleArn', 'd.T.string'),
        d.arg('TemplateBody', 'd.T.string'),
      ]
    ),
    new(
      ProvisioningRoleArn,
      TemplateBody,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProvisioningRoleArn) : 'ProvisioningRoleArn must be a string',
        ProvisioningRoleArn: ProvisioningRoleArn,
        assert std.isString(TemplateBody) : 'TemplateBody must be a string',
        TemplateBody: TemplateBody,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::ProvisioningTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTemplateArn': d.fn('`withTemplateArn` TemplateArn ', [d.arg('TemplateArn', d.T.string)]),
    withTemplateArn(TemplateArn): {
      assert std.isString(TemplateArn) : 'TemplateArn must be a string',
      Properties+::: { TemplateArn: TemplateArn },
    },
    '#withTemplateName': d.fn('`withTemplateName` TemplateName ', [d.arg('TemplateName', d.T.string)]),
    withTemplateName(TemplateName): {
      assert std.isString(TemplateName) : 'TemplateName must be a string',
      Properties+::: { TemplateName: TemplateName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withTemplateType': d.fn('`withTemplateType` TemplateType ', [d.arg('TemplateType', d.T.string)]),
    withTemplateType(TemplateType): {
      assert std.isString(TemplateType) : 'TemplateType must be a string',
      assert TemplateType == 'FLEET_PROVISIONING' || TemplateType == 'JITP' : "TemplateType must be either 'FLEET_PROVISIONING' or 'JITP'",
      Properties+::: { TemplateType: TemplateType },
    },
    '#withPreProvisioningHook': d.fn('`withPreProvisioningHook` PreProvisioningHook ', [d.arg('PreProvisioningHook', d.T.object)]),
    withPreProvisioningHook(PreProvisioningHook): {
      assert std.isObject(PreProvisioningHook) : 'PreProvisioningHook must be a object',
      Properties+::: { PreProvisioningHook: PreProvisioningHook },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResourceSpecificLogging: {
    '#': d.pkg(
      name='ResourceSpecificLogging',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource-specific logging allows you to specify a logging level for a specific thing group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::ResourceSpecificLogging Resource
        * TargetName The target name.
        * TargetType The target type. Value must be THING_GROUP, CLIENT_ID, SOURCE_IP, PRINCIPAL_ID, or EVENT_TYPE.
        * LogLevel The log level for a specific target. Valid values are: ERROR, WARN, INFO, DEBUG, or DISABLED.
      |||,
      args=[
        d.arg('TargetName', 'd.T.string'),
        d.arg('TargetType', 'd.T.string'),
        d.arg('LogLevel', 'd.T.string'),
      ]
    ),
    new(
      TargetName,
      TargetType,
      LogLevel,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetName) : 'TargetName must be a string',
        TargetName: TargetName,
        assert std.isString(TargetType) : 'TargetType must be a string',
        assert TargetType == 'THING_GROUP' || TargetType == 'CLIENT_ID' || TargetType == 'SOURCE_IP' || TargetType == 'PRINCIPAL_ID' || TargetType == 'EVENT_TYPE' : "TargetType must be either 'THING_GROUP' or 'CLIENT_ID' or 'SOURCE_IP' or 'PRINCIPAL_ID' or 'EVENT_TYPE'",
        TargetType: TargetType,
        assert std.isString(LogLevel) : 'LogLevel must be a string',
        assert LogLevel == 'ERROR' || LogLevel == 'WARN' || LogLevel == 'INFO' || LogLevel == 'DEBUG' || LogLevel == 'DISABLED' : "LogLevel must be either 'ERROR' or 'WARN' or 'INFO' or 'DEBUG' or 'DISABLED'",
        LogLevel: LogLevel,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::ResourceSpecificLogging',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTargetId': d.fn('`withTargetId` TargetId ', [d.arg('TargetId', d.T.string)]),
    withTargetId(TargetId): {
      assert std.isString(TargetId) : 'TargetId must be a string',
      Properties+::: { TargetId: TargetId },
    },
  },
  RoleAlias: {
    '#': d.pkg(
      name='RoleAlias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Use the AWS::IoT::RoleAlias resource to declare an AWS IoT RoleAlias.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::RoleAlias Resource
        * RoleArn 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::RoleAlias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRoleAlias': d.fn('`withRoleAlias` RoleAlias ', [d.arg('RoleAlias', d.T.string)]),
    withRoleAlias(RoleAlias): {
      assert std.isString(RoleAlias) : 'RoleAlias must be a string',
      Properties+::: { RoleAlias: RoleAlias },
    },
    '#withRoleAliasArn': d.fn('`withRoleAliasArn` RoleAliasArn ', [d.arg('RoleAliasArn', d.T.string)]),
    withRoleAliasArn(RoleAliasArn): {
      assert std.isString(RoleAliasArn) : 'RoleAliasArn must be a string',
      Properties+::: { RoleAliasArn: RoleAliasArn },
    },
    '#withCredentialDurationSeconds': d.fn('`withCredentialDurationSeconds` CredentialDurationSeconds ', [d.arg('CredentialDurationSeconds', d.T.integer)]),
    withCredentialDurationSeconds(CredentialDurationSeconds): {
      assert std.isNumber(CredentialDurationSeconds) : 'CredentialDurationSeconds must be a integer',
      Properties+::: { CredentialDurationSeconds: CredentialDurationSeconds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ScheduledAudit: {
    '#': d.pkg(
      name='ScheduledAudit',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Scheduled audits can be used to specify the checks you want to perform during an audit and how often the audit should be run.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::ScheduledAudit Resource
        * Frequency How often the scheduled audit takes place. Can be one of DAILY, WEEKLY, BIWEEKLY, or MONTHLY.
        * TargetCheckNames Which checks are performed during the scheduled audit. Checks must be enabled for your account.
      |||,
      args=[
        d.arg('Frequency', 'd.T.string'),
        d.arg('TargetCheckNames', 'd.T.array'),
      ]
    ),
    new(
      Frequency,
      TargetCheckNames,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Frequency) : 'Frequency must be a string',
        assert Frequency == 'DAILY' || Frequency == 'WEEKLY' || Frequency == 'BIWEEKLY' || Frequency == 'MONTHLY' : "Frequency must be either 'DAILY' or 'WEEKLY' or 'BIWEEKLY' or 'MONTHLY'",
        Frequency: Frequency,
        assert std.isArray(TargetCheckNames) : 'TargetCheckNames must be a array',
        TargetCheckNames: TargetCheckNames,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::ScheduledAudit',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withScheduledAuditName': d.fn('`withScheduledAuditName` ScheduledAuditName ', [d.arg('ScheduledAuditName', d.T.string)]),
    withScheduledAuditName(ScheduledAuditName): {
      assert std.isString(ScheduledAuditName) : 'ScheduledAuditName must be a string',
      Properties+::: { ScheduledAuditName: ScheduledAuditName },
    },
    '#withDayOfMonth': d.fn('`withDayOfMonth` DayOfMonth ', [d.arg('DayOfMonth', d.T.string)]),
    withDayOfMonth(DayOfMonth): {
      assert std.isString(DayOfMonth) : 'DayOfMonth must be a string',
      Properties+::: { DayOfMonth: DayOfMonth },
    },
    '#withDayOfWeek': d.fn('`withDayOfWeek` DayOfWeek ', [d.arg('DayOfWeek', d.T.string)]),
    withDayOfWeek(DayOfWeek): {
      assert std.isString(DayOfWeek) : 'DayOfWeek must be a string',
      assert DayOfWeek == 'SUN' || DayOfWeek == 'MON' || DayOfWeek == 'TUE' || DayOfWeek == 'WED' || DayOfWeek == 'THU' || DayOfWeek == 'FRI' || DayOfWeek == 'SAT' || DayOfWeek == 'UNSET_VALUE' : "DayOfWeek must be either 'SUN' or 'MON' or 'TUE' or 'WED' or 'THU' or 'FRI' or 'SAT' or 'UNSET_VALUE'",
      Properties+::: { DayOfWeek: DayOfWeek },
    },
    '#withScheduledAuditArn': d.fn('`withScheduledAuditArn` ScheduledAuditArn ', [d.arg('ScheduledAuditArn', d.T.string)]),
    withScheduledAuditArn(ScheduledAuditArn): {
      assert std.isString(ScheduledAuditArn) : 'ScheduledAuditArn must be a string',
      Properties+::: { ScheduledAuditArn: ScheduledAuditArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SecurityProfile: {
    '#': d.pkg(
      name='SecurityProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='A security profile defines a set of expected behaviors for devices in your account.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::SecurityProfile Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IoT::SecurityProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecurityProfileName': d.fn('`withSecurityProfileName` SecurityProfileName ', [d.arg('SecurityProfileName', d.T.string)]),
    withSecurityProfileName(SecurityProfileName): {
      assert std.isString(SecurityProfileName) : 'SecurityProfileName must be a string',
      Properties+::: { SecurityProfileName: SecurityProfileName },
    },
    '#withSecurityProfileDescription': d.fn('`withSecurityProfileDescription` SecurityProfileDescription ', [d.arg('SecurityProfileDescription', d.T.string)]),
    withSecurityProfileDescription(SecurityProfileDescription): {
      assert std.isString(SecurityProfileDescription) : 'SecurityProfileDescription must be a string',
      Properties+::: { SecurityProfileDescription: SecurityProfileDescription },
    },
    '#withBehaviors': d.fn('`withBehaviors` Behaviors ', [d.arg('Behaviors', d.T.array)]),
    withBehaviors(Behaviors): {
      assert std.isArray(Behaviors) : 'Behaviors must be a array',
      Properties+::: { Behaviors: Behaviors },
    },
    '#withAlertTargets': d.fn('`withAlertTargets` AlertTargets ', [d.arg('AlertTargets', d.T.object)]),
    withAlertTargets(AlertTargets): {
      assert std.isObject(AlertTargets) : 'AlertTargets must be a object',
      Properties+::: { AlertTargets: AlertTargets },
    },
    '#withAdditionalMetricsToRetainV2': d.fn('`withAdditionalMetricsToRetainV2` AdditionalMetricsToRetainV2 ', [d.arg('AdditionalMetricsToRetainV2', d.T.array)]),
    withAdditionalMetricsToRetainV2(AdditionalMetricsToRetainV2): {
      assert std.isArray(AdditionalMetricsToRetainV2) : 'AdditionalMetricsToRetainV2 must be a array',
      Properties+::: { AdditionalMetricsToRetainV2: AdditionalMetricsToRetainV2 },
    },
    '#withMetricsExportConfig': d.fn('`withMetricsExportConfig` MetricsExportConfig ', [d.arg('MetricsExportConfig', d.T.object)]),
    withMetricsExportConfig(MetricsExportConfig): {
      assert std.isObject(MetricsExportConfig) : 'MetricsExportConfig must be a object',
      Properties+::: { MetricsExportConfig: MetricsExportConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTargetArns': d.fn('`withTargetArns` TargetArns ', [d.arg('TargetArns', d.T.array)]),
    withTargetArns(TargetArns): {
      assert std.isArray(TargetArns) : 'TargetArns must be a array',
      Properties+::: { TargetArns: TargetArns },
    },
    '#withSecurityProfileArn': d.fn('`withSecurityProfileArn` SecurityProfileArn ', [d.arg('SecurityProfileArn', d.T.string)]),
    withSecurityProfileArn(SecurityProfileArn): {
      assert std.isString(SecurityProfileArn) : 'SecurityProfileArn must be a string',
      Properties+::: { SecurityProfileArn: SecurityProfileArn },
    },
  },
  SoftwarePackage: {
    '#': d.pkg(
      name='SoftwarePackage',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='resource definition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::SoftwarePackage Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoT::SoftwarePackage',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPackageArn': d.fn('`withPackageArn` PackageArn ', [d.arg('PackageArn', d.T.string)]),
    withPackageArn(PackageArn): {
      assert std.isString(PackageArn) : 'PackageArn must be a string',
      Properties+::: { PackageArn: PackageArn },
    },
    '#withPackageName': d.fn('`withPackageName` PackageName ', [d.arg('PackageName', d.T.string)]),
    withPackageName(PackageName): {
      assert std.isString(PackageName) : 'PackageName must be a string',
      Properties+::: { PackageName: PackageName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SoftwarePackageVersion: {
    '#': d.pkg(
      name='SoftwarePackageVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='resource definition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::SoftwarePackageVersion Resource
        * PackageName 
      |||,
      args=[
        d.arg('PackageName', 'd.T.string'),
      ]
    ),
    new(
      PackageName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PackageName) : 'PackageName must be a string',
        PackageName: PackageName,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::SoftwarePackageVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAttributes': d.fn('`withAttributes` Attributes ', [d.arg('Attributes', d.T.object)]),
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: { Attributes: Attributes },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withErrorReason': d.fn('`withErrorReason` ErrorReason ', [d.arg('ErrorReason', d.T.string)]),
    withErrorReason(ErrorReason): {
      assert std.isString(ErrorReason) : 'ErrorReason must be a string',
      Properties+::: { ErrorReason: ErrorReason },
    },
    '#withPackageVersionArn': d.fn('`withPackageVersionArn` PackageVersionArn ', [d.arg('PackageVersionArn', d.T.string)]),
    withPackageVersionArn(PackageVersionArn): {
      assert std.isString(PackageVersionArn) : 'PackageVersionArn must be a string',
      Properties+::: { PackageVersionArn: PackageVersionArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVersionName': d.fn('`withVersionName` VersionName ', [d.arg('VersionName', d.T.string)]),
    withVersionName(VersionName): {
      assert std.isString(VersionName) : 'VersionName must be a string',
      Properties+::: { VersionName: VersionName },
    },
  },
  Thing: {
    '#': d.pkg(
      name='Thing',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::Thing',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::Thing Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoT::Thing',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withAttributePayload': d.fn('`withAttributePayload` AttributePayload ', [d.arg('AttributePayload', d.T.object)]),
    withAttributePayload(AttributePayload): {
      assert std.isObject(AttributePayload) : 'AttributePayload must be a object',
      Properties+::: { AttributePayload: AttributePayload },
    },
    '#withThingName': d.fn('`withThingName` ThingName ', [d.arg('ThingName', d.T.string)]),
    withThingName(ThingName): {
      assert std.isString(ThingName) : 'ThingName must be a string',
      Properties+::: { ThingName: ThingName },
    },
  },
  ThingGroup: {
    '#': d.pkg(
      name='ThingGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::ThingGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::ThingGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoT::ThingGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withThingGroupName': d.fn('`withThingGroupName` ThingGroupName ', [d.arg('ThingGroupName', d.T.string)]),
    withThingGroupName(ThingGroupName): {
      assert std.isString(ThingGroupName) : 'ThingGroupName must be a string',
      Properties+::: { ThingGroupName: ThingGroupName },
    },
    '#withParentGroupName': d.fn('`withParentGroupName` ParentGroupName ', [d.arg('ParentGroupName', d.T.string)]),
    withParentGroupName(ParentGroupName): {
      assert std.isString(ParentGroupName) : 'ParentGroupName must be a string',
      Properties+::: { ParentGroupName: ParentGroupName },
    },
    '#withQueryString': d.fn('`withQueryString` QueryString ', [d.arg('QueryString', d.T.string)]),
    withQueryString(QueryString): {
      assert std.isString(QueryString) : 'QueryString must be a string',
      Properties+::: { QueryString: QueryString },
    },
    '#withThingGroupProperties': d.fn('`withThingGroupProperties` ThingGroupProperties ', [d.arg('ThingGroupProperties', d.T.object)]),
    withThingGroupProperties(ThingGroupProperties): {
      assert std.isObject(ThingGroupProperties) : 'ThingGroupProperties must be a object',
      Properties+::: { ThingGroupProperties: ThingGroupProperties },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ThingPrincipalAttachment: {
    '#': d.pkg(
      name='ThingPrincipalAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::ThingPrincipalAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::ThingPrincipalAttachment Resource
        * Principal 
        * ThingName 
      |||,
      args=[
        d.arg('Principal', 'd.T.string'),
        d.arg('ThingName', 'd.T.string'),
      ]
    ),
    new(
      Principal,
      ThingName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Principal) : 'Principal must be a string',
        Principal: Principal,
        assert std.isString(ThingName) : 'ThingName must be a string',
        ThingName: ThingName,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::ThingPrincipalAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ThingType: {
    '#': d.pkg(
      name='ThingType',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::ThingType',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::ThingType Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoT::ThingType',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withThingTypeName': d.fn('`withThingTypeName` ThingTypeName ', [d.arg('ThingTypeName', d.T.string)]),
    withThingTypeName(ThingTypeName): {
      assert std.isString(ThingTypeName) : 'ThingTypeName must be a string',
      Properties+::: { ThingTypeName: ThingTypeName },
    },
    '#withDeprecateThingType': d.fn('`withDeprecateThingType` DeprecateThingType ', [d.arg('DeprecateThingType', d.T.boolean)]),
    withDeprecateThingType(DeprecateThingType): {
      assert std.isBoolean(DeprecateThingType) : 'DeprecateThingType must be a boolean',
      Properties+::: { DeprecateThingType: DeprecateThingType },
    },
    '#withThingTypeProperties': d.fn('`withThingTypeProperties` ThingTypeProperties ', [d.arg('ThingTypeProperties', d.T.object)]),
    withThingTypeProperties(ThingTypeProperties): {
      assert std.isObject(ThingTypeProperties) : 'ThingTypeProperties must be a object',
      Properties+::: { ThingTypeProperties: ThingTypeProperties },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TopicRule: {
    '#': d.pkg(
      name='TopicRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::TopicRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::TopicRule Resource
        * TopicRulePayload 
      |||,
      args=[
        d.arg('TopicRulePayload', 'd.T.object'),
      ]
    ),
    new(
      TopicRulePayload,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(TopicRulePayload) : 'TopicRulePayload must be a object',
        TopicRulePayload: TopicRulePayload,
      },
      DependsOn:: [],
      Type: 'AWS::IoT::TopicRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRuleName': d.fn('`withRuleName` RuleName ', [d.arg('RuleName', d.T.string)]),
    withRuleName(RuleName): {
      assert std.isString(RuleName) : 'RuleName must be a string',
      Properties+::: { RuleName: RuleName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TopicRuleDestination: {
    '#': d.pkg(
      name='TopicRuleDestination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT.libsonnet',
      help='Resource Type definition for AWS::IoT::TopicRuleDestination',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT::TopicRuleDestination Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::IoT::TopicRuleDestination',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withHttpUrlProperties': d.fn('`withHttpUrlProperties` HttpUrlProperties ', [d.arg('HttpUrlProperties', d.T.object)]),
    withHttpUrlProperties(HttpUrlProperties): {
      assert std.isObject(HttpUrlProperties) : 'HttpUrlProperties must be a object',
      Properties+::: { HttpUrlProperties: HttpUrlProperties },
    },
    '#withStatusReason': d.fn('`withStatusReason` StatusReason ', [d.arg('StatusReason', d.T.string)]),
    withStatusReason(StatusReason): {
      assert std.isString(StatusReason) : 'StatusReason must be a string',
      Properties+::: { StatusReason: StatusReason },
    },
    '#withVpcProperties': d.fn('`withVpcProperties` VpcProperties ', [d.arg('VpcProperties', d.T.object)]),
    withVpcProperties(VpcProperties): {
      assert std.isObject(VpcProperties) : 'VpcProperties must be a object',
      Properties+::: { VpcProperties: VpcProperties },
    },
  },
}
