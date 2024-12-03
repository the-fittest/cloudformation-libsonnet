local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AcceptedPortfolioShare: {
    '#': d.pkg(
      name='AcceptedPortfolioShare',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::AcceptedPortfolioShare',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::AcceptedPortfolioShare Resource
        * PortfolioId 
      |||,
      args=[
        d.arg('PortfolioId', 'd.T.string'),
      ]
    ),
    new(
      PortfolioId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::AcceptedPortfolioShare',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  CloudFormationProduct: {
    '#': d.pkg(
      name='CloudFormationProduct',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::CloudFormationProduct',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::CloudFormationProduct Resource
        * Owner 
        * Name 
      |||,
      args=[
        d.arg('Owner', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Owner,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Owner) : 'Owner must be a string',
        Owner: Owner,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::CloudFormationProduct',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withProductName': d.fn('`withProductName` ProductName ', [d.arg('ProductName', d.T.string)]),
    withProductName(ProductName): {
      assert std.isString(ProductName) : 'ProductName must be a string',
      Properties+::: { ProductName: ProductName },
    },
    '#withSupportEmail': d.fn('`withSupportEmail` SupportEmail ', [d.arg('SupportEmail', d.T.string)]),
    withSupportEmail(SupportEmail): {
      assert std.isString(SupportEmail) : 'SupportEmail must be a string',
      Properties+::: { SupportEmail: SupportEmail },
    },
    '#withProductType': d.fn('`withProductType` ProductType ', [d.arg('ProductType', d.T.string)]),
    withProductType(ProductType): {
      assert std.isString(ProductType) : 'ProductType must be a string',
      Properties+::: { ProductType: ProductType },
    },
    '#withProvisioningArtifactNames': d.fn('`withProvisioningArtifactNames` ProvisioningArtifactNames ', [d.arg('ProvisioningArtifactNames', d.T.string)]),
    withProvisioningArtifactNames(ProvisioningArtifactNames): {
      assert std.isString(ProvisioningArtifactNames) : 'ProvisioningArtifactNames must be a string',
      Properties+::: { ProvisioningArtifactNames: ProvisioningArtifactNames },
    },
    '#withReplaceProvisioningArtifacts': d.fn('`withReplaceProvisioningArtifacts` ReplaceProvisioningArtifacts ', [d.arg('ReplaceProvisioningArtifacts', d.T.boolean)]),
    withReplaceProvisioningArtifacts(ReplaceProvisioningArtifacts): {
      assert std.isBoolean(ReplaceProvisioningArtifacts) : 'ReplaceProvisioningArtifacts must be a boolean',
      Properties+::: { ReplaceProvisioningArtifacts: ReplaceProvisioningArtifacts },
    },
    '#withSupportDescription': d.fn('`withSupportDescription` SupportDescription ', [d.arg('SupportDescription', d.T.string)]),
    withSupportDescription(SupportDescription): {
      assert std.isString(SupportDescription) : 'SupportDescription must be a string',
      Properties+::: { SupportDescription: SupportDescription },
    },
    '#withDistributor': d.fn('`withDistributor` Distributor ', [d.arg('Distributor', d.T.string)]),
    withDistributor(Distributor): {
      assert std.isString(Distributor) : 'Distributor must be a string',
      Properties+::: { Distributor: Distributor },
    },
    '#withProvisioningArtifactIds': d.fn('`withProvisioningArtifactIds` ProvisioningArtifactIds ', [d.arg('ProvisioningArtifactIds', d.T.string)]),
    withProvisioningArtifactIds(ProvisioningArtifactIds): {
      assert std.isString(ProvisioningArtifactIds) : 'ProvisioningArtifactIds must be a string',
      Properties+::: { ProvisioningArtifactIds: ProvisioningArtifactIds },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
    '#withSupportUrl': d.fn('`withSupportUrl` SupportUrl ', [d.arg('SupportUrl', d.T.string)]),
    withSupportUrl(SupportUrl): {
      assert std.isString(SupportUrl) : 'SupportUrl must be a string',
      Properties+::: { SupportUrl: SupportUrl },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSourceConnection': d.fn('`withSourceConnection` SourceConnection ', [d.arg('SourceConnection', d.T.object)]),
    withSourceConnection(SourceConnection): {
      assert std.isObject(SourceConnection) : 'SourceConnection must be a object',
      Properties+::: { SourceConnection: SourceConnection },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withProvisioningArtifactParameters': d.fn('`withProvisioningArtifactParameters` ProvisioningArtifactParameters ', [d.arg('ProvisioningArtifactParameters', d.T.array)]),
    withProvisioningArtifactParameters(ProvisioningArtifactParameters): {
      assert std.isArray(ProvisioningArtifactParameters) : 'ProvisioningArtifactParameters must be a array',
      Properties+::: { ProvisioningArtifactParameters: ProvisioningArtifactParameters },
    },
  },
  CloudFormationProvisionedProduct: {
    '#': d.pkg(
      name='CloudFormationProvisionedProduct',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Schema for AWS::ServiceCatalog::CloudFormationProvisionedProduct',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::CloudFormationProvisionedProduct Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::CloudFormationProvisionedProduct',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      assert AcceptLanguage == 'en' || AcceptLanguage == 'jp' || AcceptLanguage == 'zh' : "AcceptLanguage must be either 'en' or 'jp' or 'zh'",
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
    '#withNotificationArns': d.fn('`withNotificationArns` NotificationArns ', [d.arg('NotificationArns', d.T.array)]),
    withNotificationArns(NotificationArns): {
      assert std.isArray(NotificationArns) : 'NotificationArns must be a array',
      Properties+::: { NotificationArns: NotificationArns },
    },
    '#withPathId': d.fn('`withPathId` PathId ', [d.arg('PathId', d.T.string)]),
    withPathId(PathId): {
      assert std.isString(PathId) : 'PathId must be a string',
      Properties+::: { PathId: PathId },
    },
    '#withPathName': d.fn('`withPathName` PathName ', [d.arg('PathName', d.T.string)]),
    withPathName(PathName): {
      assert std.isString(PathName) : 'PathName must be a string',
      Properties+::: { PathName: PathName },
    },
    '#withProductId': d.fn('`withProductId` ProductId ', [d.arg('ProductId', d.T.string)]),
    withProductId(ProductId): {
      assert std.isString(ProductId) : 'ProductId must be a string',
      Properties+::: { ProductId: ProductId },
    },
    '#withProductName': d.fn('`withProductName` ProductName ', [d.arg('ProductName', d.T.string)]),
    withProductName(ProductName): {
      assert std.isString(ProductName) : 'ProductName must be a string',
      Properties+::: { ProductName: ProductName },
    },
    '#withProvisionedProductName': d.fn('`withProvisionedProductName` ProvisionedProductName ', [d.arg('ProvisionedProductName', d.T.string)]),
    withProvisionedProductName(ProvisionedProductName): {
      assert std.isString(ProvisionedProductName) : 'ProvisionedProductName must be a string',
      Properties+::: { ProvisionedProductName: ProvisionedProductName },
    },
    '#withProvisioningArtifactId': d.fn('`withProvisioningArtifactId` ProvisioningArtifactId ', [d.arg('ProvisioningArtifactId', d.T.string)]),
    withProvisioningArtifactId(ProvisioningArtifactId): {
      assert std.isString(ProvisioningArtifactId) : 'ProvisioningArtifactId must be a string',
      Properties+::: { ProvisioningArtifactId: ProvisioningArtifactId },
    },
    '#withProvisioningArtifactName': d.fn('`withProvisioningArtifactName` ProvisioningArtifactName ', [d.arg('ProvisioningArtifactName', d.T.string)]),
    withProvisioningArtifactName(ProvisioningArtifactName): {
      assert std.isString(ProvisioningArtifactName) : 'ProvisioningArtifactName must be a string',
      Properties+::: { ProvisioningArtifactName: ProvisioningArtifactName },
    },
    '#withProvisioningParameters': d.fn('`withProvisioningParameters` ProvisioningParameters ', [d.arg('ProvisioningParameters', d.T.array)]),
    withProvisioningParameters(ProvisioningParameters): {
      assert std.isArray(ProvisioningParameters) : 'ProvisioningParameters must be a array',
      Properties+::: { ProvisioningParameters: ProvisioningParameters },
    },
    '#withProvisioningPreferences': d.fn('`withProvisioningPreferences` ProvisioningPreferences ', [d.arg('ProvisioningPreferences', d.T.object)]),
    withProvisioningPreferences(ProvisioningPreferences): {
      assert std.isObject(ProvisioningPreferences) : 'ProvisioningPreferences must be a object',
      Properties+::: { ProvisioningPreferences: ProvisioningPreferences },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withProvisionedProductId': d.fn('`withProvisionedProductId` ProvisionedProductId ', [d.arg('ProvisionedProductId', d.T.string)]),
    withProvisionedProductId(ProvisionedProductId): {
      assert std.isString(ProvisionedProductId) : 'ProvisionedProductId must be a string',
      Properties+::: { ProvisionedProductId: ProvisionedProductId },
    },
    '#withRecordId': d.fn('`withRecordId` RecordId ', [d.arg('RecordId', d.T.string)]),
    withRecordId(RecordId): {
      assert std.isString(RecordId) : 'RecordId must be a string',
      Properties+::: { RecordId: RecordId },
    },
    '#withCloudformationStackArn': d.fn('`withCloudformationStackArn` CloudformationStackArn ', [d.arg('CloudformationStackArn', d.T.string)]),
    withCloudformationStackArn(CloudformationStackArn): {
      assert std.isString(CloudformationStackArn) : 'CloudformationStackArn must be a string',
      Properties+::: { CloudformationStackArn: CloudformationStackArn },
    },
    '#withOutputs': d.fn('`withOutputs` Outputs ', [d.arg('Outputs', d.T.object)]),
    withOutputs(Outputs): {
      assert std.isObject(Outputs) : 'Outputs must be a object',
      Properties+::: { Outputs: Outputs },
    },
  },
  LaunchNotificationConstraint: {
    '#': d.pkg(
      name='LaunchNotificationConstraint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::LaunchNotificationConstraint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::LaunchNotificationConstraint Resource
        * NotificationArns 
        * PortfolioId 
        * ProductId 
      |||,
      args=[
        d.arg('NotificationArns', 'd.T.array'),
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('ProductId', 'd.T.string'),
      ]
    ),
    new(
      NotificationArns,
      PortfolioId,
      ProductId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(NotificationArns) : 'NotificationArns must be a array',
        NotificationArns: NotificationArns,
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::LaunchNotificationConstraint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  LaunchRoleConstraint: {
    '#': d.pkg(
      name='LaunchRoleConstraint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::LaunchRoleConstraint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::LaunchRoleConstraint Resource
        * PortfolioId 
        * ProductId 
      |||,
      args=[
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('ProductId', 'd.T.string'),
      ]
    ),
    new(
      PortfolioId,
      ProductId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::LaunchRoleConstraint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLocalRoleName': d.fn('`withLocalRoleName` LocalRoleName ', [d.arg('LocalRoleName', d.T.string)]),
    withLocalRoleName(LocalRoleName): {
      assert std.isString(LocalRoleName) : 'LocalRoleName must be a string',
      Properties+::: { LocalRoleName: LocalRoleName },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
  },
  LaunchTemplateConstraint: {
    '#': d.pkg(
      name='LaunchTemplateConstraint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::LaunchTemplateConstraint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::LaunchTemplateConstraint Resource
        * PortfolioId 
        * ProductId 
        * Rules 
      |||,
      args=[
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('ProductId', 'd.T.string'),
        d.arg('Rules', 'd.T.string'),
      ]
    ),
    new(
      PortfolioId,
      ProductId,
      Rules,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
        assert std.isString(Rules) : 'Rules must be a string',
        Rules: Rules,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::LaunchTemplateConstraint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  Portfolio: {
    '#': d.pkg(
      name='Portfolio',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::Portfolio',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::Portfolio Resource
        * DisplayName 
        * ProviderName 
      |||,
      args=[
        d.arg('DisplayName', 'd.T.string'),
        d.arg('ProviderName', 'd.T.string'),
      ]
    ),
    new(
      DisplayName,
      ProviderName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(ProviderName) : 'ProviderName must be a string',
        ProviderName: ProviderName,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::Portfolio',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPortfolioName': d.fn('`withPortfolioName` PortfolioName ', [d.arg('PortfolioName', d.T.string)]),
    withPortfolioName(PortfolioName): {
      assert std.isString(PortfolioName) : 'PortfolioName must be a string',
      Properties+::: { PortfolioName: PortfolioName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PortfolioPrincipalAssociation: {
    '#': d.pkg(
      name='PortfolioPrincipalAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::PortfolioPrincipalAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::PortfolioPrincipalAssociation Resource
        * PortfolioId 
        * PrincipalType 
        * PrincipalARN 
      |||,
      args=[
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('PrincipalType', 'd.T.string'),
        d.arg('PrincipalARN', 'd.T.string'),
      ]
    ),
    new(
      PortfolioId,
      PrincipalType,
      PrincipalARN,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(PrincipalType) : 'PrincipalType must be a string',
        PrincipalType: PrincipalType,
        assert std.isString(PrincipalARN) : 'PrincipalARN must be a string',
        PrincipalARN: PrincipalARN,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::PortfolioPrincipalAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  PortfolioProductAssociation: {
    '#': d.pkg(
      name='PortfolioProductAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::PortfolioProductAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::PortfolioProductAssociation Resource
        * PortfolioId 
        * ProductId 
      |||,
      args=[
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('ProductId', 'd.T.string'),
      ]
    ),
    new(
      PortfolioId,
      ProductId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::PortfolioProductAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSourcePortfolioId': d.fn('`withSourcePortfolioId` SourcePortfolioId ', [d.arg('SourcePortfolioId', d.T.string)]),
    withSourcePortfolioId(SourcePortfolioId): {
      assert std.isString(SourcePortfolioId) : 'SourcePortfolioId must be a string',
      Properties+::: { SourcePortfolioId: SourcePortfolioId },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  PortfolioShare: {
    '#': d.pkg(
      name='PortfolioShare',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::PortfolioShare',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::PortfolioShare Resource
        * AccountId 
        * PortfolioId 
      |||,
      args=[
        d.arg('AccountId', 'd.T.string'),
        d.arg('PortfolioId', 'd.T.string'),
      ]
    ),
    new(
      AccountId,
      PortfolioId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccountId) : 'AccountId must be a string',
        AccountId: AccountId,
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::PortfolioShare',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
    '#withShareTagOptions': d.fn('`withShareTagOptions` ShareTagOptions ', [d.arg('ShareTagOptions', d.T.boolean)]),
    withShareTagOptions(ShareTagOptions): {
      assert std.isBoolean(ShareTagOptions) : 'ShareTagOptions must be a boolean',
      Properties+::: { ShareTagOptions: ShareTagOptions },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ResourceUpdateConstraint: {
    '#': d.pkg(
      name='ResourceUpdateConstraint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::ResourceUpdateConstraint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::ResourceUpdateConstraint Resource
        * TagUpdateOnProvisionedProduct 
        * PortfolioId 
        * ProductId 
      |||,
      args=[
        d.arg('TagUpdateOnProvisionedProduct', 'd.T.string'),
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('ProductId', 'd.T.string'),
      ]
    ),
    new(
      TagUpdateOnProvisionedProduct,
      PortfolioId,
      ProductId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TagUpdateOnProvisionedProduct) : 'TagUpdateOnProvisionedProduct must be a string',
        TagUpdateOnProvisionedProduct: TagUpdateOnProvisionedProduct,
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::ResourceUpdateConstraint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  ServiceAction: {
    '#': d.pkg(
      name='ServiceAction',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Schema for AWS::ServiceCatalog::ServiceAction',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::ServiceAction Resource
        * Name 
        * DefinitionType 
        * Definition 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('DefinitionType', 'd.T.string'),
        d.arg('Definition', 'd.T.array'),
      ]
    ),
    new(
      Name,
      DefinitionType,
      Definition,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(DefinitionType) : 'DefinitionType must be a string',
        assert DefinitionType == 'SSM_AUTOMATION' : "DefinitionType must be either 'SSM_AUTOMATION'",
        DefinitionType: DefinitionType,
        assert std.isArray(Definition) : 'Definition must be a array',
        Definition: Definition,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::ServiceAction',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      assert AcceptLanguage == 'en' || AcceptLanguage == 'jp' || AcceptLanguage == 'zh' : "AcceptLanguage must be either 'en' or 'jp' or 'zh'",
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ServiceActionAssociation: {
    '#': d.pkg(
      name='ServiceActionAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Schema for AWS::ServiceCatalog::ServiceActionAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::ServiceActionAssociation Resource
        * ProductId 
        * ProvisioningArtifactId 
        * ServiceActionId 
      |||,
      args=[
        d.arg('ProductId', 'd.T.string'),
        d.arg('ProvisioningArtifactId', 'd.T.string'),
        d.arg('ServiceActionId', 'd.T.string'),
      ]
    ),
    new(
      ProductId,
      ProvisioningArtifactId,
      ServiceActionId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
        assert std.isString(ProvisioningArtifactId) : 'ProvisioningArtifactId must be a string',
        ProvisioningArtifactId: ProvisioningArtifactId,
        assert std.isString(ServiceActionId) : 'ServiceActionId must be a string',
        ServiceActionId: ServiceActionId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::ServiceActionAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  StackSetConstraint: {
    '#': d.pkg(
      name='StackSetConstraint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::StackSetConstraint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::StackSetConstraint Resource
        * Description 
        * StackInstanceControl 
        * PortfolioId 
        * ProductId 
        * RegionList 
        * AdminRole 
        * AccountList 
        * ExecutionRole 
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('StackInstanceControl', 'd.T.string'),
        d.arg('PortfolioId', 'd.T.string'),
        d.arg('ProductId', 'd.T.string'),
        d.arg('RegionList', 'd.T.array'),
        d.arg('AdminRole', 'd.T.string'),
        d.arg('AccountList', 'd.T.array'),
        d.arg('ExecutionRole', 'd.T.string'),
      ]
    ),
    new(
      Description,
      StackInstanceControl,
      PortfolioId,
      ProductId,
      RegionList,
      AdminRole,
      AccountList,
      ExecutionRole,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isString(StackInstanceControl) : 'StackInstanceControl must be a string',
        StackInstanceControl: StackInstanceControl,
        assert std.isString(PortfolioId) : 'PortfolioId must be a string',
        PortfolioId: PortfolioId,
        assert std.isString(ProductId) : 'ProductId must be a string',
        ProductId: ProductId,
        assert std.isArray(RegionList) : 'RegionList must be a array',
        RegionList: RegionList,
        assert std.isString(AdminRole) : 'AdminRole must be a string',
        AdminRole: AdminRole,
        assert std.isArray(AccountList) : 'AccountList must be a array',
        AccountList: AccountList,
        assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
        ExecutionRole: ExecutionRole,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::StackSetConstraint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAcceptLanguage': d.fn('`withAcceptLanguage` AcceptLanguage ', [d.arg('AcceptLanguage', d.T.string)]),
    withAcceptLanguage(AcceptLanguage): {
      assert std.isString(AcceptLanguage) : 'AcceptLanguage must be a string',
      Properties+::: { AcceptLanguage: AcceptLanguage },
    },
  },
  TagOption: {
    '#': d.pkg(
      name='TagOption',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::TagOption',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::TagOption Resource
        * Value 
        * Key 
      |||,
      args=[
        d.arg('Value', 'd.T.string'),
        d.arg('Key', 'd.T.string'),
      ]
    ),
    new(
      Value,
      Key,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Value) : 'Value must be a string',
        Value: Value,
        assert std.isString(Key) : 'Key must be a string',
        Key: Key,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::TagOption',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withActive': d.fn('`withActive` Active ', [d.arg('Active', d.T.boolean)]),
    withActive(Active): {
      assert std.isBoolean(Active) : 'Active must be a boolean',
      Properties+::: { Active: Active },
    },
  },
  TagOptionAssociation: {
    '#': d.pkg(
      name='TagOptionAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalog.libsonnet',
      help='Resource Type definition for AWS::ServiceCatalog::TagOptionAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalog::TagOptionAssociation Resource
        * TagOptionId 
        * ResourceId 
      |||,
      args=[
        d.arg('TagOptionId', 'd.T.string'),
        d.arg('ResourceId', 'd.T.string'),
      ]
    ),
    new(
      TagOptionId,
      ResourceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TagOptionId) : 'TagOptionId must be a string',
        TagOptionId: TagOptionId,
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalog::TagOptionAssociation',
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
}
