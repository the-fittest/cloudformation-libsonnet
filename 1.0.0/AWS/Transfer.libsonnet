local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Agreement: {
    '#': d.pkg(
      name='Agreement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Resource Type definition for AWS::Transfer::Agreement',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::Agreement Resource
        * ServerId A unique identifier for the server.
        * LocalProfileId A unique identifier for the local profile.
        * PartnerProfileId A unique identifier for the partner profile.
        * BaseDirectory Specifies the base directory for the agreement.
        * AccessRole Specifies the access role for the agreement.
      |||,
      args=[
        d.arg('ServerId', 'd.T.string'),
        d.arg('LocalProfileId', 'd.T.string'),
        d.arg('PartnerProfileId', 'd.T.string'),
        d.arg('BaseDirectory', 'd.T.string'),
        d.arg('AccessRole', 'd.T.string'),
      ]
    ),
    new(
      ServerId,
      LocalProfileId,
      PartnerProfileId,
      BaseDirectory,
      AccessRole,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServerId) : 'ServerId must be a string',
        ServerId: ServerId,
        assert std.isString(LocalProfileId) : 'LocalProfileId must be a string',
        LocalProfileId: LocalProfileId,
        assert std.isString(PartnerProfileId) : 'PartnerProfileId must be a string',
        PartnerProfileId: PartnerProfileId,
        assert std.isString(BaseDirectory) : 'BaseDirectory must be a string',
        BaseDirectory: BaseDirectory,
        assert std.isString(AccessRole) : 'AccessRole must be a string',
        AccessRole: AccessRole,
      },
      DependsOn:: [],
      Type: 'AWS::Transfer::Agreement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'INACTIVE' : "Status must be either 'ACTIVE' or 'INACTIVE'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAgreementId': d.fn('`withAgreementId` AgreementId ', [d.arg('AgreementId', d.T.string)]),
    withAgreementId(AgreementId): {
      assert std.isString(AgreementId) : 'AgreementId must be a string',
      Properties+::: { AgreementId: AgreementId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Certificate: {
    '#': d.pkg(
      name='Certificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Resource Type definition for AWS::Transfer::Certificate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::Certificate Resource
        * Certificate Specifies the certificate body to be imported.
        * Usage Specifies the usage type for the certificate.
      |||,
      args=[
        d.arg('Certificate', 'd.T.string'),
        d.arg('Usage', 'd.T.string'),
      ]
    ),
    new(
      Certificate,
      Usage,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Certificate) : 'Certificate must be a string',
        Certificate: Certificate,
        assert std.isString(Usage) : 'Usage must be a string',
        assert Usage == 'SIGNING' || Usage == 'ENCRYPTION' || Usage == 'TLS' : "Usage must be either 'SIGNING' or 'ENCRYPTION' or 'TLS'",
        Usage: Usage,
      },
      DependsOn:: [],
      Type: 'AWS::Transfer::Certificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateChain': d.fn('`withCertificateChain` CertificateChain ', [d.arg('CertificateChain', d.T.string)]),
    withCertificateChain(CertificateChain): {
      assert std.isString(CertificateChain) : 'CertificateChain must be a string',
      Properties+::: { CertificateChain: CertificateChain },
    },
    '#withPrivateKey': d.fn('`withPrivateKey` PrivateKey ', [d.arg('PrivateKey', d.T.string)]),
    withPrivateKey(PrivateKey): {
      assert std.isString(PrivateKey) : 'PrivateKey must be a string',
      Properties+::: { PrivateKey: PrivateKey },
    },
    '#withActiveDate': d.fn('`withActiveDate` ActiveDate ', [d.arg('ActiveDate', d.T.string)]),
    withActiveDate(ActiveDate): {
      assert std.isString(ActiveDate) : 'ActiveDate must be a string',
      Properties+::: { ActiveDate: ActiveDate },
    },
    '#withInactiveDate': d.fn('`withInactiveDate` InactiveDate ', [d.arg('InactiveDate', d.T.string)]),
    withInactiveDate(InactiveDate): {
      assert std.isString(InactiveDate) : 'InactiveDate must be a string',
      Properties+::: { InactiveDate: InactiveDate },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
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
    '#withCertificateId': d.fn('`withCertificateId` CertificateId ', [d.arg('CertificateId', d.T.string)]),
    withCertificateId(CertificateId): {
      assert std.isString(CertificateId) : 'CertificateId must be a string',
      Properties+::: { CertificateId: CertificateId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'PENDING' || Status == 'INACTIVE' : "Status must be either 'ACTIVE' or 'PENDING' or 'INACTIVE'",
      Properties+::: { Status: Status },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'CERTIFICATE' || Type == 'CERTIFICATE_WITH_PRIVATE_KEY' : "Type must be either 'CERTIFICATE' or 'CERTIFICATE_WITH_PRIVATE_KEY'",
      Properties+::: { Type: Type },
    },
    '#withSerial': d.fn('`withSerial` Serial ', [d.arg('Serial', d.T.string)]),
    withSerial(Serial): {
      assert std.isString(Serial) : 'Serial must be a string',
      Properties+::: { Serial: Serial },
    },
    '#withNotBeforeDate': d.fn('`withNotBeforeDate` NotBeforeDate ', [d.arg('NotBeforeDate', d.T.string)]),
    withNotBeforeDate(NotBeforeDate): {
      assert std.isString(NotBeforeDate) : 'NotBeforeDate must be a string',
      Properties+::: { NotBeforeDate: NotBeforeDate },
    },
    '#withNotAfterDate': d.fn('`withNotAfterDate` NotAfterDate ', [d.arg('NotAfterDate', d.T.string)]),
    withNotAfterDate(NotAfterDate): {
      assert std.isString(NotAfterDate) : 'NotAfterDate must be a string',
      Properties+::: { NotAfterDate: NotAfterDate },
    },
  },
  Connector: {
    '#': d.pkg(
      name='Connector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Resource Type definition for AWS::Transfer::Connector',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::Connector Resource
        * AccessRole Specifies the access role for the connector.
        * Url URL for Connector
      |||,
      args=[
        d.arg('AccessRole', 'd.T.string'),
        d.arg('Url', 'd.T.string'),
      ]
    ),
    new(
      AccessRole,
      Url,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccessRole) : 'AccessRole must be a string',
        AccessRole: AccessRole,
        assert std.isString(Url) : 'Url must be a string',
        Url: Url,
      },
      DependsOn:: [],
      Type: 'AWS::Transfer::Connector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAs2Config': d.fn('`withAs2Config` As2Config ', [d.arg('As2Config', d.T.object)]),
    withAs2Config(As2Config): {
      assert std.isObject(As2Config) : 'As2Config must be a object',
      Properties+::: { As2Config: As2Config },
    },
    '#withSftpConfig': d.fn('`withSftpConfig` SftpConfig ', [d.arg('SftpConfig', d.T.object)]),
    withSftpConfig(SftpConfig): {
      assert std.isObject(SftpConfig) : 'SftpConfig must be a object',
      Properties+::: { SftpConfig: SftpConfig },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withConnectorId': d.fn('`withConnectorId` ConnectorId ', [d.arg('ConnectorId', d.T.string)]),
    withConnectorId(ConnectorId): {
      assert std.isString(ConnectorId) : 'ConnectorId must be a string',
      Properties+::: { ConnectorId: ConnectorId },
    },
    '#withLoggingRole': d.fn('`withLoggingRole` LoggingRole ', [d.arg('LoggingRole', d.T.string)]),
    withLoggingRole(LoggingRole): {
      assert std.isString(LoggingRole) : 'LoggingRole must be a string',
      Properties+::: { LoggingRole: LoggingRole },
    },
    '#withServiceManagedEgressIpAddresses': d.fn('`withServiceManagedEgressIpAddresses` ServiceManagedEgressIpAddresses ', [d.arg('ServiceManagedEgressIpAddresses', d.T.array)]),
    withServiceManagedEgressIpAddresses(ServiceManagedEgressIpAddresses): {
      assert std.isArray(ServiceManagedEgressIpAddresses) : 'ServiceManagedEgressIpAddresses must be a array',
      Properties+::: { ServiceManagedEgressIpAddresses: ServiceManagedEgressIpAddresses },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSecurityPolicyName': d.fn('`withSecurityPolicyName` SecurityPolicyName ', [d.arg('SecurityPolicyName', d.T.string)]),
    withSecurityPolicyName(SecurityPolicyName): {
      assert std.isString(SecurityPolicyName) : 'SecurityPolicyName must be a string',
      Properties+::: { SecurityPolicyName: SecurityPolicyName },
    },
  },
  Profile: {
    '#': d.pkg(
      name='Profile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Resource Type definition for AWS::Transfer::Profile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::Profile Resource
        * As2Id AS2 identifier agreed with a trading partner.
        * ProfileType Enum specifying whether the profile is local or associated with a trading partner.
      |||,
      args=[
        d.arg('As2Id', 'd.T.string'),
        d.arg('ProfileType', 'd.T.string'),
      ]
    ),
    new(
      As2Id,
      ProfileType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(As2Id) : 'As2Id must be a string',
        As2Id: As2Id,
        assert std.isString(ProfileType) : 'ProfileType must be a string',
        assert ProfileType == 'LOCAL' || ProfileType == 'PARTNER' : "ProfileType must be either 'LOCAL' or 'PARTNER'",
        ProfileType: ProfileType,
      },
      DependsOn:: [],
      Type: 'AWS::Transfer::Profile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCertificateIds': d.fn('`withCertificateIds` CertificateIds ', [d.arg('CertificateIds', d.T.array)]),
    withCertificateIds(CertificateIds): {
      assert std.isArray(CertificateIds) : 'CertificateIds must be a array',
      Properties+::: { CertificateIds: CertificateIds },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withProfileId': d.fn('`withProfileId` ProfileId ', [d.arg('ProfileId', d.T.string)]),
    withProfileId(ProfileId): {
      assert std.isString(ProfileId) : 'ProfileId must be a string',
      Properties+::: { ProfileId: ProfileId },
    },
  },
  Server: {
    '#': d.pkg(
      name='Server',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Definition of AWS::Transfer::Server Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::Server Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Transfer::Server',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAs2ServiceManagedEgressIpAddresses': d.fn('`withAs2ServiceManagedEgressIpAddresses` As2ServiceManagedEgressIpAddresses ', [d.arg('As2ServiceManagedEgressIpAddresses', d.T.array)]),
    withAs2ServiceManagedEgressIpAddresses(As2ServiceManagedEgressIpAddresses): {
      assert std.isArray(As2ServiceManagedEgressIpAddresses) : 'As2ServiceManagedEgressIpAddresses must be a array',
      Properties+::: { As2ServiceManagedEgressIpAddresses: As2ServiceManagedEgressIpAddresses },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.string)]),
    withCertificate(Certificate): {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Properties+::: { Certificate: Certificate },
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withEndpointDetails': d.fn('`withEndpointDetails` EndpointDetails ', [d.arg('EndpointDetails', d.T.object)]),
    withEndpointDetails(EndpointDetails): {
      assert std.isObject(EndpointDetails) : 'EndpointDetails must be a object',
      Properties+::: { EndpointDetails: EndpointDetails },
    },
    '#withEndpointType': d.fn('`withEndpointType` EndpointType ', [d.arg('EndpointType', d.T.string)]),
    withEndpointType(EndpointType): {
      assert std.isString(EndpointType) : 'EndpointType must be a string',
      Properties+::: { EndpointType: EndpointType },
    },
    '#withIdentityProviderDetails': d.fn('`withIdentityProviderDetails` IdentityProviderDetails ', [d.arg('IdentityProviderDetails', d.T.object)]),
    withIdentityProviderDetails(IdentityProviderDetails): {
      assert std.isObject(IdentityProviderDetails) : 'IdentityProviderDetails must be a object',
      Properties+::: { IdentityProviderDetails: IdentityProviderDetails },
    },
    '#withIdentityProviderType': d.fn('`withIdentityProviderType` IdentityProviderType ', [d.arg('IdentityProviderType', d.T.string)]),
    withIdentityProviderType(IdentityProviderType): {
      assert std.isString(IdentityProviderType) : 'IdentityProviderType must be a string',
      Properties+::: { IdentityProviderType: IdentityProviderType },
    },
    '#withLoggingRole': d.fn('`withLoggingRole` LoggingRole ', [d.arg('LoggingRole', d.T.string)]),
    withLoggingRole(LoggingRole): {
      assert std.isString(LoggingRole) : 'LoggingRole must be a string',
      Properties+::: { LoggingRole: LoggingRole },
    },
    '#withPostAuthenticationLoginBanner': d.fn('`withPostAuthenticationLoginBanner` PostAuthenticationLoginBanner ', [d.arg('PostAuthenticationLoginBanner', d.T.string)]),
    withPostAuthenticationLoginBanner(PostAuthenticationLoginBanner): {
      assert std.isString(PostAuthenticationLoginBanner) : 'PostAuthenticationLoginBanner must be a string',
      Properties+::: { PostAuthenticationLoginBanner: PostAuthenticationLoginBanner },
    },
    '#withPreAuthenticationLoginBanner': d.fn('`withPreAuthenticationLoginBanner` PreAuthenticationLoginBanner ', [d.arg('PreAuthenticationLoginBanner', d.T.string)]),
    withPreAuthenticationLoginBanner(PreAuthenticationLoginBanner): {
      assert std.isString(PreAuthenticationLoginBanner) : 'PreAuthenticationLoginBanner must be a string',
      Properties+::: { PreAuthenticationLoginBanner: PreAuthenticationLoginBanner },
    },
    '#withProtocolDetails': d.fn('`withProtocolDetails` ProtocolDetails ', [d.arg('ProtocolDetails', d.T.object)]),
    withProtocolDetails(ProtocolDetails): {
      assert std.isObject(ProtocolDetails) : 'ProtocolDetails must be a object',
      Properties+::: { ProtocolDetails: ProtocolDetails },
    },
    '#withProtocols': d.fn('`withProtocols` Protocols ', [d.arg('Protocols', d.T.array)]),
    withProtocols(Protocols): {
      assert std.isArray(Protocols) : 'Protocols must be a array',
      Properties+::: { Protocols: Protocols },
    },
    '#withS3StorageOptions': d.fn('`withS3StorageOptions` S3StorageOptions ', [d.arg('S3StorageOptions', d.T.object)]),
    withS3StorageOptions(S3StorageOptions): {
      assert std.isObject(S3StorageOptions) : 'S3StorageOptions must be a object',
      Properties+::: { S3StorageOptions: S3StorageOptions },
    },
    '#withSecurityPolicyName': d.fn('`withSecurityPolicyName` SecurityPolicyName ', [d.arg('SecurityPolicyName', d.T.string)]),
    withSecurityPolicyName(SecurityPolicyName): {
      assert std.isString(SecurityPolicyName) : 'SecurityPolicyName must be a string',
      Properties+::: { SecurityPolicyName: SecurityPolicyName },
    },
    '#withServerId': d.fn('`withServerId` ServerId ', [d.arg('ServerId', d.T.string)]),
    withServerId(ServerId): {
      assert std.isString(ServerId) : 'ServerId must be a string',
      Properties+::: { ServerId: ServerId },
    },
    '#withStructuredLogDestinations': d.fn('`withStructuredLogDestinations` StructuredLogDestinations ', [d.arg('StructuredLogDestinations', d.T.array)]),
    withStructuredLogDestinations(StructuredLogDestinations): {
      assert std.isArray(StructuredLogDestinations) : 'StructuredLogDestinations must be a array',
      Properties+::: { StructuredLogDestinations: StructuredLogDestinations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withWorkflowDetails': d.fn('`withWorkflowDetails` WorkflowDetails ', [d.arg('WorkflowDetails', d.T.object)]),
    withWorkflowDetails(WorkflowDetails): {
      assert std.isObject(WorkflowDetails) : 'WorkflowDetails must be a object',
      Properties+::: { WorkflowDetails: WorkflowDetails },
    },
  },
  User: {
    '#': d.pkg(
      name='User',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Definition of AWS::Transfer::User Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::User Resource
        * Role 
        * ServerId 
        * UserName 
      |||,
      args=[
        d.arg('Role', 'd.T.string'),
        d.arg('ServerId', 'd.T.string'),
        d.arg('UserName', 'd.T.string'),
      ]
    ),
    new(
      Role,
      ServerId,
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isString(ServerId) : 'ServerId must be a string',
        ServerId: ServerId,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      Type: 'AWS::Transfer::User',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withHomeDirectory': d.fn('`withHomeDirectory` HomeDirectory ', [d.arg('HomeDirectory', d.T.string)]),
    withHomeDirectory(HomeDirectory): {
      assert std.isString(HomeDirectory) : 'HomeDirectory must be a string',
      Properties+::: { HomeDirectory: HomeDirectory },
    },
    '#withHomeDirectoryMappings': d.fn('`withHomeDirectoryMappings` HomeDirectoryMappings ', [d.arg('HomeDirectoryMappings', d.T.array)]),
    withHomeDirectoryMappings(HomeDirectoryMappings): {
      assert std.isArray(HomeDirectoryMappings) : 'HomeDirectoryMappings must be a array',
      Properties+::: { HomeDirectoryMappings: HomeDirectoryMappings },
    },
    '#withHomeDirectoryType': d.fn('`withHomeDirectoryType` HomeDirectoryType ', [d.arg('HomeDirectoryType', d.T.string)]),
    withHomeDirectoryType(HomeDirectoryType): {
      assert std.isString(HomeDirectoryType) : 'HomeDirectoryType must be a string',
      Properties+::: { HomeDirectoryType: HomeDirectoryType },
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy', d.T.string)]),
    withPolicy(Policy): {
      assert std.isString(Policy) : 'Policy must be a string',
      Properties+::: { Policy: Policy },
    },
    '#withPosixProfile': d.fn('`withPosixProfile` PosixProfile ', [d.arg('PosixProfile', d.T.object)]),
    withPosixProfile(PosixProfile): {
      assert std.isObject(PosixProfile) : 'PosixProfile must be a object',
      Properties+::: { PosixProfile: PosixProfile },
    },
    '#withSshPublicKeys': d.fn('`withSshPublicKeys` SshPublicKeys ', [d.arg('SshPublicKeys', d.T.array)]),
    withSshPublicKeys(SshPublicKeys): {
      assert std.isArray(SshPublicKeys) : 'SshPublicKeys must be a array',
      Properties+::: { SshPublicKeys: SshPublicKeys },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Workflow: {
    '#': d.pkg(
      name='Workflow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Transfer.libsonnet',
      help='Resource Type definition for AWS::Transfer::Workflow',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Transfer::Workflow Resource
        * Steps Specifies the details for the steps that are in the specified workflow.
      |||,
      args=[
        d.arg('Steps', 'd.T.array'),
      ]
    ),
    new(
      Steps,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Steps) : 'Steps must be a array',
        Steps: Steps,
      },
      DependsOn:: [],
      Type: 'AWS::Transfer::Workflow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOnExceptionSteps': d.fn('`withOnExceptionSteps` OnExceptionSteps ', [d.arg('OnExceptionSteps', d.T.array)]),
    withOnExceptionSteps(OnExceptionSteps): {
      assert std.isArray(OnExceptionSteps) : 'OnExceptionSteps must be a array',
      Properties+::: { OnExceptionSteps: OnExceptionSteps },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withWorkflowId': d.fn('`withWorkflowId` WorkflowId ', [d.arg('WorkflowId', d.T.string)]),
    withWorkflowId(WorkflowId): {
      assert std.isString(WorkflowId) : 'WorkflowId must be a string',
      Properties+::: { WorkflowId: WorkflowId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
