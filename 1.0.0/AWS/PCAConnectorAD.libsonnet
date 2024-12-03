local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Connector: {
    '#': d.pkg(
      name='Connector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorAD.libsonnet',
      help='Definition of AWS::PCAConnectorAD::Connector Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorAD::Connector Resource
        * CertificateAuthorityArn 
        * DirectoryId 
        * VpcInformation 
      |||,
      args=[
        d.arg('CertificateAuthorityArn', 'd.T.string'),
        d.arg('DirectoryId', 'd.T.string'),
        d.arg('VpcInformation', 'd.T.object'),
      ]
    ),
    new(
      CertificateAuthorityArn,
      DirectoryId,
      VpcInformation,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
        CertificateAuthorityArn: CertificateAuthorityArn,
        assert std.isString(DirectoryId) : 'DirectoryId must be a string',
        DirectoryId: DirectoryId,
        assert std.isObject(VpcInformation) : 'VpcInformation must be a object',
        VpcInformation: VpcInformation,
      },
      DependsOn:: [],
      Type: 'AWS::PCAConnectorAD::Connector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectorArn': d.fn('`withConnectorArn` ConnectorArn ', [d.arg('ConnectorArn', d.T.string)]),
    withConnectorArn(ConnectorArn): {
      assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
      Properties+::: { ConnectorArn: ConnectorArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  DirectoryRegistration: {
    '#': d.pkg(
      name='DirectoryRegistration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorAD.libsonnet',
      help='Definition of AWS::PCAConnectorAD::DirectoryRegistration Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorAD::DirectoryRegistration Resource
        * DirectoryId 
      |||,
      args=[
        d.arg('DirectoryId', 'd.T.string'),
      ]
    ),
    new(
      DirectoryId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DirectoryId) : 'DirectoryId must be a string',
        DirectoryId: DirectoryId,
      },
      DependsOn:: [],
      Type: 'AWS::PCAConnectorAD::DirectoryRegistration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDirectoryRegistrationArn': d.fn('`withDirectoryRegistrationArn` DirectoryRegistrationArn ', [d.arg('DirectoryRegistrationArn', d.T.string)]),
    withDirectoryRegistrationArn(DirectoryRegistrationArn): {
      assert std.isString(DirectoryRegistrationArn) : 'DirectoryRegistrationArn must be a string',
      Properties+::: { DirectoryRegistrationArn: DirectoryRegistrationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ServicePrincipalName: {
    '#': d.pkg(
      name='ServicePrincipalName',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorAD.libsonnet',
      help='Definition of AWS::PCAConnectorAD::ServicePrincipalName Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorAD::ServicePrincipalName Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::PCAConnectorAD::ServicePrincipalName',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConnectorArn': d.fn('`withConnectorArn` ConnectorArn ', [d.arg('ConnectorArn', d.T.string)]),
    withConnectorArn(ConnectorArn): {
      assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
      Properties+::: { ConnectorArn: ConnectorArn },
    },
    '#withDirectoryRegistrationArn': d.fn('`withDirectoryRegistrationArn` DirectoryRegistrationArn ', [d.arg('DirectoryRegistrationArn', d.T.string)]),
    withDirectoryRegistrationArn(DirectoryRegistrationArn): {
      assert std.isString(DirectoryRegistrationArn) : 'DirectoryRegistrationArn must be a string',
      Properties+::: { DirectoryRegistrationArn: DirectoryRegistrationArn },
    },
  },
  Template: {
    '#': d.pkg(
      name='Template',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorAD.libsonnet',
      help='Represents a template that defines certificate configurations, both for issuance and client handling',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorAD::Template Resource
        * ConnectorArn 
        * Definition 
        * Name 
      |||,
      args=[
        d.arg('ConnectorArn', 'd.T.string'),
        d.arg('Definition', ''),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ConnectorArn,
      Definition,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectorArn) : 'ConnectorArn must be a string',
        ConnectorArn: ConnectorArn,
        // Type: undefined
        Definition: Definition,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::PCAConnectorAD::Template',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withReenrollAllCertificateHolders': d.fn('`withReenrollAllCertificateHolders` ReenrollAllCertificateHolders ', [d.arg('ReenrollAllCertificateHolders', d.T.boolean)]),
    withReenrollAllCertificateHolders(ReenrollAllCertificateHolders): {
      assert std.isBoolean(ReenrollAllCertificateHolders) : 'ReenrollAllCertificateHolders must be a boolean',
      Properties+::: { ReenrollAllCertificateHolders: ReenrollAllCertificateHolders },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTemplateArn': d.fn('`withTemplateArn` TemplateArn ', [d.arg('TemplateArn', d.T.string)]),
    withTemplateArn(TemplateArn): {
      assert std.isString(TemplateArn) : 'TemplateArn must be a string',
      Properties+::: { TemplateArn: TemplateArn },
    },
  },
  TemplateGroupAccessControlEntry: {
    '#': d.pkg(
      name='TemplateGroupAccessControlEntry',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/PCAConnectorAD.libsonnet',
      help='Definition of AWS::PCAConnectorAD::TemplateGroupAccessControlEntry Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::PCAConnectorAD::TemplateGroupAccessControlEntry Resource
        * AccessRights 
        * GroupDisplayName 
      |||,
      args=[
        d.arg('AccessRights', 'd.T.object'),
        d.arg('GroupDisplayName', 'd.T.string'),
      ]
    ),
    new(
      AccessRights,
      GroupDisplayName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(AccessRights) : 'AccessRights must be a object',
        AccessRights: AccessRights,
        assert std.isString(GroupDisplayName) : 'GroupDisplayName must be a string',
        GroupDisplayName: GroupDisplayName,
      },
      DependsOn:: [],
      Type: 'AWS::PCAConnectorAD::TemplateGroupAccessControlEntry',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGroupSecurityIdentifier': d.fn('`withGroupSecurityIdentifier` GroupSecurityIdentifier ', [d.arg('GroupSecurityIdentifier', d.T.string)]),
    withGroupSecurityIdentifier(GroupSecurityIdentifier): {
      assert std.isString(GroupSecurityIdentifier) : 'GroupSecurityIdentifier must be a string',
      Properties+::: { GroupSecurityIdentifier: GroupSecurityIdentifier },
    },
    '#withTemplateArn': d.fn('`withTemplateArn` TemplateArn ', [d.arg('TemplateArn', d.T.string)]),
    withTemplateArn(TemplateArn): {
      assert std.isString(TemplateArn) : 'TemplateArn must be a string',
      Properties+::: { TemplateArn: TemplateArn },
    },
  },
}
