local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DataSource: {
    '#': d.pkg(
      name='DataSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='A data source is used to import technical metadata of assets (data) from the source databases or data warehouses into Amazon DataZone. ',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::DataSource Resource
        * Name The name of the data source.
        * DomainIdentifier The ID of the Amazon DataZone domain where the data source is created.
        * ProjectIdentifier The identifier of the Amazon DataZone project in which you want to add the data source.
        * EnvironmentIdentifier The unique identifier of the Amazon DataZone environment to which the data source publishes assets.
        * Type The type of the data source.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('ProjectIdentifier', 'd.T.string'),
        d.arg('EnvironmentIdentifier', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Name,
      DomainIdentifier,
      ProjectIdentifier,
      EnvironmentIdentifier,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(ProjectIdentifier) : 'ProjectIdentifier must be a string',
        ProjectIdentifier: ProjectIdentifier,
        assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
        EnvironmentIdentifier: EnvironmentIdentifier,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::DataSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssetFormsInput': d.fn('`withAssetFormsInput` AssetFormsInput ', [d.arg('AssetFormsInput', d.T.array)]),
    withAssetFormsInput(AssetFormsInput): {
      assert std.isArray(AssetFormsInput) : 'AssetFormsInput must be a array',
      Properties+::: { AssetFormsInput: AssetFormsInput },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withEnableSetting': d.fn('`withEnableSetting` EnableSetting ', [d.arg('EnableSetting', d.T.string)]),
    withEnableSetting(EnableSetting): {
      assert std.isString(EnableSetting) : 'EnableSetting must be a string',
      Properties+::: { EnableSetting: EnableSetting },
    },
    '#withEnvironmentId': d.fn('`withEnvironmentId` EnvironmentId ', [d.arg('EnvironmentId', d.T.string)]),
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: { EnvironmentId: EnvironmentId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration')]),
    withConfiguration(Configuration): {
      // Type: undefined
      Properties+::: { Configuration: Configuration },
    },
    '#withLastRunAssetCount': d.fn('`withLastRunAssetCount` LastRunAssetCount ', [d.arg('LastRunAssetCount', d.T.integer)]),
    withLastRunAssetCount(LastRunAssetCount): {
      // Type: number
      Properties+::: { LastRunAssetCount: LastRunAssetCount },
    },
    '#withLastRunAt': d.fn('`withLastRunAt` LastRunAt ', [d.arg('LastRunAt', d.T.string)]),
    withLastRunAt(LastRunAt): {
      assert std.isString(LastRunAt) : 'LastRunAt must be a string',
      Properties+::: { LastRunAt: LastRunAt },
    },
    '#withLastRunStatus': d.fn('`withLastRunStatus` LastRunStatus ', [d.arg('LastRunStatus', d.T.string)]),
    withLastRunStatus(LastRunStatus): {
      assert std.isString(LastRunStatus) : 'LastRunStatus must be a string',
      Properties+::: { LastRunStatus: LastRunStatus },
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withPublishOnImport': d.fn('`withPublishOnImport` PublishOnImport ', [d.arg('PublishOnImport', d.T.boolean)]),
    withPublishOnImport(PublishOnImport): {
      assert std.isBoolean(PublishOnImport) : 'PublishOnImport must be a boolean',
      Properties+::: { PublishOnImport: PublishOnImport },
    },
    '#withRecommendation': d.fn('`withRecommendation` Recommendation ', [d.arg('Recommendation', d.T.object)]),
    withRecommendation(Recommendation): {
      assert std.isObject(Recommendation) : 'Recommendation must be a object',
      Properties+::: { Recommendation: Recommendation },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='A domain is an organizing entity for connecting together assets, users, and their projects',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::Domain Resource
        * DomainExecutionRole The domain execution role that is created when an Amazon DataZone domain is created. The domain execution role is created in the AWS account that houses the Amazon DataZone domain.
        * Name The name of the Amazon DataZone domain.
      |||,
      args=[
        d.arg('DomainExecutionRole', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      DomainExecutionRole,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainExecutionRole) : 'DomainExecutionRole must be a string',
        DomainExecutionRole: DomainExecutionRole,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
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
    '#withKmsKeyIdentifier': d.fn('`withKmsKeyIdentifier` KmsKeyIdentifier ', [d.arg('KmsKeyIdentifier', d.T.string)]),
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: { KmsKeyIdentifier: KmsKeyIdentifier },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withManagedAccountId': d.fn('`withManagedAccountId` ManagedAccountId ', [d.arg('ManagedAccountId', d.T.string)]),
    withManagedAccountId(ManagedAccountId): {
      assert std.isString(ManagedAccountId) : 'ManagedAccountId must be a string',
      Properties+::: { ManagedAccountId: ManagedAccountId },
    },
    '#withPortalUrl': d.fn('`withPortalUrl` PortalUrl ', [d.arg('PortalUrl', d.T.string)]),
    withPortalUrl(PortalUrl): {
      assert std.isString(PortalUrl) : 'PortalUrl must be a string',
      Properties+::: { PortalUrl: PortalUrl },
    },
    '#withSingleSignOn': d.fn('`withSingleSignOn` SingleSignOn ', [d.arg('SingleSignOn', d.T.object)]),
    withSingleSignOn(SingleSignOn): {
      assert std.isObject(SingleSignOn) : 'SingleSignOn must be a object',
      Properties+::: { SingleSignOn: SingleSignOn },
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
  },
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Definition of AWS::DataZone::Environment Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::Environment Resource
        * Name The name of the environment.
        * ProjectIdentifier The ID of the Amazon DataZone project in which the environment would be created.
        * DomainIdentifier The identifier of the Amazon DataZone domain in which the environment would be created.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ProjectIdentifier', 'd.T.string'),
        d.arg('DomainIdentifier', 'd.T.string'),
      ]
    ),
    new(
      Name,
      ProjectIdentifier,
      DomainIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ProjectIdentifier) : 'ProjectIdentifier must be a string',
        ProjectIdentifier: ProjectIdentifier,
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withAwsAccountRegion': d.fn('`withAwsAccountRegion` AwsAccountRegion ', [d.arg('AwsAccountRegion', d.T.string)]),
    withAwsAccountRegion(AwsAccountRegion): {
      assert std.isString(AwsAccountRegion) : 'AwsAccountRegion must be a string',
      Properties+::: { AwsAccountRegion: AwsAccountRegion },
    },
    '#withEnvironmentAccountIdentifier': d.fn('`withEnvironmentAccountIdentifier` EnvironmentAccountIdentifier ', [d.arg('EnvironmentAccountIdentifier', d.T.string)]),
    withEnvironmentAccountIdentifier(EnvironmentAccountIdentifier): {
      assert std.isString(EnvironmentAccountIdentifier) : 'EnvironmentAccountIdentifier must be a string',
      Properties+::: { EnvironmentAccountIdentifier: EnvironmentAccountIdentifier },
    },
    '#withEnvironmentAccountRegion': d.fn('`withEnvironmentAccountRegion` EnvironmentAccountRegion ', [d.arg('EnvironmentAccountRegion', d.T.string)]),
    withEnvironmentAccountRegion(EnvironmentAccountRegion): {
      assert std.isString(EnvironmentAccountRegion) : 'EnvironmentAccountRegion must be a string',
      Properties+::: { EnvironmentAccountRegion: EnvironmentAccountRegion },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.string)]),
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withEnvironmentBlueprintId': d.fn('`withEnvironmentBlueprintId` EnvironmentBlueprintId ', [d.arg('EnvironmentBlueprintId', d.T.string)]),
    withEnvironmentBlueprintId(EnvironmentBlueprintId): {
      assert std.isString(EnvironmentBlueprintId) : 'EnvironmentBlueprintId must be a string',
      Properties+::: { EnvironmentBlueprintId: EnvironmentBlueprintId },
    },
    '#withEnvironmentProfileId': d.fn('`withEnvironmentProfileId` EnvironmentProfileId ', [d.arg('EnvironmentProfileId', d.T.string)]),
    withEnvironmentProfileId(EnvironmentProfileId): {
      assert std.isString(EnvironmentProfileId) : 'EnvironmentProfileId must be a string',
      Properties+::: { EnvironmentProfileId: EnvironmentProfileId },
    },
    '#withEnvironmentProfileIdentifier': d.fn('`withEnvironmentProfileIdentifier` EnvironmentProfileIdentifier ', [d.arg('EnvironmentProfileIdentifier', d.T.string)]),
    withEnvironmentProfileIdentifier(EnvironmentProfileIdentifier): {
      assert std.isString(EnvironmentProfileIdentifier) : 'EnvironmentProfileIdentifier must be a string',
      Properties+::: { EnvironmentProfileIdentifier: EnvironmentProfileIdentifier },
    },
    '#withGlossaryTerms': d.fn('`withGlossaryTerms` GlossaryTerms ', [d.arg('GlossaryTerms', d.T.array)]),
    withGlossaryTerms(GlossaryTerms): {
      assert std.isArray(GlossaryTerms) : 'GlossaryTerms must be a array',
      Properties+::: { GlossaryTerms: GlossaryTerms },
    },
    '#withEnvironmentRoleArn': d.fn('`withEnvironmentRoleArn` EnvironmentRoleArn ', [d.arg('EnvironmentRoleArn', d.T.string)]),
    withEnvironmentRoleArn(EnvironmentRoleArn): {
      assert std.isString(EnvironmentRoleArn) : 'EnvironmentRoleArn must be a string',
      Properties+::: { EnvironmentRoleArn: EnvironmentRoleArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withProvider': d.fn('`withProvider` Provider ', [d.arg('Provider', d.T.string)]),
    withProvider(Provider): {
      assert std.isString(Provider) : 'Provider must be a string',
      Properties+::: { Provider: Provider },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withUserParameters': d.fn('`withUserParameters` UserParameters ', [d.arg('UserParameters', d.T.array)]),
    withUserParameters(UserParameters): {
      assert std.isArray(UserParameters) : 'UserParameters must be a array',
      Properties+::: { UserParameters: UserParameters },
    },
  },
  EnvironmentActions: {
    '#': d.pkg(
      name='EnvironmentActions',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Definition of AWS::DataZone::EnvironmentActions Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::EnvironmentActions Resource
        * Name The name of the environment action.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::EnvironmentActions',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withDomainIdentifier': d.fn('`withDomainIdentifier` DomainIdentifier ', [d.arg('DomainIdentifier', d.T.string)]),
    withDomainIdentifier(DomainIdentifier): {
      assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
      Properties+::: { DomainIdentifier: DomainIdentifier },
    },
    '#withEnvironmentId': d.fn('`withEnvironmentId` EnvironmentId ', [d.arg('EnvironmentId', d.T.string)]),
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: { EnvironmentId: EnvironmentId },
    },
    '#withEnvironmentIdentifier': d.fn('`withEnvironmentIdentifier` EnvironmentIdentifier ', [d.arg('EnvironmentIdentifier', d.T.string)]),
    withEnvironmentIdentifier(EnvironmentIdentifier): {
      assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
      Properties+::: { EnvironmentIdentifier: EnvironmentIdentifier },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIdentifier': d.fn('`withIdentifier` Identifier ', [d.arg('Identifier', d.T.string)]),
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: { Identifier: Identifier },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
  },
  EnvironmentBlueprintConfiguration: {
    '#': d.pkg(
      name='EnvironmentBlueprintConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Definition of AWS::DataZone::EnvironmentBlueprintConfiguration Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::EnvironmentBlueprintConfiguration Resource
        * DomainIdentifier 
        * EnvironmentBlueprintIdentifier 
        * EnabledRegions 
      |||,
      args=[
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('EnvironmentBlueprintIdentifier', 'd.T.string'),
        d.arg('EnabledRegions', 'd.T.array'),
      ]
    ),
    new(
      DomainIdentifier,
      EnvironmentBlueprintIdentifier,
      EnabledRegions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(EnvironmentBlueprintIdentifier) : 'EnvironmentBlueprintIdentifier must be a string',
        EnvironmentBlueprintIdentifier: EnvironmentBlueprintIdentifier,
        assert std.isArray(EnabledRegions) : 'EnabledRegions must be a array',
        EnabledRegions: EnabledRegions,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::EnvironmentBlueprintConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRegionalParameters': d.fn('`withRegionalParameters` RegionalParameters ', [d.arg('RegionalParameters', d.T.array)]),
    withRegionalParameters(RegionalParameters): {
      assert std.isArray(RegionalParameters) : 'RegionalParameters must be a array',
      Properties+::: { RegionalParameters: RegionalParameters },
    },
    '#withProvisioningRoleArn': d.fn('`withProvisioningRoleArn` ProvisioningRoleArn ', [d.arg('ProvisioningRoleArn', d.T.string)]),
    withProvisioningRoleArn(ProvisioningRoleArn): {
      assert std.isString(ProvisioningRoleArn) : 'ProvisioningRoleArn must be a string',
      Properties+::: { ProvisioningRoleArn: ProvisioningRoleArn },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withEnvironmentBlueprintId': d.fn('`withEnvironmentBlueprintId` EnvironmentBlueprintId ', [d.arg('EnvironmentBlueprintId', d.T.string)]),
    withEnvironmentBlueprintId(EnvironmentBlueprintId): {
      assert std.isString(EnvironmentBlueprintId) : 'EnvironmentBlueprintId must be a string',
      Properties+::: { EnvironmentBlueprintId: EnvironmentBlueprintId },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withManageAccessRoleArn': d.fn('`withManageAccessRoleArn` ManageAccessRoleArn ', [d.arg('ManageAccessRoleArn', d.T.string)]),
    withManageAccessRoleArn(ManageAccessRoleArn): {
      assert std.isString(ManageAccessRoleArn) : 'ManageAccessRoleArn must be a string',
      Properties+::: { ManageAccessRoleArn: ManageAccessRoleArn },
    },
  },
  EnvironmentProfile: {
    '#': d.pkg(
      name='EnvironmentProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='AWS Datazone Environment Profile is pre-configured set of resources and blueprints that provide reusable templates for creating environments.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::EnvironmentProfile Resource
        * EnvironmentBlueprintIdentifier The ID of the blueprint with which this environment profile is created.
        * ProjectIdentifier The identifier of the project in which to create the environment profile.
        * DomainIdentifier The ID of the Amazon DataZone domain in which this environment profile is created.
        * AwsAccountId The AWS account in which the Amazon DataZone environment is created.
        * AwsAccountRegion The AWS region in which this environment profile is created.
        * Name The name of this Amazon DataZone environment profile.
      |||,
      args=[
        d.arg('EnvironmentBlueprintIdentifier', 'd.T.string'),
        d.arg('ProjectIdentifier', 'd.T.string'),
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('AwsAccountId', 'd.T.string'),
        d.arg('AwsAccountRegion', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EnvironmentBlueprintIdentifier,
      ProjectIdentifier,
      DomainIdentifier,
      AwsAccountId,
      AwsAccountRegion,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EnvironmentBlueprintIdentifier) : 'EnvironmentBlueprintIdentifier must be a string',
        EnvironmentBlueprintIdentifier: EnvironmentBlueprintIdentifier,
        assert std.isString(ProjectIdentifier) : 'ProjectIdentifier must be a string',
        ProjectIdentifier: ProjectIdentifier,
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
        AwsAccountId: AwsAccountId,
        assert std.isString(AwsAccountRegion) : 'AwsAccountRegion must be a string',
        AwsAccountRegion: AwsAccountRegion,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::EnvironmentProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.string)]),
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withEnvironmentBlueprintId': d.fn('`withEnvironmentBlueprintId` EnvironmentBlueprintId ', [d.arg('EnvironmentBlueprintId', d.T.string)]),
    withEnvironmentBlueprintId(EnvironmentBlueprintId): {
      assert std.isString(EnvironmentBlueprintId) : 'EnvironmentBlueprintId must be a string',
      Properties+::: { EnvironmentBlueprintId: EnvironmentBlueprintId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withUserParameters': d.fn('`withUserParameters` UserParameters ', [d.arg('UserParameters', d.T.array)]),
    withUserParameters(UserParameters): {
      assert std.isArray(UserParameters) : 'UserParameters must be a array',
      Properties+::: { UserParameters: UserParameters },
    },
  },
  GroupProfile: {
    '#': d.pkg(
      name='GroupProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Group profiles represent groups of Amazon DataZone users. Groups can be manually created, or mapped to Active Directory groups of enterprise customers. In Amazon DataZone, groups serve two purposes. First, a group can map to a team of users in the organizational chart, and thus reduce the administrative work of a Amazon DataZone project owner when there are new employees joining or leaving a team. Second, corporate administrators use Active Directory groups to manage and update user statuses and so Amazon DataZone domain administrators can use these group memberships to implement Amazon DataZone domain policies.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::GroupProfile Resource
        * DomainIdentifier The identifier of the Amazon DataZone domain in which the group profile would be created.
        * GroupIdentifier The ID of the group.
      |||,
      args=[
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('GroupIdentifier', 'd.T.string'),
      ]
    ),
    new(
      DomainIdentifier,
      GroupIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(GroupIdentifier) : 'GroupIdentifier must be a string',
        GroupIdentifier: GroupIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::GroupProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Amazon DataZone projects are business use case–based groupings of people, assets (data), and tools used to simplify access to the AWS analytics.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::Project Resource
        * DomainIdentifier The ID of the Amazon DataZone domain in which this project is created.
        * Name The name of the Amazon DataZone project.
      |||,
      args=[
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      DomainIdentifier,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.string)]),
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withGlossaryTerms': d.fn('`withGlossaryTerms` GlossaryTerms ', [d.arg('GlossaryTerms', d.T.array)]),
    withGlossaryTerms(GlossaryTerms): {
      assert std.isArray(GlossaryTerms) : 'GlossaryTerms must be a array',
      Properties+::: { GlossaryTerms: GlossaryTerms },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
  },
  ProjectMembership: {
    '#': d.pkg(
      name='ProjectMembership',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Definition of AWS::DataZone::ProjectMembership Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::ProjectMembership Resource
        * Designation 
        * DomainIdentifier 
        * ProjectIdentifier 
        * Member 
      |||,
      args=[
        d.arg('Designation', 'd.T.string'),
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('ProjectIdentifier', 'd.T.string'),
        d.arg('Member', ''),
      ]
    ),
    new(
      Designation,
      DomainIdentifier,
      ProjectIdentifier,
      Member,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Designation) : 'Designation must be a string',
        Designation: Designation,
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(ProjectIdentifier) : 'ProjectIdentifier must be a string',
        ProjectIdentifier: ProjectIdentifier,
        // Type: undefined
        Member: Member,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::ProjectMembership',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  SubscriptionTarget: {
    '#': d.pkg(
      name='SubscriptionTarget',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='Subscription targets enables one to access the data to which you have subscribed in your projects.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::SubscriptionTarget Resource
        * ApplicableAssetTypes The asset types that can be included in the subscription target.
        * AuthorizedPrincipals The authorized principals of the subscription target.
        * DomainIdentifier The ID of the Amazon DataZone domain in which subscription target would be created.
        * EnvironmentIdentifier The ID of the environment in which subscription target would be created.
        * ManageAccessRole The manage access role that is used to create the subscription target.
        * Name The name of the subscription target.
        * SubscriptionTargetConfig The configuration of the subscription target.
        * Type The type of the subscription target.
      |||,
      args=[
        d.arg('ApplicableAssetTypes', 'd.T.array'),
        d.arg('AuthorizedPrincipals', 'd.T.array'),
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('EnvironmentIdentifier', 'd.T.string'),
        d.arg('ManageAccessRole', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('SubscriptionTargetConfig', 'd.T.array'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      ApplicableAssetTypes,
      AuthorizedPrincipals,
      DomainIdentifier,
      EnvironmentIdentifier,
      ManageAccessRole,
      Name,
      SubscriptionTargetConfig,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ApplicableAssetTypes) : 'ApplicableAssetTypes must be a array',
        ApplicableAssetTypes: ApplicableAssetTypes,
        assert std.isArray(AuthorizedPrincipals) : 'AuthorizedPrincipals must be a array',
        AuthorizedPrincipals: AuthorizedPrincipals,
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
        EnvironmentIdentifier: EnvironmentIdentifier,
        assert std.isString(ManageAccessRole) : 'ManageAccessRole must be a string',
        ManageAccessRole: ManageAccessRole,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(SubscriptionTargetConfig) : 'SubscriptionTargetConfig must be a array',
        SubscriptionTargetConfig: SubscriptionTargetConfig,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::SubscriptionTarget',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.string)]),
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withEnvironmentId': d.fn('`withEnvironmentId` EnvironmentId ', [d.arg('EnvironmentId', d.T.string)]),
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: { EnvironmentId: EnvironmentId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withProvider': d.fn('`withProvider` Provider ', [d.arg('Provider', d.T.string)]),
    withProvider(Provider): {
      assert std.isString(Provider) : 'Provider must be a string',
      Properties+::: { Provider: Provider },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withUpdatedBy': d.fn('`withUpdatedBy` UpdatedBy ', [d.arg('UpdatedBy', d.T.string)]),
    withUpdatedBy(UpdatedBy): {
      assert std.isString(UpdatedBy) : 'UpdatedBy must be a string',
      Properties+::: { UpdatedBy: UpdatedBy },
    },
  },
  UserProfile: {
    '#': d.pkg(
      name='UserProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataZone.libsonnet',
      help='A user profile represents Amazon DataZone users. Amazon DataZone supports both IAM roles and SSO identities to interact with the Amazon DataZone Management Console and the data portal for different purposes. Domain administrators use IAM roles to perform the initial administrative domain-related work in the Amazon DataZone Management Console, including creating new Amazon DataZone domains, configuring metadata form types, and implementing policies. Data workers use their SSO corporate identities via Identity Center to log into the Amazon DataZone Data Portal and access projects where they have memberships.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataZone::UserProfile Resource
        * DomainIdentifier The identifier of the Amazon DataZone domain in which the user profile would be created.
        * UserIdentifier The ID of the user.
      |||,
      args=[
        d.arg('DomainIdentifier', 'd.T.string'),
        d.arg('UserIdentifier', 'd.T.string'),
      ]
    ),
    new(
      DomainIdentifier,
      UserIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainIdentifier) : 'DomainIdentifier must be a string',
        DomainIdentifier: DomainIdentifier,
        assert std.isString(UserIdentifier) : 'UserIdentifier must be a string',
        UserIdentifier: UserIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::DataZone::UserProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDetails': d.fn('`withDetails` Details ', [d.arg('Details')]),
    withDetails(Details): {
      // Type: undefined
      Properties+::: { Details: Details },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withUserType': d.fn('`withUserType` UserType ', [d.arg('UserType', d.T.string)]),
    withUserType(UserType): {
      assert std.isString(UserType) : 'UserType must be a string',
      Properties+::: { UserType: UserType },
    },
  },
}
