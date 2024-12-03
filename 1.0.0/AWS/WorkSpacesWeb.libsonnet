local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  BrowserSettings: {
    '#': d.pkg(
      name='BrowserSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::BrowserSettings Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::BrowserSettings Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::BrowserSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withBrowserPolicy': d.fn('`withBrowserPolicy` BrowserPolicy ', [d.arg('BrowserPolicy', d.T.string)]),
    withBrowserPolicy(BrowserPolicy): {
      assert std.isString(BrowserPolicy) : 'BrowserPolicy must be a string',
      Properties+::: { BrowserPolicy: BrowserPolicy },
    },
    '#withBrowserSettingsArn': d.fn('`withBrowserSettingsArn` BrowserSettingsArn ', [d.arg('BrowserSettingsArn', d.T.string)]),
    withBrowserSettingsArn(BrowserSettingsArn): {
      assert std.isString(BrowserSettingsArn) : 'BrowserSettingsArn must be a string',
      Properties+::: { BrowserSettingsArn: BrowserSettingsArn },
    },
    '#withCustomerManagedKey': d.fn('`withCustomerManagedKey` CustomerManagedKey ', [d.arg('CustomerManagedKey', d.T.string)]),
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: { CustomerManagedKey: CustomerManagedKey },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DataProtectionSettings: {
    '#': d.pkg(
      name='DataProtectionSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::DataProtectionSettings Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::DataProtectionSettings Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::DataProtectionSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withCustomerManagedKey': d.fn('`withCustomerManagedKey` CustomerManagedKey ', [d.arg('CustomerManagedKey', d.T.string)]),
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: { CustomerManagedKey: CustomerManagedKey },
    },
    '#withDataProtectionSettingsArn': d.fn('`withDataProtectionSettingsArn` DataProtectionSettingsArn ', [d.arg('DataProtectionSettingsArn', d.T.string)]),
    withDataProtectionSettingsArn(DataProtectionSettingsArn): {
      assert std.isString(DataProtectionSettingsArn) : 'DataProtectionSettingsArn must be a string',
      Properties+::: { DataProtectionSettingsArn: DataProtectionSettingsArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withInlineRedactionConfiguration': d.fn('`withInlineRedactionConfiguration` InlineRedactionConfiguration ', [d.arg('InlineRedactionConfiguration', d.T.object)]),
    withInlineRedactionConfiguration(InlineRedactionConfiguration): {
      assert std.isObject(InlineRedactionConfiguration) : 'InlineRedactionConfiguration must be a object',
      Properties+::: { InlineRedactionConfiguration: InlineRedactionConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IdentityProvider: {
    '#': d.pkg(
      name='IdentityProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::IdentityProvider Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::IdentityProvider Resource
        * IdentityProviderDetails 
        * IdentityProviderName 
        * IdentityProviderType 
      |||,
      args=[
        d.arg('IdentityProviderDetails', 'd.T.object'),
        d.arg('IdentityProviderName', 'd.T.string'),
        d.arg('IdentityProviderType', 'd.T.string'),
      ]
    ),
    new(
      IdentityProviderDetails,
      IdentityProviderName,
      IdentityProviderType,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(IdentityProviderDetails) : 'IdentityProviderDetails must be a object',
        IdentityProviderDetails: IdentityProviderDetails,
        assert std.isString(IdentityProviderName) : 'IdentityProviderName must be a string',
        IdentityProviderName: IdentityProviderName,
        assert std.isString(IdentityProviderType) : 'IdentityProviderType must be a string',
        IdentityProviderType: IdentityProviderType,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::IdentityProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdentityProviderArn': d.fn('`withIdentityProviderArn` IdentityProviderArn ', [d.arg('IdentityProviderArn', d.T.string)]),
    withIdentityProviderArn(IdentityProviderArn): {
      assert std.isString(IdentityProviderArn) : 'IdentityProviderArn must be a string',
      Properties+::: { IdentityProviderArn: IdentityProviderArn },
    },
    '#withPortalArn': d.fn('`withPortalArn` PortalArn ', [d.arg('PortalArn', d.T.string)]),
    withPortalArn(PortalArn): {
      assert std.isString(PortalArn) : 'PortalArn must be a string',
      Properties+::: { PortalArn: PortalArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IpAccessSettings: {
    '#': d.pkg(
      name='IpAccessSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::IpAccessSettings Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::IpAccessSettings Resource
        * IpRules 
      |||,
      args=[
        d.arg('IpRules', 'd.T.array'),
      ]
    ),
    new(
      IpRules,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(IpRules) : 'IpRules must be a array',
        IpRules: IpRules,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::IpAccessSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withCustomerManagedKey': d.fn('`withCustomerManagedKey` CustomerManagedKey ', [d.arg('CustomerManagedKey', d.T.string)]),
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: { CustomerManagedKey: CustomerManagedKey },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withIpAccessSettingsArn': d.fn('`withIpAccessSettingsArn` IpAccessSettingsArn ', [d.arg('IpAccessSettingsArn', d.T.string)]),
    withIpAccessSettingsArn(IpAccessSettingsArn): {
      assert std.isString(IpAccessSettingsArn) : 'IpAccessSettingsArn must be a string',
      Properties+::: { IpAccessSettingsArn: IpAccessSettingsArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NetworkSettings: {
    '#': d.pkg(
      name='NetworkSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::NetworkSettings Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::NetworkSettings Resource
        * SecurityGroupIds 
        * SubnetIds 
        * VpcId 
      |||,
      args=[
        d.arg('SecurityGroupIds', 'd.T.array'),
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      SecurityGroupIds,
      SubnetIds,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
        SecurityGroupIds: SecurityGroupIds,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::NetworkSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withNetworkSettingsArn': d.fn('`withNetworkSettingsArn` NetworkSettingsArn ', [d.arg('NetworkSettingsArn', d.T.string)]),
    withNetworkSettingsArn(NetworkSettingsArn): {
      assert std.isString(NetworkSettingsArn) : 'NetworkSettingsArn must be a string',
      Properties+::: { NetworkSettingsArn: NetworkSettingsArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Portal: {
    '#': d.pkg(
      name='Portal',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::Portal Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::Portal Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::Portal',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
    '#withAuthenticationType': d.fn('`withAuthenticationType` AuthenticationType ', [d.arg('AuthenticationType', d.T.string)]),
    withAuthenticationType(AuthenticationType): {
      assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
      Properties+::: { AuthenticationType: AuthenticationType },
    },
    '#withBrowserSettingsArn': d.fn('`withBrowserSettingsArn` BrowserSettingsArn ', [d.arg('BrowserSettingsArn', d.T.string)]),
    withBrowserSettingsArn(BrowserSettingsArn): {
      assert std.isString(BrowserSettingsArn) : 'BrowserSettingsArn must be a string',
      Properties+::: { BrowserSettingsArn: BrowserSettingsArn },
    },
    '#withBrowserType': d.fn('`withBrowserType` BrowserType ', [d.arg('BrowserType', d.T.string)]),
    withBrowserType(BrowserType): {
      assert std.isString(BrowserType) : 'BrowserType must be a string',
      Properties+::: { BrowserType: BrowserType },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withCustomerManagedKey': d.fn('`withCustomerManagedKey` CustomerManagedKey ', [d.arg('CustomerManagedKey', d.T.string)]),
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: { CustomerManagedKey: CustomerManagedKey },
    },
    '#withDataProtectionSettingsArn': d.fn('`withDataProtectionSettingsArn` DataProtectionSettingsArn ', [d.arg('DataProtectionSettingsArn', d.T.string)]),
    withDataProtectionSettingsArn(DataProtectionSettingsArn): {
      assert std.isString(DataProtectionSettingsArn) : 'DataProtectionSettingsArn must be a string',
      Properties+::: { DataProtectionSettingsArn: DataProtectionSettingsArn },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withInstanceType': d.fn('`withInstanceType` InstanceType ', [d.arg('InstanceType', d.T.string)]),
    withInstanceType(InstanceType): {
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      Properties+::: { InstanceType: InstanceType },
    },
    '#withIpAccessSettingsArn': d.fn('`withIpAccessSettingsArn` IpAccessSettingsArn ', [d.arg('IpAccessSettingsArn', d.T.string)]),
    withIpAccessSettingsArn(IpAccessSettingsArn): {
      assert std.isString(IpAccessSettingsArn) : 'IpAccessSettingsArn must be a string',
      Properties+::: { IpAccessSettingsArn: IpAccessSettingsArn },
    },
    '#withMaxConcurrentSessions': d.fn('`withMaxConcurrentSessions` MaxConcurrentSessions ', [d.arg('MaxConcurrentSessions', d.T.integer)]),
    withMaxConcurrentSessions(MaxConcurrentSessions): {
      // Type: number
      Properties+::: { MaxConcurrentSessions: MaxConcurrentSessions },
    },
    '#withNetworkSettingsArn': d.fn('`withNetworkSettingsArn` NetworkSettingsArn ', [d.arg('NetworkSettingsArn', d.T.string)]),
    withNetworkSettingsArn(NetworkSettingsArn): {
      assert std.isString(NetworkSettingsArn) : 'NetworkSettingsArn must be a string',
      Properties+::: { NetworkSettingsArn: NetworkSettingsArn },
    },
    '#withPortalArn': d.fn('`withPortalArn` PortalArn ', [d.arg('PortalArn', d.T.string)]),
    withPortalArn(PortalArn): {
      assert std.isString(PortalArn) : 'PortalArn must be a string',
      Properties+::: { PortalArn: PortalArn },
    },
    '#withPortalEndpoint': d.fn('`withPortalEndpoint` PortalEndpoint ', [d.arg('PortalEndpoint', d.T.string)]),
    withPortalEndpoint(PortalEndpoint): {
      assert std.isString(PortalEndpoint) : 'PortalEndpoint must be a string',
      Properties+::: { PortalEndpoint: PortalEndpoint },
    },
    '#withPortalStatus': d.fn('`withPortalStatus` PortalStatus ', [d.arg('PortalStatus', d.T.string)]),
    withPortalStatus(PortalStatus): {
      assert std.isString(PortalStatus) : 'PortalStatus must be a string',
      Properties+::: { PortalStatus: PortalStatus },
    },
    '#withRendererType': d.fn('`withRendererType` RendererType ', [d.arg('RendererType', d.T.string)]),
    withRendererType(RendererType): {
      assert std.isString(RendererType) : 'RendererType must be a string',
      Properties+::: { RendererType: RendererType },
    },
    '#withServiceProviderSamlMetadata': d.fn('`withServiceProviderSamlMetadata` ServiceProviderSamlMetadata ', [d.arg('ServiceProviderSamlMetadata', d.T.string)]),
    withServiceProviderSamlMetadata(ServiceProviderSamlMetadata): {
      assert std.isString(ServiceProviderSamlMetadata) : 'ServiceProviderSamlMetadata must be a string',
      Properties+::: { ServiceProviderSamlMetadata: ServiceProviderSamlMetadata },
    },
    '#withStatusReason': d.fn('`withStatusReason` StatusReason ', [d.arg('StatusReason', d.T.string)]),
    withStatusReason(StatusReason): {
      assert std.isString(StatusReason) : 'StatusReason must be a string',
      Properties+::: { StatusReason: StatusReason },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrustStoreArn': d.fn('`withTrustStoreArn` TrustStoreArn ', [d.arg('TrustStoreArn', d.T.string)]),
    withTrustStoreArn(TrustStoreArn): {
      assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
      Properties+::: { TrustStoreArn: TrustStoreArn },
    },
    '#withUserAccessLoggingSettingsArn': d.fn('`withUserAccessLoggingSettingsArn` UserAccessLoggingSettingsArn ', [d.arg('UserAccessLoggingSettingsArn', d.T.string)]),
    withUserAccessLoggingSettingsArn(UserAccessLoggingSettingsArn): {
      assert std.isString(UserAccessLoggingSettingsArn) : 'UserAccessLoggingSettingsArn must be a string',
      Properties+::: { UserAccessLoggingSettingsArn: UserAccessLoggingSettingsArn },
    },
    '#withUserSettingsArn': d.fn('`withUserSettingsArn` UserSettingsArn ', [d.arg('UserSettingsArn', d.T.string)]),
    withUserSettingsArn(UserSettingsArn): {
      assert std.isString(UserSettingsArn) : 'UserSettingsArn must be a string',
      Properties+::: { UserSettingsArn: UserSettingsArn },
    },
  },
  TrustStore: {
    '#': d.pkg(
      name='TrustStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::TrustStore Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::TrustStore Resource
        * CertificateList 
      |||,
      args=[
        d.arg('CertificateList', 'd.T.array'),
      ]
    ),
    new(
      CertificateList,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(CertificateList) : 'CertificateList must be a array',
        CertificateList: CertificateList,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::TrustStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrustStoreArn': d.fn('`withTrustStoreArn` TrustStoreArn ', [d.arg('TrustStoreArn', d.T.string)]),
    withTrustStoreArn(TrustStoreArn): {
      assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
      Properties+::: { TrustStoreArn: TrustStoreArn },
    },
  },
  UserAccessLoggingSettings: {
    '#': d.pkg(
      name='UserAccessLoggingSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::UserAccessLoggingSettings Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::UserAccessLoggingSettings Resource
        * KinesisStreamArn Kinesis stream ARN to which log events are published.
      |||,
      args=[
        d.arg('KinesisStreamArn', 'd.T.string'),
      ]
    ),
    new(
      KinesisStreamArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(KinesisStreamArn) : 'KinesisStreamArn must be a string',
        KinesisStreamArn: KinesisStreamArn,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::UserAccessLoggingSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserAccessLoggingSettingsArn': d.fn('`withUserAccessLoggingSettingsArn` UserAccessLoggingSettingsArn ', [d.arg('UserAccessLoggingSettingsArn', d.T.string)]),
    withUserAccessLoggingSettingsArn(UserAccessLoggingSettingsArn): {
      assert std.isString(UserAccessLoggingSettingsArn) : 'UserAccessLoggingSettingsArn must be a string',
      Properties+::: { UserAccessLoggingSettingsArn: UserAccessLoggingSettingsArn },
    },
  },
  UserSettings: {
    '#': d.pkg(
      name='UserSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WorkSpacesWeb.libsonnet',
      help='Definition of AWS::WorkSpacesWeb::UserSettings Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WorkSpacesWeb::UserSettings Resource
        * CopyAllowed 
        * DownloadAllowed 
        * PasteAllowed 
        * PrintAllowed 
        * UploadAllowed 
      |||,
      args=[
        d.arg('CopyAllowed', 'd.T.string'),
        d.arg('DownloadAllowed', 'd.T.string'),
        d.arg('PasteAllowed', 'd.T.string'),
        d.arg('PrintAllowed', 'd.T.string'),
        d.arg('UploadAllowed', 'd.T.string'),
      ]
    ),
    new(
      CopyAllowed,
      DownloadAllowed,
      PasteAllowed,
      PrintAllowed,
      UploadAllowed,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CopyAllowed) : 'CopyAllowed must be a string',
        CopyAllowed: CopyAllowed,
        assert std.isString(DownloadAllowed) : 'DownloadAllowed must be a string',
        DownloadAllowed: DownloadAllowed,
        assert std.isString(PasteAllowed) : 'PasteAllowed must be a string',
        PasteAllowed: PasteAllowed,
        assert std.isString(PrintAllowed) : 'PrintAllowed must be a string',
        PrintAllowed: PrintAllowed,
        assert std.isString(UploadAllowed) : 'UploadAllowed must be a string',
        UploadAllowed: UploadAllowed,
      },
      DependsOn:: [],
      Type: 'AWS::WorkSpacesWeb::UserSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
    '#withAssociatedPortalArns': d.fn('`withAssociatedPortalArns` AssociatedPortalArns ', [d.arg('AssociatedPortalArns', d.T.array)]),
    withAssociatedPortalArns(AssociatedPortalArns): {
      assert std.isArray(AssociatedPortalArns) : 'AssociatedPortalArns must be a array',
      Properties+::: { AssociatedPortalArns: AssociatedPortalArns },
    },
    '#withCookieSynchronizationConfiguration': d.fn('`withCookieSynchronizationConfiguration` CookieSynchronizationConfiguration ', [d.arg('CookieSynchronizationConfiguration', d.T.object)]),
    withCookieSynchronizationConfiguration(CookieSynchronizationConfiguration): {
      assert std.isObject(CookieSynchronizationConfiguration) : 'CookieSynchronizationConfiguration must be a object',
      Properties+::: { CookieSynchronizationConfiguration: CookieSynchronizationConfiguration },
    },
    '#withCustomerManagedKey': d.fn('`withCustomerManagedKey` CustomerManagedKey ', [d.arg('CustomerManagedKey', d.T.string)]),
    withCustomerManagedKey(CustomerManagedKey): {
      assert std.isString(CustomerManagedKey) : 'CustomerManagedKey must be a string',
      Properties+::: { CustomerManagedKey: CustomerManagedKey },
    },
    '#withDisconnectTimeoutInMinutes': d.fn('`withDisconnectTimeoutInMinutes` DisconnectTimeoutInMinutes ', [d.arg('DisconnectTimeoutInMinutes', d.T.integer)]),
    withDisconnectTimeoutInMinutes(DisconnectTimeoutInMinutes): {
      // Type: number
      Properties+::: { DisconnectTimeoutInMinutes: DisconnectTimeoutInMinutes },
    },
    '#withIdleDisconnectTimeoutInMinutes': d.fn('`withIdleDisconnectTimeoutInMinutes` IdleDisconnectTimeoutInMinutes ', [d.arg('IdleDisconnectTimeoutInMinutes', d.T.integer)]),
    withIdleDisconnectTimeoutInMinutes(IdleDisconnectTimeoutInMinutes): {
      // Type: number
      Properties+::: { IdleDisconnectTimeoutInMinutes: IdleDisconnectTimeoutInMinutes },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserSettingsArn': d.fn('`withUserSettingsArn` UserSettingsArn ', [d.arg('UserSettingsArn', d.T.string)]),
    withUserSettingsArn(UserSettingsArn): {
      assert std.isString(UserSettingsArn) : 'UserSettingsArn must be a string',
      Properties+::: { UserSettingsArn: UserSettingsArn },
    },
    '#withDeepLinkAllowed': d.fn('`withDeepLinkAllowed` DeepLinkAllowed ', [d.arg('DeepLinkAllowed', d.T.string)]),
    withDeepLinkAllowed(DeepLinkAllowed): {
      assert std.isString(DeepLinkAllowed) : 'DeepLinkAllowed must be a string',
      Properties+::: { DeepLinkAllowed: DeepLinkAllowed },
    },
  },
}
