local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ADMChannel: {
    '#': d.pkg(
      name='ADMChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::ADMChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::ADMChannel Resource
        * ApplicationId 
        * ClientId 
        * ClientSecret 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('ClientId', 'd.T.string'),
        d.arg('ClientSecret', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
      ClientId,
      ClientSecret,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(ClientId) : 'ClientId must be a string',
        ClientId: ClientId,
        assert std.isString(ClientSecret) : 'ClientSecret must be a string',
        ClientSecret: ClientSecret,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::ADMChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
  },
  APNSChannel: {
    '#': d.pkg(
      name='APNSChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::APNSChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::APNSChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::APNSChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withBundleId': d.fn('`withBundleId` BundleId ', [d.arg('BundleId', d.T.string)]),
    withBundleId(BundleId): {
      assert std.isString(BundleId) : 'BundleId must be a string',
      Properties+::: { BundleId: BundleId },
    },
    '#withPrivateKey': d.fn('`withPrivateKey` PrivateKey ', [d.arg('PrivateKey', d.T.string)]),
    withPrivateKey(PrivateKey): {
      assert std.isString(PrivateKey) : 'PrivateKey must be a string',
      Properties+::: { PrivateKey: PrivateKey },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withDefaultAuthenticationMethod': d.fn('`withDefaultAuthenticationMethod` DefaultAuthenticationMethod ', [d.arg('DefaultAuthenticationMethod', d.T.string)]),
    withDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
      assert std.isString(DefaultAuthenticationMethod) : 'DefaultAuthenticationMethod must be a string',
      Properties+::: { DefaultAuthenticationMethod: DefaultAuthenticationMethod },
    },
    '#withTokenKey': d.fn('`withTokenKey` TokenKey ', [d.arg('TokenKey', d.T.string)]),
    withTokenKey(TokenKey): {
      assert std.isString(TokenKey) : 'TokenKey must be a string',
      Properties+::: { TokenKey: TokenKey },
    },
    '#withTeamId': d.fn('`withTeamId` TeamId ', [d.arg('TeamId', d.T.string)]),
    withTeamId(TeamId): {
      assert std.isString(TeamId) : 'TeamId must be a string',
      Properties+::: { TeamId: TeamId },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.string)]),
    withCertificate(Certificate): {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Properties+::: { Certificate: Certificate },
    },
    '#withTokenKeyId': d.fn('`withTokenKeyId` TokenKeyId ', [d.arg('TokenKeyId', d.T.string)]),
    withTokenKeyId(TokenKeyId): {
      assert std.isString(TokenKeyId) : 'TokenKeyId must be a string',
      Properties+::: { TokenKeyId: TokenKeyId },
    },
  },
  APNSSandboxChannel: {
    '#': d.pkg(
      name='APNSSandboxChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::APNSSandboxChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::APNSSandboxChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::APNSSandboxChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withBundleId': d.fn('`withBundleId` BundleId ', [d.arg('BundleId', d.T.string)]),
    withBundleId(BundleId): {
      assert std.isString(BundleId) : 'BundleId must be a string',
      Properties+::: { BundleId: BundleId },
    },
    '#withPrivateKey': d.fn('`withPrivateKey` PrivateKey ', [d.arg('PrivateKey', d.T.string)]),
    withPrivateKey(PrivateKey): {
      assert std.isString(PrivateKey) : 'PrivateKey must be a string',
      Properties+::: { PrivateKey: PrivateKey },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withDefaultAuthenticationMethod': d.fn('`withDefaultAuthenticationMethod` DefaultAuthenticationMethod ', [d.arg('DefaultAuthenticationMethod', d.T.string)]),
    withDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
      assert std.isString(DefaultAuthenticationMethod) : 'DefaultAuthenticationMethod must be a string',
      Properties+::: { DefaultAuthenticationMethod: DefaultAuthenticationMethod },
    },
    '#withTokenKey': d.fn('`withTokenKey` TokenKey ', [d.arg('TokenKey', d.T.string)]),
    withTokenKey(TokenKey): {
      assert std.isString(TokenKey) : 'TokenKey must be a string',
      Properties+::: { TokenKey: TokenKey },
    },
    '#withTeamId': d.fn('`withTeamId` TeamId ', [d.arg('TeamId', d.T.string)]),
    withTeamId(TeamId): {
      assert std.isString(TeamId) : 'TeamId must be a string',
      Properties+::: { TeamId: TeamId },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.string)]),
    withCertificate(Certificate): {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Properties+::: { Certificate: Certificate },
    },
    '#withTokenKeyId': d.fn('`withTokenKeyId` TokenKeyId ', [d.arg('TokenKeyId', d.T.string)]),
    withTokenKeyId(TokenKeyId): {
      assert std.isString(TokenKeyId) : 'TokenKeyId must be a string',
      Properties+::: { TokenKeyId: TokenKeyId },
    },
  },
  APNSVoipChannel: {
    '#': d.pkg(
      name='APNSVoipChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::APNSVoipChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::APNSVoipChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::APNSVoipChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withBundleId': d.fn('`withBundleId` BundleId ', [d.arg('BundleId', d.T.string)]),
    withBundleId(BundleId): {
      assert std.isString(BundleId) : 'BundleId must be a string',
      Properties+::: { BundleId: BundleId },
    },
    '#withPrivateKey': d.fn('`withPrivateKey` PrivateKey ', [d.arg('PrivateKey', d.T.string)]),
    withPrivateKey(PrivateKey): {
      assert std.isString(PrivateKey) : 'PrivateKey must be a string',
      Properties+::: { PrivateKey: PrivateKey },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withDefaultAuthenticationMethod': d.fn('`withDefaultAuthenticationMethod` DefaultAuthenticationMethod ', [d.arg('DefaultAuthenticationMethod', d.T.string)]),
    withDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
      assert std.isString(DefaultAuthenticationMethod) : 'DefaultAuthenticationMethod must be a string',
      Properties+::: { DefaultAuthenticationMethod: DefaultAuthenticationMethod },
    },
    '#withTokenKey': d.fn('`withTokenKey` TokenKey ', [d.arg('TokenKey', d.T.string)]),
    withTokenKey(TokenKey): {
      assert std.isString(TokenKey) : 'TokenKey must be a string',
      Properties+::: { TokenKey: TokenKey },
    },
    '#withTeamId': d.fn('`withTeamId` TeamId ', [d.arg('TeamId', d.T.string)]),
    withTeamId(TeamId): {
      assert std.isString(TeamId) : 'TeamId must be a string',
      Properties+::: { TeamId: TeamId },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.string)]),
    withCertificate(Certificate): {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Properties+::: { Certificate: Certificate },
    },
    '#withTokenKeyId': d.fn('`withTokenKeyId` TokenKeyId ', [d.arg('TokenKeyId', d.T.string)]),
    withTokenKeyId(TokenKeyId): {
      assert std.isString(TokenKeyId) : 'TokenKeyId must be a string',
      Properties+::: { TokenKeyId: TokenKeyId },
    },
  },
  APNSVoipSandboxChannel: {
    '#': d.pkg(
      name='APNSVoipSandboxChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::APNSVoipSandboxChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::APNSVoipSandboxChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::APNSVoipSandboxChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withBundleId': d.fn('`withBundleId` BundleId ', [d.arg('BundleId', d.T.string)]),
    withBundleId(BundleId): {
      assert std.isString(BundleId) : 'BundleId must be a string',
      Properties+::: { BundleId: BundleId },
    },
    '#withPrivateKey': d.fn('`withPrivateKey` PrivateKey ', [d.arg('PrivateKey', d.T.string)]),
    withPrivateKey(PrivateKey): {
      assert std.isString(PrivateKey) : 'PrivateKey must be a string',
      Properties+::: { PrivateKey: PrivateKey },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withDefaultAuthenticationMethod': d.fn('`withDefaultAuthenticationMethod` DefaultAuthenticationMethod ', [d.arg('DefaultAuthenticationMethod', d.T.string)]),
    withDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
      assert std.isString(DefaultAuthenticationMethod) : 'DefaultAuthenticationMethod must be a string',
      Properties+::: { DefaultAuthenticationMethod: DefaultAuthenticationMethod },
    },
    '#withTokenKey': d.fn('`withTokenKey` TokenKey ', [d.arg('TokenKey', d.T.string)]),
    withTokenKey(TokenKey): {
      assert std.isString(TokenKey) : 'TokenKey must be a string',
      Properties+::: { TokenKey: TokenKey },
    },
    '#withTeamId': d.fn('`withTeamId` TeamId ', [d.arg('TeamId', d.T.string)]),
    withTeamId(TeamId): {
      assert std.isString(TeamId) : 'TeamId must be a string',
      Properties+::: { TeamId: TeamId },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.string)]),
    withCertificate(Certificate): {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Properties+::: { Certificate: Certificate },
    },
    '#withTokenKeyId': d.fn('`withTokenKeyId` TokenKeyId ', [d.arg('TokenKeyId', d.T.string)]),
    withTokenKeyId(TokenKeyId): {
      assert std.isString(TokenKeyId) : 'TokenKeyId must be a string',
      Properties+::: { TokenKeyId: TokenKeyId },
    },
  },
  App: {
    '#': d.pkg(
      name='App',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::App',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::App Resource
        * Name 
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
      Type: 'AWS::Pinpoint::App',
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ApplicationSettings: {
    '#': d.pkg(
      name='ApplicationSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::ApplicationSettings',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::ApplicationSettings Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::ApplicationSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withQuietTime': d.fn('`withQuietTime` QuietTime ', [d.arg('QuietTime', d.T.object)]),
    withQuietTime(QuietTime): {
      assert std.isObject(QuietTime) : 'QuietTime must be a object',
      Properties+::: { QuietTime: QuietTime },
    },
    '#withLimits': d.fn('`withLimits` Limits ', [d.arg('Limits', d.T.object)]),
    withLimits(Limits): {
      assert std.isObject(Limits) : 'Limits must be a object',
      Properties+::: { Limits: Limits },
    },
    '#withCampaignHook': d.fn('`withCampaignHook` CampaignHook ', [d.arg('CampaignHook', d.T.object)]),
    withCampaignHook(CampaignHook): {
      assert std.isObject(CampaignHook) : 'CampaignHook must be a object',
      Properties+::: { CampaignHook: CampaignHook },
    },
    '#withCloudWatchMetricsEnabled': d.fn('`withCloudWatchMetricsEnabled` CloudWatchMetricsEnabled ', [d.arg('CloudWatchMetricsEnabled', d.T.boolean)]),
    withCloudWatchMetricsEnabled(CloudWatchMetricsEnabled): {
      assert std.isBoolean(CloudWatchMetricsEnabled) : 'CloudWatchMetricsEnabled must be a boolean',
      Properties+::: { CloudWatchMetricsEnabled: CloudWatchMetricsEnabled },
    },
  },
  BaiduChannel: {
    '#': d.pkg(
      name='BaiduChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::BaiduChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::BaiduChannel Resource
        * ApplicationId 
        * SecretKey 
        * ApiKey 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('SecretKey', 'd.T.string'),
        d.arg('ApiKey', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
      SecretKey,
      ApiKey,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(SecretKey) : 'SecretKey must be a string',
        SecretKey: SecretKey,
        assert std.isString(ApiKey) : 'ApiKey must be a string',
        ApiKey: ApiKey,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::BaiduChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
  },
  Campaign: {
    '#': d.pkg(
      name='Campaign',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::Campaign',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::Campaign Resource
        * SegmentId 
        * Schedule 
        * ApplicationId 
        * Name 
      |||,
      args=[
        d.arg('SegmentId', 'd.T.string'),
        d.arg('Schedule', 'd.T.object'),
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      SegmentId,
      Schedule,
      ApplicationId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SegmentId) : 'SegmentId must be a string',
        SegmentId: SegmentId,
        assert std.isObject(Schedule) : 'Schedule must be a object',
        Schedule: Schedule,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::Campaign',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPriority': d.fn('`withPriority` Priority ', [d.arg('Priority', d.T.integer)]),
    withPriority(Priority): {
      assert std.isNumber(Priority) : 'Priority must be a integer',
      Properties+::: { Priority: Priority },
    },
    '#withTemplateConfiguration': d.fn('`withTemplateConfiguration` TemplateConfiguration ', [d.arg('TemplateConfiguration', d.T.object)]),
    withTemplateConfiguration(TemplateConfiguration): {
      assert std.isObject(TemplateConfiguration) : 'TemplateConfiguration must be a object',
      Properties+::: { TemplateConfiguration: TemplateConfiguration },
    },
    '#withIsPaused': d.fn('`withIsPaused` IsPaused ', [d.arg('IsPaused', d.T.boolean)]),
    withIsPaused(IsPaused): {
      assert std.isBoolean(IsPaused) : 'IsPaused must be a boolean',
      Properties+::: { IsPaused: IsPaused },
    },
    '#withAdditionalTreatments': d.fn('`withAdditionalTreatments` AdditionalTreatments ', [d.arg('AdditionalTreatments', d.T.array)]),
    withAdditionalTreatments(AdditionalTreatments): {
      assert std.isArray(AdditionalTreatments) : 'AdditionalTreatments must be a array',
      Properties+::: { AdditionalTreatments: AdditionalTreatments },
    },
    '#withSegmentVersion': d.fn('`withSegmentVersion` SegmentVersion ', [d.arg('SegmentVersion', d.T.integer)]),
    withSegmentVersion(SegmentVersion): {
      assert std.isNumber(SegmentVersion) : 'SegmentVersion must be a integer',
      Properties+::: { SegmentVersion: SegmentVersion },
    },
    '#withTreatmentDescription': d.fn('`withTreatmentDescription` TreatmentDescription ', [d.arg('TreatmentDescription', d.T.string)]),
    withTreatmentDescription(TreatmentDescription): {
      assert std.isString(TreatmentDescription) : 'TreatmentDescription must be a string',
      Properties+::: { TreatmentDescription: TreatmentDescription },
    },
    '#withMessageConfiguration': d.fn('`withMessageConfiguration` MessageConfiguration ', [d.arg('MessageConfiguration', d.T.object)]),
    withMessageConfiguration(MessageConfiguration): {
      assert std.isObject(MessageConfiguration) : 'MessageConfiguration must be a object',
      Properties+::: { MessageConfiguration: MessageConfiguration },
    },
    '#withLimits': d.fn('`withLimits` Limits ', [d.arg('Limits', d.T.object)]),
    withLimits(Limits): {
      assert std.isObject(Limits) : 'Limits must be a object',
      Properties+::: { Limits: Limits },
    },
    '#withCampaignId': d.fn('`withCampaignId` CampaignId ', [d.arg('CampaignId', d.T.string)]),
    withCampaignId(CampaignId): {
      assert std.isString(CampaignId) : 'CampaignId must be a string',
      Properties+::: { CampaignId: CampaignId },
    },
    '#withHoldoutPercent': d.fn('`withHoldoutPercent` HoldoutPercent ', [d.arg('HoldoutPercent', d.T.integer)]),
    withHoldoutPercent(HoldoutPercent): {
      assert std.isNumber(HoldoutPercent) : 'HoldoutPercent must be a integer',
      Properties+::: { HoldoutPercent: HoldoutPercent },
    },
    '#withCustomDeliveryConfiguration': d.fn('`withCustomDeliveryConfiguration` CustomDeliveryConfiguration ', [d.arg('CustomDeliveryConfiguration', d.T.object)]),
    withCustomDeliveryConfiguration(CustomDeliveryConfiguration): {
      assert std.isObject(CustomDeliveryConfiguration) : 'CustomDeliveryConfiguration must be a object',
      Properties+::: { CustomDeliveryConfiguration: CustomDeliveryConfiguration },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCampaignHook': d.fn('`withCampaignHook` CampaignHook ', [d.arg('CampaignHook', d.T.object)]),
    withCampaignHook(CampaignHook): {
      assert std.isObject(CampaignHook) : 'CampaignHook must be a object',
      Properties+::: { CampaignHook: CampaignHook },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTreatmentName': d.fn('`withTreatmentName` TreatmentName ', [d.arg('TreatmentName', d.T.string)]),
    withTreatmentName(TreatmentName): {
      assert std.isString(TreatmentName) : 'TreatmentName must be a string',
      Properties+::: { TreatmentName: TreatmentName },
    },
  },
  EmailChannel: {
    '#': d.pkg(
      name='EmailChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::EmailChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::EmailChannel Resource
        * FromAddress 
        * ApplicationId 
        * Identity 
      |||,
      args=[
        d.arg('FromAddress', 'd.T.string'),
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('Identity', 'd.T.string'),
      ]
    ),
    new(
      FromAddress,
      ApplicationId,
      Identity,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FromAddress) : 'FromAddress must be a string',
        FromAddress: FromAddress,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(Identity) : 'Identity must be a string',
        Identity: Identity,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::EmailChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConfigurationSet': d.fn('`withConfigurationSet` ConfigurationSet ', [d.arg('ConfigurationSet', d.T.string)]),
    withConfigurationSet(ConfigurationSet): {
      assert std.isString(ConfigurationSet) : 'ConfigurationSet must be a string',
      Properties+::: { ConfigurationSet: ConfigurationSet },
    },
    '#withOrchestrationSendingRoleArn': d.fn('`withOrchestrationSendingRoleArn` OrchestrationSendingRoleArn ', [d.arg('OrchestrationSendingRoleArn', d.T.string)]),
    withOrchestrationSendingRoleArn(OrchestrationSendingRoleArn): {
      assert std.isString(OrchestrationSendingRoleArn) : 'OrchestrationSendingRoleArn must be a string',
      Properties+::: { OrchestrationSendingRoleArn: OrchestrationSendingRoleArn },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
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
  EmailTemplate: {
    '#': d.pkg(
      name='EmailTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::EmailTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::EmailTemplate Resource
        * TemplateName 
        * Subject 
      |||,
      args=[
        d.arg('TemplateName', 'd.T.string'),
        d.arg('Subject', 'd.T.string'),
      ]
    ),
    new(
      TemplateName,
      Subject,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TemplateName) : 'TemplateName must be a string',
        TemplateName: TemplateName,
        assert std.isString(Subject) : 'Subject must be a string',
        Subject: Subject,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::EmailTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHtmlPart': d.fn('`withHtmlPart` HtmlPart ', [d.arg('HtmlPart', d.T.string)]),
    withHtmlPart(HtmlPart): {
      assert std.isString(HtmlPart) : 'HtmlPart must be a string',
      Properties+::: { HtmlPart: HtmlPart },
    },
    '#withTextPart': d.fn('`withTextPart` TextPart ', [d.arg('TextPart', d.T.string)]),
    withTextPart(TextPart): {
      assert std.isString(TextPart) : 'TextPart must be a string',
      Properties+::: { TextPart: TextPart },
    },
    '#withTemplateDescription': d.fn('`withTemplateDescription` TemplateDescription ', [d.arg('TemplateDescription', d.T.string)]),
    withTemplateDescription(TemplateDescription): {
      assert std.isString(TemplateDescription) : 'TemplateDescription must be a string',
      Properties+::: { TemplateDescription: TemplateDescription },
    },
    '#withDefaultSubstitutions': d.fn('`withDefaultSubstitutions` DefaultSubstitutions ', [d.arg('DefaultSubstitutions', d.T.string)]),
    withDefaultSubstitutions(DefaultSubstitutions): {
      assert std.isString(DefaultSubstitutions) : 'DefaultSubstitutions must be a string',
      Properties+::: { DefaultSubstitutions: DefaultSubstitutions },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  EventStream: {
    '#': d.pkg(
      name='EventStream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::EventStream',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::EventStream Resource
        * ApplicationId 
        * DestinationStreamArn 
        * RoleArn 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('DestinationStreamArn', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
      DestinationStreamArn,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(DestinationStreamArn) : 'DestinationStreamArn must be a string',
        DestinationStreamArn: DestinationStreamArn,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::EventStream',
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
  GCMChannel: {
    '#': d.pkg(
      name='GCMChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::GCMChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::GCMChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::GCMChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withServiceJson': d.fn('`withServiceJson` ServiceJson ', [d.arg('ServiceJson', d.T.string)]),
    withServiceJson(ServiceJson): {
      assert std.isString(ServiceJson) : 'ServiceJson must be a string',
      Properties+::: { ServiceJson: ServiceJson },
    },
    '#withDefaultAuthenticationMethod': d.fn('`withDefaultAuthenticationMethod` DefaultAuthenticationMethod ', [d.arg('DefaultAuthenticationMethod', d.T.string)]),
    withDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
      assert std.isString(DefaultAuthenticationMethod) : 'DefaultAuthenticationMethod must be a string',
      Properties+::: { DefaultAuthenticationMethod: DefaultAuthenticationMethod },
    },
    '#withApiKey': d.fn('`withApiKey` ApiKey ', [d.arg('ApiKey', d.T.string)]),
    withApiKey(ApiKey): {
      assert std.isString(ApiKey) : 'ApiKey must be a string',
      Properties+::: { ApiKey: ApiKey },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  InAppTemplate: {
    '#': d.pkg(
      name='InAppTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::InAppTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::InAppTemplate Resource
        * TemplateName 
      |||,
      args=[
        d.arg('TemplateName', 'd.T.string'),
      ]
    ),
    new(
      TemplateName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TemplateName) : 'TemplateName must be a string',
        TemplateName: TemplateName,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::InAppTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withContent': d.fn('`withContent` Content ', [d.arg('Content', d.T.array)]),
    withContent(Content): {
      assert std.isArray(Content) : 'Content must be a array',
      Properties+::: { Content: Content },
    },
    '#withCustomConfig': d.fn('`withCustomConfig` CustomConfig ', [d.arg('CustomConfig', d.T.object)]),
    withCustomConfig(CustomConfig): {
      assert std.isObject(CustomConfig) : 'CustomConfig must be a object',
      Properties+::: { CustomConfig: CustomConfig },
    },
    '#withLayout': d.fn('`withLayout` Layout ', [d.arg('Layout', d.T.string)]),
    withLayout(Layout): {
      assert std.isString(Layout) : 'Layout must be a string',
      assert Layout == 'BOTTOM_BANNER' || Layout == 'TOP_BANNER' || Layout == 'OVERLAYS' || Layout == 'MOBILE_FEED' || Layout == 'MIDDLE_BANNER' || Layout == 'CAROUSEL' : "Layout must be either 'BOTTOM_BANNER' or 'TOP_BANNER' or 'OVERLAYS' or 'MOBILE_FEED' or 'MIDDLE_BANNER' or 'CAROUSEL'",
      Properties+::: { Layout: Layout },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTemplateDescription': d.fn('`withTemplateDescription` TemplateDescription ', [d.arg('TemplateDescription', d.T.string)]),
    withTemplateDescription(TemplateDescription): {
      assert std.isString(TemplateDescription) : 'TemplateDescription must be a string',
      Properties+::: { TemplateDescription: TemplateDescription },
    },
  },
  PushTemplate: {
    '#': d.pkg(
      name='PushTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::PushTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::PushTemplate Resource
        * TemplateName 
      |||,
      args=[
        d.arg('TemplateName', 'd.T.string'),
      ]
    ),
    new(
      TemplateName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TemplateName) : 'TemplateName must be a string',
        TemplateName: TemplateName,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::PushTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGCM': d.fn('`withGCM` GCM ', [d.arg('GCM', d.T.object)]),
    withGCM(GCM): {
      assert std.isObject(GCM) : 'GCM must be a object',
      Properties+::: { GCM: GCM },
    },
    '#withBaidu': d.fn('`withBaidu` Baidu ', [d.arg('Baidu', d.T.object)]),
    withBaidu(Baidu): {
      assert std.isObject(Baidu) : 'Baidu must be a object',
      Properties+::: { Baidu: Baidu },
    },
    '#withADM': d.fn('`withADM` ADM ', [d.arg('ADM', d.T.object)]),
    withADM(ADM): {
      assert std.isObject(ADM) : 'ADM must be a object',
      Properties+::: { ADM: ADM },
    },
    '#withAPNS': d.fn('`withAPNS` APNS ', [d.arg('APNS', d.T.object)]),
    withAPNS(APNS): {
      assert std.isObject(APNS) : 'APNS must be a object',
      Properties+::: { APNS: APNS },
    },
    '#withTemplateDescription': d.fn('`withTemplateDescription` TemplateDescription ', [d.arg('TemplateDescription', d.T.string)]),
    withTemplateDescription(TemplateDescription): {
      assert std.isString(TemplateDescription) : 'TemplateDescription must be a string',
      Properties+::: { TemplateDescription: TemplateDescription },
    },
    '#withDefaultSubstitutions': d.fn('`withDefaultSubstitutions` DefaultSubstitutions ', [d.arg('DefaultSubstitutions', d.T.string)]),
    withDefaultSubstitutions(DefaultSubstitutions): {
      assert std.isString(DefaultSubstitutions) : 'DefaultSubstitutions must be a string',
      Properties+::: { DefaultSubstitutions: DefaultSubstitutions },
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
    '#withDefault': d.fn('`withDefault` Default ', [d.arg('Default', d.T.object)]),
    withDefault(Default): {
      assert std.isObject(Default) : 'Default must be a object',
      Properties+::: { Default: Default },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Segment: {
    '#': d.pkg(
      name='Segment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::Segment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::Segment Resource
        * ApplicationId 
        * Name 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::Segment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSegmentId': d.fn('`withSegmentId` SegmentId ', [d.arg('SegmentId', d.T.string)]),
    withSegmentId(SegmentId): {
      assert std.isString(SegmentId) : 'SegmentId must be a string',
      Properties+::: { SegmentId: SegmentId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withSegmentGroups': d.fn('`withSegmentGroups` SegmentGroups ', [d.arg('SegmentGroups', d.T.object)]),
    withSegmentGroups(SegmentGroups): {
      assert std.isObject(SegmentGroups) : 'SegmentGroups must be a object',
      Properties+::: { SegmentGroups: SegmentGroups },
    },
    '#withDimensions': d.fn('`withDimensions` Dimensions ', [d.arg('Dimensions', d.T.object)]),
    withDimensions(Dimensions): {
      assert std.isObject(Dimensions) : 'Dimensions must be a object',
      Properties+::: { Dimensions: Dimensions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  SMSChannel: {
    '#': d.pkg(
      name='SMSChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::SMSChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::SMSChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::SMSChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withShortCode': d.fn('`withShortCode` ShortCode ', [d.arg('ShortCode', d.T.string)]),
    withShortCode(ShortCode): {
      assert std.isString(ShortCode) : 'ShortCode must be a string',
      Properties+::: { ShortCode: ShortCode },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withSenderId': d.fn('`withSenderId` SenderId ', [d.arg('SenderId', d.T.string)]),
    withSenderId(SenderId): {
      assert std.isString(SenderId) : 'SenderId must be a string',
      Properties+::: { SenderId: SenderId },
    },
  },
  SmsTemplate: {
    '#': d.pkg(
      name='SmsTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::SmsTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::SmsTemplate Resource
        * TemplateName 
        * Body 
      |||,
      args=[
        d.arg('TemplateName', 'd.T.string'),
        d.arg('Body', 'd.T.string'),
      ]
    ),
    new(
      TemplateName,
      Body,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TemplateName) : 'TemplateName must be a string',
        TemplateName: TemplateName,
        assert std.isString(Body) : 'Body must be a string',
        Body: Body,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::SmsTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTemplateDescription': d.fn('`withTemplateDescription` TemplateDescription ', [d.arg('TemplateDescription', d.T.string)]),
    withTemplateDescription(TemplateDescription): {
      assert std.isString(TemplateDescription) : 'TemplateDescription must be a string',
      Properties+::: { TemplateDescription: TemplateDescription },
    },
    '#withDefaultSubstitutions': d.fn('`withDefaultSubstitutions` DefaultSubstitutions ', [d.arg('DefaultSubstitutions', d.T.string)]),
    withDefaultSubstitutions(DefaultSubstitutions): {
      assert std.isString(DefaultSubstitutions) : 'DefaultSubstitutions must be a string',
      Properties+::: { DefaultSubstitutions: DefaultSubstitutions },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  VoiceChannel: {
    '#': d.pkg(
      name='VoiceChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pinpoint.libsonnet',
      help='Resource Type definition for AWS::Pinpoint::VoiceChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pinpoint::VoiceChannel Resource
        * ApplicationId 
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::Pinpoint::VoiceChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
  },
}
