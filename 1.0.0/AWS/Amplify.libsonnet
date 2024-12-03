local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  App: {
    '#': d.pkg(
      name='App',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Amplify.libsonnet',
      help='The AWS::Amplify::App resource creates Apps in the Amplify Console. An App is a collection of branches.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Amplify::App Resource
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
      Type: 'AWS::Amplify::App',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessToken': d.fn('`withAccessToken` AccessToken ', [d.arg('AccessToken', d.T.string)]),
    withAccessToken(AccessToken): {
      assert std.isString(AccessToken) : 'AccessToken must be a string',
      Properties+::: { AccessToken: AccessToken },
    },
    '#withAppId': d.fn('`withAppId` AppId ', [d.arg('AppId', d.T.string)]),
    withAppId(AppId): {
      assert std.isString(AppId) : 'AppId must be a string',
      Properties+::: { AppId: AppId },
    },
    '#withAppName': d.fn('`withAppName` AppName ', [d.arg('AppName', d.T.string)]),
    withAppName(AppName): {
      assert std.isString(AppName) : 'AppName must be a string',
      Properties+::: { AppName: AppName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAutoBranchCreationConfig': d.fn('`withAutoBranchCreationConfig` AutoBranchCreationConfig ', [d.arg('AutoBranchCreationConfig', d.T.object)]),
    withAutoBranchCreationConfig(AutoBranchCreationConfig): {
      assert std.isObject(AutoBranchCreationConfig) : 'AutoBranchCreationConfig must be a object',
      Properties+::: { AutoBranchCreationConfig: AutoBranchCreationConfig },
    },
    '#withBasicAuthConfig': d.fn('`withBasicAuthConfig` BasicAuthConfig ', [d.arg('BasicAuthConfig', d.T.object)]),
    withBasicAuthConfig(BasicAuthConfig): {
      assert std.isObject(BasicAuthConfig) : 'BasicAuthConfig must be a object',
      Properties+::: { BasicAuthConfig: BasicAuthConfig },
    },
    '#withBuildSpec': d.fn('`withBuildSpec` BuildSpec ', [d.arg('BuildSpec', d.T.string)]),
    withBuildSpec(BuildSpec): {
      assert std.isString(BuildSpec) : 'BuildSpec must be a string',
      Properties+::: { BuildSpec: BuildSpec },
    },
    '#withCacheConfig': d.fn('`withCacheConfig` CacheConfig ', [d.arg('CacheConfig', d.T.object)]),
    withCacheConfig(CacheConfig): {
      assert std.isObject(CacheConfig) : 'CacheConfig must be a object',
      Properties+::: { CacheConfig: CacheConfig },
    },
    '#withCustomHeaders': d.fn('`withCustomHeaders` CustomHeaders ', [d.arg('CustomHeaders', d.T.string)]),
    withCustomHeaders(CustomHeaders): {
      assert std.isString(CustomHeaders) : 'CustomHeaders must be a string',
      Properties+::: { CustomHeaders: CustomHeaders },
    },
    '#withCustomRules': d.fn('`withCustomRules` CustomRules ', [d.arg('CustomRules', d.T.array)]),
    withCustomRules(CustomRules): {
      assert std.isArray(CustomRules) : 'CustomRules must be a array',
      Properties+::: { CustomRules: CustomRules },
    },
    '#withDefaultDomain': d.fn('`withDefaultDomain` DefaultDomain ', [d.arg('DefaultDomain', d.T.string)]),
    withDefaultDomain(DefaultDomain): {
      assert std.isString(DefaultDomain) : 'DefaultDomain must be a string',
      Properties+::: { DefaultDomain: DefaultDomain },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnableBranchAutoDeletion': d.fn('`withEnableBranchAutoDeletion` EnableBranchAutoDeletion ', [d.arg('EnableBranchAutoDeletion', d.T.boolean)]),
    withEnableBranchAutoDeletion(EnableBranchAutoDeletion): {
      assert std.isBoolean(EnableBranchAutoDeletion) : 'EnableBranchAutoDeletion must be a boolean',
      Properties+::: { EnableBranchAutoDeletion: EnableBranchAutoDeletion },
    },
    '#withEnvironmentVariables': d.fn('`withEnvironmentVariables` EnvironmentVariables ', [d.arg('EnvironmentVariables', d.T.array)]),
    withEnvironmentVariables(EnvironmentVariables): {
      assert std.isArray(EnvironmentVariables) : 'EnvironmentVariables must be a array',
      Properties+::: { EnvironmentVariables: EnvironmentVariables },
    },
    '#withIAMServiceRole': d.fn('`withIAMServiceRole` IAMServiceRole ', [d.arg('IAMServiceRole', d.T.string)]),
    withIAMServiceRole(IAMServiceRole): {
      assert std.isString(IAMServiceRole) : 'IAMServiceRole must be a string',
      Properties+::: { IAMServiceRole: IAMServiceRole },
    },
    '#withOauthToken': d.fn('`withOauthToken` OauthToken ', [d.arg('OauthToken', d.T.string)]),
    withOauthToken(OauthToken): {
      assert std.isString(OauthToken) : 'OauthToken must be a string',
      Properties+::: { OauthToken: OauthToken },
    },
    '#withPlatform': d.fn('`withPlatform` Platform ', [d.arg('Platform', d.T.string)]),
    withPlatform(Platform): {
      assert std.isString(Platform) : 'Platform must be a string',
      assert Platform == 'WEB' || Platform == 'WEB_DYNAMIC' || Platform == 'WEB_COMPUTE' : "Platform must be either 'WEB' or 'WEB_DYNAMIC' or 'WEB_COMPUTE'",
      Properties+::: { Platform: Platform },
    },
    '#withRepository': d.fn('`withRepository` Repository ', [d.arg('Repository', d.T.string)]),
    withRepository(Repository): {
      assert std.isString(Repository) : 'Repository must be a string',
      Properties+::: { Repository: Repository },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Branch: {
    '#': d.pkg(
      name='Branch',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Amplify.libsonnet',
      help='The AWS::Amplify::Branch resource creates a new branch within an app.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Amplify::Branch Resource
        * AppId 
        * BranchName 
      |||,
      args=[
        d.arg('AppId', 'd.T.string'),
        d.arg('BranchName', 'd.T.string'),
      ]
    ),
    new(
      AppId,
      BranchName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AppId) : 'AppId must be a string',
        AppId: AppId,
        assert std.isString(BranchName) : 'BranchName must be a string',
        BranchName: BranchName,
      },
      DependsOn:: [],
      Type: 'AWS::Amplify::Branch',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withBasicAuthConfig': d.fn('`withBasicAuthConfig` BasicAuthConfig ', [d.arg('BasicAuthConfig', d.T.object)]),
    withBasicAuthConfig(BasicAuthConfig): {
      assert std.isObject(BasicAuthConfig) : 'BasicAuthConfig must be a object',
      Properties+::: { BasicAuthConfig: BasicAuthConfig },
    },
    '#withBackend': d.fn('`withBackend` Backend ', [d.arg('Backend', d.T.object)]),
    withBackend(Backend): {
      assert std.isObject(Backend) : 'Backend must be a object',
      Properties+::: { Backend: Backend },
    },
    '#withBuildSpec': d.fn('`withBuildSpec` BuildSpec ', [d.arg('BuildSpec', d.T.string)]),
    withBuildSpec(BuildSpec): {
      assert std.isString(BuildSpec) : 'BuildSpec must be a string',
      Properties+::: { BuildSpec: BuildSpec },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnableAutoBuild': d.fn('`withEnableAutoBuild` EnableAutoBuild ', [d.arg('EnableAutoBuild', d.T.boolean)]),
    withEnableAutoBuild(EnableAutoBuild): {
      assert std.isBoolean(EnableAutoBuild) : 'EnableAutoBuild must be a boolean',
      Properties+::: { EnableAutoBuild: EnableAutoBuild },
    },
    '#withEnablePerformanceMode': d.fn('`withEnablePerformanceMode` EnablePerformanceMode ', [d.arg('EnablePerformanceMode', d.T.boolean)]),
    withEnablePerformanceMode(EnablePerformanceMode): {
      assert std.isBoolean(EnablePerformanceMode) : 'EnablePerformanceMode must be a boolean',
      Properties+::: { EnablePerformanceMode: EnablePerformanceMode },
    },
    '#withEnablePullRequestPreview': d.fn('`withEnablePullRequestPreview` EnablePullRequestPreview ', [d.arg('EnablePullRequestPreview', d.T.boolean)]),
    withEnablePullRequestPreview(EnablePullRequestPreview): {
      assert std.isBoolean(EnablePullRequestPreview) : 'EnablePullRequestPreview must be a boolean',
      Properties+::: { EnablePullRequestPreview: EnablePullRequestPreview },
    },
    '#withEnvironmentVariables': d.fn('`withEnvironmentVariables` EnvironmentVariables ', [d.arg('EnvironmentVariables', d.T.array)]),
    withEnvironmentVariables(EnvironmentVariables): {
      assert std.isArray(EnvironmentVariables) : 'EnvironmentVariables must be a array',
      Properties+::: { EnvironmentVariables: EnvironmentVariables },
    },
    '#withFramework': d.fn('`withFramework` Framework ', [d.arg('Framework', d.T.string)]),
    withFramework(Framework): {
      assert std.isString(Framework) : 'Framework must be a string',
      Properties+::: { Framework: Framework },
    },
    '#withPullRequestEnvironmentName': d.fn('`withPullRequestEnvironmentName` PullRequestEnvironmentName ', [d.arg('PullRequestEnvironmentName', d.T.string)]),
    withPullRequestEnvironmentName(PullRequestEnvironmentName): {
      assert std.isString(PullRequestEnvironmentName) : 'PullRequestEnvironmentName must be a string',
      Properties+::: { PullRequestEnvironmentName: PullRequestEnvironmentName },
    },
    '#withStage': d.fn('`withStage` Stage ', [d.arg('Stage', d.T.string)]),
    withStage(Stage): {
      assert std.isString(Stage) : 'Stage must be a string',
      assert Stage == 'EXPERIMENTAL' || Stage == 'BETA' || Stage == 'PULL_REQUEST' || Stage == 'PRODUCTION' || Stage == 'DEVELOPMENT' : "Stage must be either 'EXPERIMENTAL' or 'BETA' or 'PULL_REQUEST' or 'PRODUCTION' or 'DEVELOPMENT'",
      Properties+::: { Stage: Stage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Amplify.libsonnet',
      help='The AWS::Amplify::Domain resource allows you to connect a custom domain to your app.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Amplify::Domain Resource
        * AppId 
        * DomainName 
        * SubDomainSettings 
      |||,
      args=[
        d.arg('AppId', 'd.T.string'),
        d.arg('DomainName', 'd.T.string'),
        d.arg('SubDomainSettings', 'd.T.array'),
      ]
    ),
    new(
      AppId,
      DomainName,
      SubDomainSettings,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AppId) : 'AppId must be a string',
        AppId: AppId,
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isArray(SubDomainSettings) : 'SubDomainSettings must be a array',
        SubDomainSettings: SubDomainSettings,
      },
      DependsOn:: [],
      Type: 'AWS::Amplify::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAutoSubDomainCreationPatterns': d.fn('`withAutoSubDomainCreationPatterns` AutoSubDomainCreationPatterns ', [d.arg('AutoSubDomainCreationPatterns', d.T.array)]),
    withAutoSubDomainCreationPatterns(AutoSubDomainCreationPatterns): {
      assert std.isArray(AutoSubDomainCreationPatterns) : 'AutoSubDomainCreationPatterns must be a array',
      Properties+::: { AutoSubDomainCreationPatterns: AutoSubDomainCreationPatterns },
    },
    '#withAutoSubDomainIAMRole': d.fn('`withAutoSubDomainIAMRole` AutoSubDomainIAMRole ', [d.arg('AutoSubDomainIAMRole', d.T.string)]),
    withAutoSubDomainIAMRole(AutoSubDomainIAMRole): {
      assert std.isString(AutoSubDomainIAMRole) : 'AutoSubDomainIAMRole must be a string',
      Properties+::: { AutoSubDomainIAMRole: AutoSubDomainIAMRole },
    },
    '#withCertificateRecord': d.fn('`withCertificateRecord` CertificateRecord ', [d.arg('CertificateRecord', d.T.string)]),
    withCertificateRecord(CertificateRecord): {
      assert std.isString(CertificateRecord) : 'CertificateRecord must be a string',
      Properties+::: { CertificateRecord: CertificateRecord },
    },
    '#withCertificate': d.fn('`withCertificate` Certificate ', [d.arg('Certificate', d.T.object)]),
    withCertificate(Certificate): {
      assert std.isObject(Certificate) : 'Certificate must be a object',
      Properties+::: { Certificate: Certificate },
    },
    '#withCertificateSettings': d.fn('`withCertificateSettings` CertificateSettings ', [d.arg('CertificateSettings', d.T.object)]),
    withCertificateSettings(CertificateSettings): {
      assert std.isObject(CertificateSettings) : 'CertificateSettings must be a object',
      Properties+::: { CertificateSettings: CertificateSettings },
    },
    '#withDomainStatus': d.fn('`withDomainStatus` DomainStatus ', [d.arg('DomainStatus', d.T.string)]),
    withDomainStatus(DomainStatus): {
      assert std.isString(DomainStatus) : 'DomainStatus must be a string',
      Properties+::: { DomainStatus: DomainStatus },
    },
    '#withUpdateStatus': d.fn('`withUpdateStatus` UpdateStatus ', [d.arg('UpdateStatus', d.T.string)]),
    withUpdateStatus(UpdateStatus): {
      assert std.isString(UpdateStatus) : 'UpdateStatus must be a string',
      Properties+::: { UpdateStatus: UpdateStatus },
    },
    '#withEnableAutoSubDomain': d.fn('`withEnableAutoSubDomain` EnableAutoSubDomain ', [d.arg('EnableAutoSubDomain', d.T.boolean)]),
    withEnableAutoSubDomain(EnableAutoSubDomain): {
      assert std.isBoolean(EnableAutoSubDomain) : 'EnableAutoSubDomain must be a boolean',
      Properties+::: { EnableAutoSubDomain: EnableAutoSubDomain },
    },
    '#withStatusReason': d.fn('`withStatusReason` StatusReason ', [d.arg('StatusReason', d.T.string)]),
    withStatusReason(StatusReason): {
      assert std.isString(StatusReason) : 'StatusReason must be a string',
      Properties+::: { StatusReason: StatusReason },
    },
  },
}
