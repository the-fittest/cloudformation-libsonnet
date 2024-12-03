local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Challenge: {
    '#': d.pkg(
      name='Challenge',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorSCEP.libsonnet',
      help='Represents a SCEP Challenge that is used for certificate enrollment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorSCEP::Challenge Resource
        * ConnectorArn 
      |||,
      args=[
        d.arg('ConnectorArn', 'd.T.string'),
      ]
    ),
    new(
      ConnectorArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
        ConnectorArn: ConnectorArn,
      },
      DependsOn:: [],
      Type: 'AWS::PCAConnectorSCEP::Challenge',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withChallengeArn': d.fn('`withChallengeArn` ChallengeArn ', [d.arg('ChallengeArn', d.T.string)]),
    withChallengeArn(ChallengeArn): {
      assert std.isString(ChallengeArn) : 'ChallengeArn must be a string',
      Properties+::: { ChallengeArn: ChallengeArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Connector: {
    '#': d.pkg(
      name='Connector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorSCEP.libsonnet',
      help='Represents a Connector that allows certificate issuance through Simple Certificate Enrollment Protocol (SCEP)',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorSCEP::Connector Resource
        * CertificateAuthorityArn 
      |||,
      args=[
        d.arg('CertificateAuthorityArn', 'd.T.string'),
      ]
    ),
    new(
      CertificateAuthorityArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
        CertificateAuthorityArn: CertificateAuthorityArn,
      },
      DependsOn:: [],
      Type: 'AWS::PCAConnectorSCEP::Connector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectorArn': d.fn('`withConnectorArn` ConnectorArn ', [d.arg('ConnectorArn', d.T.string)]),
    withConnectorArn(ConnectorArn): {
      assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
      Properties+::: { ConnectorArn: ConnectorArn },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withMobileDeviceManagement': d.fn('`withMobileDeviceManagement` MobileDeviceManagement ', [d.arg('MobileDeviceManagement', d.T.object)]),
    withMobileDeviceManagement(MobileDeviceManagement): {
      assert std.isObject(MobileDeviceManagement) : 'MobileDeviceManagement must be a object',
      Properties+::: { MobileDeviceManagement: MobileDeviceManagement },
    },
    '#withOpenIdConfiguration': d.fn('`withOpenIdConfiguration` OpenIdConfiguration ', [d.arg('OpenIdConfiguration', d.T.object)]),
    withOpenIdConfiguration(OpenIdConfiguration): {
      assert std.isObject(OpenIdConfiguration) : 'OpenIdConfiguration must be a object',
      Properties+::: { OpenIdConfiguration: OpenIdConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
