local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Account: {
    '#': d.pkg(
      name='Account',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CertificateManager.libsonnet',
      help='Resource schema for AWS::CertificateManager::Account.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CertificateManager::Account Resource
        * ExpiryEventsConfiguration 
      |||,
      args=[
        d.arg('ExpiryEventsConfiguration', 'd.T.object'),
      ]
    ),
    new(
      ExpiryEventsConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ExpiryEventsConfiguration) : 'ExpiryEventsConfiguration must be a object',
        ExpiryEventsConfiguration: ExpiryEventsConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::CertificateManager::Account',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
  },
  Certificate: {
    '#': d.pkg(
      name='Certificate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CertificateManager.libsonnet',
      help='Resource Type definition for AWS::CertificateManager::Certificate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CertificateManager::Certificate Resource
        * DomainName 
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::CertificateManager::Certificate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateAuthorityArn': d.fn('`withCertificateAuthorityArn` CertificateAuthorityArn ', [d.arg('CertificateAuthorityArn', d.T.string)]),
    withCertificateAuthorityArn(CertificateAuthorityArn): {
      assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
      Properties+::: { CertificateAuthorityArn: CertificateAuthorityArn },
    },
    '#withDomainValidationOptions': d.fn('`withDomainValidationOptions` DomainValidationOptions ', [d.arg('DomainValidationOptions', d.T.array)]),
    withDomainValidationOptions(DomainValidationOptions): {
      assert std.isArray(DomainValidationOptions) : 'DomainValidationOptions must be a array',
      Properties+::: { DomainValidationOptions: DomainValidationOptions },
    },
    '#withCertificateTransparencyLoggingPreference': d.fn('`withCertificateTransparencyLoggingPreference` CertificateTransparencyLoggingPreference ', [d.arg('CertificateTransparencyLoggingPreference', d.T.string)]),
    withCertificateTransparencyLoggingPreference(CertificateTransparencyLoggingPreference): {
      assert std.isString(CertificateTransparencyLoggingPreference) : 'CertificateTransparencyLoggingPreference must be a string',
      Properties+::: { CertificateTransparencyLoggingPreference: CertificateTransparencyLoggingPreference },
    },
    '#withValidationMethod': d.fn('`withValidationMethod` ValidationMethod ', [d.arg('ValidationMethod', d.T.string)]),
    withValidationMethod(ValidationMethod): {
      assert std.isString(ValidationMethod) : 'ValidationMethod must be a string',
      Properties+::: { ValidationMethod: ValidationMethod },
    },
    '#withSubjectAlternativeNames': d.fn('`withSubjectAlternativeNames` SubjectAlternativeNames ', [d.arg('SubjectAlternativeNames', d.T.array)]),
    withSubjectAlternativeNames(SubjectAlternativeNames): {
      assert std.isArray(SubjectAlternativeNames) : 'SubjectAlternativeNames must be a array',
      Properties+::: { SubjectAlternativeNames: SubjectAlternativeNames },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withKeyAlgorithm': d.fn('`withKeyAlgorithm` KeyAlgorithm ', [d.arg('KeyAlgorithm', d.T.string)]),
    withKeyAlgorithm(KeyAlgorithm): {
      assert std.isString(KeyAlgorithm) : 'KeyAlgorithm must be a string',
      Properties+::: { KeyAlgorithm: KeyAlgorithm },
    },
  },
}
