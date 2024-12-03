local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Certificate: {
    '#': d.pkg(
      name='Certificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ACMPCA.libsonnet',
      help='The AWS::ACMPCA::Certificate resource is used to issue a certificate using your private certificate authority. For more information, see the [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html) action.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ACMPCA::Certificate Resource
        * CertificateAuthorityArn The Amazon Resource Name (ARN) for the private CA issues the certificate.
        * CertificateSigningRequest The certificate signing request (CSR) for the certificate.
        * SigningAlgorithm The name of the algorithm that will be used to sign the certificate to be issued.  This parameter should not be confused with the SigningAlgorithm parameter used to sign a CSR in the CreateCertificateAuthority action.The specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CAs secret key.
        * Validity The period of time during which the certificate will be valid.
      |||,
      args=[
        d.arg('CertificateAuthorityArn', 'd.T.string'),
        d.arg('CertificateSigningRequest', 'd.T.string'),
        d.arg('SigningAlgorithm', 'd.T.string'),
        d.arg('Validity', 'd.T.object'),
      ]
    ),
    new(
      CertificateAuthorityArn,
      CertificateSigningRequest,
      SigningAlgorithm,
      Validity,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
        CertificateAuthorityArn: CertificateAuthorityArn,
        assert std.isString(CertificateSigningRequest) : 'CertificateSigningRequest must be a string',
        CertificateSigningRequest: CertificateSigningRequest,
        assert std.isString(SigningAlgorithm) : 'SigningAlgorithm must be a string',
        SigningAlgorithm: SigningAlgorithm,
        assert std.isObject(Validity) : 'Validity must be a object',
        Validity: Validity,
      },
      DependsOn:: [],
      Type: 'AWS::ACMPCA::Certificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApiPassthrough': d.fn('`withApiPassthrough` ApiPassthrough ', [d.arg('ApiPassthrough', d.T.object)]),
    withApiPassthrough(ApiPassthrough): {
      assert std.isObject(ApiPassthrough) : 'ApiPassthrough must be a object',
      Properties+::: { ApiPassthrough: ApiPassthrough },
    },
    '#withTemplateArn': d.fn('`withTemplateArn` TemplateArn ', [d.arg('TemplateArn', d.T.string)]),
    withTemplateArn(TemplateArn): {
      assert std.isString(TemplateArn) : 'TemplateArn must be a string',
      Properties+::: { TemplateArn: TemplateArn },
    },
    '#withValidityNotBefore': d.fn('`withValidityNotBefore` ValidityNotBefore ', [d.arg('ValidityNotBefore', d.T.object)]),
    withValidityNotBefore(ValidityNotBefore): {
      assert std.isObject(ValidityNotBefore) : 'ValidityNotBefore must be a object',
      Properties+::: { ValidityNotBefore: ValidityNotBefore },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.string)]),
    withCertificate(Certificate): {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Properties+::: { Certificate: Certificate },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  CertificateAuthority: {
    '#': d.pkg(
      name='CertificateAuthority',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ACMPCA.libsonnet',
      help='Private certificate authority.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ACMPCA::CertificateAuthority Resource
        * Type The type of the certificate authority.
        * KeyAlgorithm Public key algorithm and size, in bits, of the key pair that your CA creates when it issues a certificate.
        * SigningAlgorithm Algorithm your CA uses to sign certificate requests.
        * Subject Structure that contains X.500 distinguished name information for your CA.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('KeyAlgorithm', 'd.T.string'),
        d.arg('SigningAlgorithm', 'd.T.string'),
        d.arg('Subject', 'd.T.object'),
      ]
    ),
    new(
      Type,
      KeyAlgorithm,
      SigningAlgorithm,
      Subject,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(KeyAlgorithm) : 'KeyAlgorithm must be a string',
        KeyAlgorithm: KeyAlgorithm,
        assert std.isString(SigningAlgorithm) : 'SigningAlgorithm must be a string',
        SigningAlgorithm: SigningAlgorithm,
        assert std.isObject(Subject) : 'Subject must be a object',
        Subject: Subject,
      },
      DependsOn:: [],
      Type: 'AWS::ACMPCA::CertificateAuthority',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRevocationConfiguration': d.fn('`withRevocationConfiguration` RevocationConfiguration ', [d.arg('RevocationConfiguration', d.T.object)]),
    withRevocationConfiguration(RevocationConfiguration): {
      assert std.isObject(RevocationConfiguration) : 'RevocationConfiguration must be a object',
      Properties+::: { RevocationConfiguration: RevocationConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCertificateSigningRequest': d.fn('`withCertificateSigningRequest` CertificateSigningRequest ', [d.arg('CertificateSigningRequest', d.T.string)]),
    withCertificateSigningRequest(CertificateSigningRequest): {
      assert std.isString(CertificateSigningRequest) : 'CertificateSigningRequest must be a string',
      Properties+::: { CertificateSigningRequest: CertificateSigningRequest },
    },
    '#withCsrExtensions': d.fn('`withCsrExtensions` CsrExtensions ', [d.arg('CsrExtensions', d.T.object)]),
    withCsrExtensions(CsrExtensions): {
      assert std.isObject(CsrExtensions) : 'CsrExtensions must be a object',
      Properties+::: { CsrExtensions: CsrExtensions },
    },
    '#withKeyStorageSecurityStandard': d.fn('`withKeyStorageSecurityStandard` KeyStorageSecurityStandard ', [d.arg('KeyStorageSecurityStandard', d.T.string)]),
    withKeyStorageSecurityStandard(KeyStorageSecurityStandard): {
      assert std.isString(KeyStorageSecurityStandard) : 'KeyStorageSecurityStandard must be a string',
      Properties+::: { KeyStorageSecurityStandard: KeyStorageSecurityStandard },
    },
    '#withUsageMode': d.fn('`withUsageMode` UsageMode ', [d.arg('UsageMode', d.T.string)]),
    withUsageMode(UsageMode): {
      assert std.isString(UsageMode) : 'UsageMode must be a string',
      Properties+::: { UsageMode: UsageMode },
    },
  },
  CertificateAuthorityActivation: {
    '#': d.pkg(
      name='CertificateAuthorityActivation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ACMPCA.libsonnet',
      help='Used to install the certificate authority certificate and update the certificate authority status.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ACMPCA::CertificateAuthorityActivation Resource
        * CertificateAuthorityArn Arn of the Certificate Authority.
        * Certificate Certificate Authority certificate that will be installed in the Certificate Authority.
      |||,
      args=[
        d.arg('CertificateAuthorityArn', 'd.T.string'),
        d.arg('Certificate', 'd.T.string'),
      ]
    ),
    new(
      CertificateAuthorityArn,
      Certificate,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
        CertificateAuthorityArn: CertificateAuthorityArn,
        assert std.isString(Certificate) : 'Certificate must be a string',
        Certificate: Certificate,
      },
      DependsOn:: [],
      Type: 'AWS::ACMPCA::CertificateAuthorityActivation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateChain': d.fn('`withCertificateChain` CertificateChain ', [d.arg('CertificateChain', d.T.string)]),
    withCertificateChain(CertificateChain): {
      assert std.isString(CertificateChain) : 'CertificateChain must be a string',
      Properties+::: { CertificateChain: CertificateChain },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withCompleteCertificateChain': d.fn('`withCompleteCertificateChain` CompleteCertificateChain ', [d.arg('CompleteCertificateChain', d.T.string)]),
    withCompleteCertificateChain(CompleteCertificateChain): {
      assert std.isString(CompleteCertificateChain) : 'CompleteCertificateChain must be a string',
      Properties+::: { CompleteCertificateChain: CompleteCertificateChain },
    },
  },
  Permission: {
    '#': d.pkg(
      name='Permission',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ACMPCA.libsonnet',
      help='Permission set on private certificate authority',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ACMPCA::Permission Resource
        * Actions The actions that the specified AWS service principal can use. Actions IssueCertificate, GetCertificate and ListPermissions must be provided.
        * CertificateAuthorityArn The Amazon Resource Name (ARN) of the Private Certificate Authority that grants the permission.
        * Principal The AWS service or identity that receives the permission. At this time, the only valid principal is acm.amazonaws.com.
      |||,
      args=[
        d.arg('Actions', 'd.T.array'),
        d.arg('CertificateAuthorityArn', 'd.T.string'),
        d.arg('Principal', 'd.T.string'),
      ]
    ),
    new(
      Actions,
      CertificateAuthorityArn,
      Principal,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Actions) : 'Actions must be a array',
        Actions: Actions,
        assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
        CertificateAuthorityArn: CertificateAuthorityArn,
        assert std.isString(Principal) : 'Principal must be a string',
        Principal: Principal,
      },
      DependsOn:: [],
      Type: 'AWS::ACMPCA::Permission',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSourceAccount': d.fn('`withSourceAccount` SourceAccount ', [d.arg('SourceAccount', d.T.string)]),
    withSourceAccount(SourceAccount): {
      assert std.isString(SourceAccount) : 'SourceAccount must be a string',
      Properties+::: { SourceAccount: SourceAccount },
    },
  },
}
