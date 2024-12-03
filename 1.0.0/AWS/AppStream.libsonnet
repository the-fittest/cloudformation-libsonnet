local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AppBlock: {
    '#': d.pkg(
      name='AppBlock',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::AppBlock',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::AppBlock Resource
        * Name 
        * SourceS3Location 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('SourceS3Location', 'd.T.object'),
      ]
    ),
    new(
      Name,
      SourceS3Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(SourceS3Location) : 'SourceS3Location must be a object',
        SourceS3Location: SourceS3Location,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::AppBlock',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withSetupScriptDetails': d.fn('`withSetupScriptDetails` SetupScriptDetails ', [d.arg('SetupScriptDetails', d.T.object)]),
    withSetupScriptDetails(SetupScriptDetails): {
      assert std.isObject(SetupScriptDetails) : 'SetupScriptDetails must be a object',
      Properties+::: { SetupScriptDetails: SetupScriptDetails },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withPackagingType': d.fn('`withPackagingType` PackagingType ', [d.arg('PackagingType', d.T.string)]),
    withPackagingType(PackagingType): {
      assert std.isString(PackagingType) : 'PackagingType must be a string',
      Properties+::: { PackagingType: PackagingType },
    },
    '#withPostSetupScriptDetails': d.fn('`withPostSetupScriptDetails` PostSetupScriptDetails ', [d.arg('PostSetupScriptDetails', d.T.object)]),
    withPostSetupScriptDetails(PostSetupScriptDetails): {
      assert std.isObject(PostSetupScriptDetails) : 'PostSetupScriptDetails must be a object',
      Properties+::: { PostSetupScriptDetails: PostSetupScriptDetails },
    },
  },
  AppBlockBuilder: {
    '#': d.pkg(
      name='AppBlockBuilder',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::AppBlockBuilder.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::AppBlockBuilder Resource
        * Name 
        * Platform 
        * InstanceType 
        * VpcConfig 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Platform', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
        d.arg('VpcConfig', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Platform,
      InstanceType,
      VpcConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Platform) : 'Platform must be a string',
        Platform: Platform,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
        VpcConfig: VpcConfig,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::AppBlockBuilder',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withAccessEndpoints': d.fn('`withAccessEndpoints` AccessEndpoints ', [d.arg('AccessEndpoints', d.T.array)]),
    withAccessEndpoints(AccessEndpoints): {
      assert std.isArray(AccessEndpoints) : 'AccessEndpoints must be a array',
      Properties+::: { AccessEndpoints: AccessEndpoints },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEnableDefaultInternetAccess': d.fn('`withEnableDefaultInternetAccess` EnableDefaultInternetAccess ', [d.arg('EnableDefaultInternetAccess', d.T.boolean)]),
    withEnableDefaultInternetAccess(EnableDefaultInternetAccess): {
      assert std.isBoolean(EnableDefaultInternetAccess) : 'EnableDefaultInternetAccess must be a boolean',
      Properties+::: { EnableDefaultInternetAccess: EnableDefaultInternetAccess },
    },
    '#withIamRoleArn': d.fn('`withIamRoleArn` IamRoleArn ', [d.arg('IamRoleArn', d.T.string)]),
    withIamRoleArn(IamRoleArn): {
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      Properties+::: { IamRoleArn: IamRoleArn },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withAppBlockArns': d.fn('`withAppBlockArns` AppBlockArns ', [d.arg('AppBlockArns', d.T.array)]),
    withAppBlockArns(AppBlockArns): {
      assert std.isArray(AppBlockArns) : 'AppBlockArns must be a array',
      Properties+::: { AppBlockArns: AppBlockArns },
    },
  },
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::Application Resource
        * Name 
        * IconS3Location 
        * LaunchPath 
        * Platforms 
        * InstanceFamilies 
        * AppBlockArn 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('IconS3Location', 'd.T.object'),
        d.arg('LaunchPath', 'd.T.string'),
        d.arg('Platforms', 'd.T.array'),
        d.arg('InstanceFamilies', 'd.T.array'),
        d.arg('AppBlockArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      IconS3Location,
      LaunchPath,
      Platforms,
      InstanceFamilies,
      AppBlockArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(IconS3Location) : 'IconS3Location must be a object',
        IconS3Location: IconS3Location,
        assert std.isString(LaunchPath) : 'LaunchPath must be a string',
        LaunchPath: LaunchPath,
        assert std.isArray(Platforms) : 'Platforms must be a array',
        Platforms: Platforms,
        assert std.isArray(InstanceFamilies) : 'InstanceFamilies must be a array',
        InstanceFamilies: InstanceFamilies,
        assert std.isString(AppBlockArn) : 'AppBlockArn must be a string',
        AppBlockArn: AppBlockArn,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLaunchParameters': d.fn('`withLaunchParameters` LaunchParameters ', [d.arg('LaunchParameters', d.T.string)]),
    withLaunchParameters(LaunchParameters): {
      assert std.isString(LaunchParameters) : 'LaunchParameters must be a string',
      Properties+::: { LaunchParameters: LaunchParameters },
    },
    '#withWorkingDirectory': d.fn('`withWorkingDirectory` WorkingDirectory ', [d.arg('WorkingDirectory', d.T.string)]),
    withWorkingDirectory(WorkingDirectory): {
      assert std.isString(WorkingDirectory) : 'WorkingDirectory must be a string',
      Properties+::: { WorkingDirectory: WorkingDirectory },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAttributesToDelete': d.fn('`withAttributesToDelete` AttributesToDelete ', [d.arg('AttributesToDelete', d.T.array)]),
    withAttributesToDelete(AttributesToDelete): {
      assert std.isArray(AttributesToDelete) : 'AttributesToDelete must be a array',
      Properties+::: { AttributesToDelete: AttributesToDelete },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
  },
  ApplicationEntitlementAssociation: {
    '#': d.pkg(
      name='ApplicationEntitlementAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::ApplicationEntitlementAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::ApplicationEntitlementAssociation Resource
        * StackName 
        * EntitlementName 
        * ApplicationIdentifier 
      |||,
      args=[
        d.arg('StackName', 'd.T.string'),
        d.arg('EntitlementName', 'd.T.string'),
        d.arg('ApplicationIdentifier', 'd.T.string'),
      ]
    ),
    new(
      StackName,
      EntitlementName,
      ApplicationIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StackName) : 'StackName must be a string',
        StackName: StackName,
        assert std.isString(EntitlementName) : 'EntitlementName must be a string',
        EntitlementName: EntitlementName,
        assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
        ApplicationIdentifier: ApplicationIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::ApplicationEntitlementAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  ApplicationFleetAssociation: {
    '#': d.pkg(
      name='ApplicationFleetAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::ApplicationFleetAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::ApplicationFleetAssociation Resource
        * FleetName 
        * ApplicationArn 
      |||,
      args=[
        d.arg('FleetName', 'd.T.string'),
        d.arg('ApplicationArn', 'd.T.string'),
      ]
    ),
    new(
      FleetName,
      ApplicationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FleetName) : 'FleetName must be a string',
        FleetName: FleetName,
        assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
        ApplicationArn: ApplicationArn,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::ApplicationFleetAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  DirectoryConfig: {
    '#': d.pkg(
      name='DirectoryConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::DirectoryConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::DirectoryConfig Resource
        * DirectoryName 
        * OrganizationalUnitDistinguishedNames 
        * ServiceAccountCredentials 
      |||,
      args=[
        d.arg('DirectoryName', 'd.T.string'),
        d.arg('OrganizationalUnitDistinguishedNames', 'd.T.array'),
        d.arg('ServiceAccountCredentials', 'd.T.object'),
      ]
    ),
    new(
      DirectoryName,
      OrganizationalUnitDistinguishedNames,
      ServiceAccountCredentials,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DirectoryName) : 'DirectoryName must be a string',
        DirectoryName: DirectoryName,
        assert std.isArray(OrganizationalUnitDistinguishedNames) : 'OrganizationalUnitDistinguishedNames must be a array',
        OrganizationalUnitDistinguishedNames: OrganizationalUnitDistinguishedNames,
        assert std.isObject(ServiceAccountCredentials) : 'ServiceAccountCredentials must be a object',
        ServiceAccountCredentials: ServiceAccountCredentials,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::DirectoryConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCertificateBasedAuthProperties': d.fn('`withCertificateBasedAuthProperties` CertificateBasedAuthProperties ', [d.arg('CertificateBasedAuthProperties', d.T.object)]),
    withCertificateBasedAuthProperties(CertificateBasedAuthProperties): {
      assert std.isObject(CertificateBasedAuthProperties) : 'CertificateBasedAuthProperties must be a object',
      Properties+::: { CertificateBasedAuthProperties: CertificateBasedAuthProperties },
    },
  },
  Entitlement: {
    '#': d.pkg(
      name='Entitlement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::Entitlement',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::Entitlement Resource
        * Name 
        * StackName 
        * AppVisibility 
        * Attributes 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('StackName', 'd.T.string'),
        d.arg('AppVisibility', 'd.T.string'),
        d.arg('Attributes', 'd.T.array'),
      ]
    ),
    new(
      Name,
      StackName,
      AppVisibility,
      Attributes,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(StackName) : 'StackName must be a string',
        StackName: StackName,
        assert std.isString(AppVisibility) : 'AppVisibility must be a string',
        AppVisibility: AppVisibility,
        assert std.isArray(Attributes) : 'Attributes must be a array',
        Attributes: Attributes,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::Entitlement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  Fleet: {
    '#': d.pkg(
      name='Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::Fleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::Fleet Resource
        * InstanceType 
        * Name 
      |||,
      args=[
        d.arg('InstanceType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      InstanceType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::Fleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withComputeCapacity': d.fn('`withComputeCapacity` ComputeCapacity ', [d.arg('ComputeCapacity', d.T.object)]),
    withComputeCapacity(ComputeCapacity): {
      assert std.isObject(ComputeCapacity) : 'ComputeCapacity must be a object',
      Properties+::: { ComputeCapacity: ComputeCapacity },
    },
    '#withPlatform': d.fn('`withPlatform` Platform ', [d.arg('Platform', d.T.string)]),
    withPlatform(Platform): {
      assert std.isString(Platform) : 'Platform must be a string',
      Properties+::: { Platform: Platform },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withFleetType': d.fn('`withFleetType` FleetType ', [d.arg('FleetType', d.T.string)]),
    withFleetType(FleetType): {
      assert std.isString(FleetType) : 'FleetType must be a string',
      Properties+::: { FleetType: FleetType },
    },
    '#withEnableDefaultInternetAccess': d.fn('`withEnableDefaultInternetAccess` EnableDefaultInternetAccess ', [d.arg('EnableDefaultInternetAccess', d.T.boolean)]),
    withEnableDefaultInternetAccess(EnableDefaultInternetAccess): {
      assert std.isBoolean(EnableDefaultInternetAccess) : 'EnableDefaultInternetAccess must be a boolean',
      Properties+::: { EnableDefaultInternetAccess: EnableDefaultInternetAccess },
    },
    '#withDomainJoinInfo': d.fn('`withDomainJoinInfo` DomainJoinInfo ', [d.arg('DomainJoinInfo', d.T.object)]),
    withDomainJoinInfo(DomainJoinInfo): {
      assert std.isObject(DomainJoinInfo) : 'DomainJoinInfo must be a object',
      Properties+::: { DomainJoinInfo: DomainJoinInfo },
    },
    '#withSessionScriptS3Location': d.fn('`withSessionScriptS3Location` SessionScriptS3Location ', [d.arg('SessionScriptS3Location', d.T.object)]),
    withSessionScriptS3Location(SessionScriptS3Location): {
      assert std.isObject(SessionScriptS3Location) : 'SessionScriptS3Location must be a object',
      Properties+::: { SessionScriptS3Location: SessionScriptS3Location },
    },
    '#withImageName': d.fn('`withImageName` ImageName ', [d.arg('ImageName', d.T.string)]),
    withImageName(ImageName): {
      assert std.isString(ImageName) : 'ImageName must be a string',
      Properties+::: { ImageName: ImageName },
    },
    '#withMaxUserDurationInSeconds': d.fn('`withMaxUserDurationInSeconds` MaxUserDurationInSeconds ', [d.arg('MaxUserDurationInSeconds', d.T.integer)]),
    withMaxUserDurationInSeconds(MaxUserDurationInSeconds): {
      assert std.isNumber(MaxUserDurationInSeconds) : 'MaxUserDurationInSeconds must be a integer',
      Properties+::: { MaxUserDurationInSeconds: MaxUserDurationInSeconds },
    },
    '#withIdleDisconnectTimeoutInSeconds': d.fn('`withIdleDisconnectTimeoutInSeconds` IdleDisconnectTimeoutInSeconds ', [d.arg('IdleDisconnectTimeoutInSeconds', d.T.integer)]),
    withIdleDisconnectTimeoutInSeconds(IdleDisconnectTimeoutInSeconds): {
      assert std.isNumber(IdleDisconnectTimeoutInSeconds) : 'IdleDisconnectTimeoutInSeconds must be a integer',
      Properties+::: { IdleDisconnectTimeoutInSeconds: IdleDisconnectTimeoutInSeconds },
    },
    '#withUsbDeviceFilterStrings': d.fn('`withUsbDeviceFilterStrings` UsbDeviceFilterStrings ', [d.arg('UsbDeviceFilterStrings', d.T.array)]),
    withUsbDeviceFilterStrings(UsbDeviceFilterStrings): {
      assert std.isArray(UsbDeviceFilterStrings) : 'UsbDeviceFilterStrings must be a array',
      Properties+::: { UsbDeviceFilterStrings: UsbDeviceFilterStrings },
    },
    '#withDisconnectTimeoutInSeconds': d.fn('`withDisconnectTimeoutInSeconds` DisconnectTimeoutInSeconds ', [d.arg('DisconnectTimeoutInSeconds', d.T.integer)]),
    withDisconnectTimeoutInSeconds(DisconnectTimeoutInSeconds): {
      assert std.isNumber(DisconnectTimeoutInSeconds) : 'DisconnectTimeoutInSeconds must be a integer',
      Properties+::: { DisconnectTimeoutInSeconds: DisconnectTimeoutInSeconds },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withStreamView': d.fn('`withStreamView` StreamView ', [d.arg('StreamView', d.T.string)]),
    withStreamView(StreamView): {
      assert std.isString(StreamView) : 'StreamView must be a string',
      Properties+::: { StreamView: StreamView },
    },
    '#withIamRoleArn': d.fn('`withIamRoleArn` IamRoleArn ', [d.arg('IamRoleArn', d.T.string)]),
    withIamRoleArn(IamRoleArn): {
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      Properties+::: { IamRoleArn: IamRoleArn },
    },
    '#withMaxSessionsPerInstance': d.fn('`withMaxSessionsPerInstance` MaxSessionsPerInstance ', [d.arg('MaxSessionsPerInstance', d.T.integer)]),
    withMaxSessionsPerInstance(MaxSessionsPerInstance): {
      assert std.isNumber(MaxSessionsPerInstance) : 'MaxSessionsPerInstance must be a integer',
      Properties+::: { MaxSessionsPerInstance: MaxSessionsPerInstance },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMaxConcurrentSessions': d.fn('`withMaxConcurrentSessions` MaxConcurrentSessions ', [d.arg('MaxConcurrentSessions', d.T.integer)]),
    withMaxConcurrentSessions(MaxConcurrentSessions): {
      assert std.isNumber(MaxConcurrentSessions) : 'MaxConcurrentSessions must be a integer',
      Properties+::: { MaxConcurrentSessions: MaxConcurrentSessions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withImageArn': d.fn('`withImageArn` ImageArn ', [d.arg('ImageArn', d.T.string)]),
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: { ImageArn: ImageArn },
    },
  },
  ImageBuilder: {
    '#': d.pkg(
      name='ImageBuilder',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::ImageBuilder',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::ImageBuilder Resource
        * InstanceType 
        * Name 
      |||,
      args=[
        d.arg('InstanceType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      InstanceType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::ImageBuilder',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withEnableDefaultInternetAccess': d.fn('`withEnableDefaultInternetAccess` EnableDefaultInternetAccess ', [d.arg('EnableDefaultInternetAccess', d.T.boolean)]),
    withEnableDefaultInternetAccess(EnableDefaultInternetAccess): {
      assert std.isBoolean(EnableDefaultInternetAccess) : 'EnableDefaultInternetAccess must be a boolean',
      Properties+::: { EnableDefaultInternetAccess: EnableDefaultInternetAccess },
    },
    '#withDomainJoinInfo': d.fn('`withDomainJoinInfo` DomainJoinInfo ', [d.arg('DomainJoinInfo', d.T.object)]),
    withDomainJoinInfo(DomainJoinInfo): {
      assert std.isObject(DomainJoinInfo) : 'DomainJoinInfo must be a object',
      Properties+::: { DomainJoinInfo: DomainJoinInfo },
    },
    '#withAppstreamAgentVersion': d.fn('`withAppstreamAgentVersion` AppstreamAgentVersion ', [d.arg('AppstreamAgentVersion', d.T.string)]),
    withAppstreamAgentVersion(AppstreamAgentVersion): {
      assert std.isString(AppstreamAgentVersion) : 'AppstreamAgentVersion must be a string',
      Properties+::: { AppstreamAgentVersion: AppstreamAgentVersion },
    },
    '#withImageName': d.fn('`withImageName` ImageName ', [d.arg('ImageName', d.T.string)]),
    withImageName(ImageName): {
      assert std.isString(ImageName) : 'ImageName must be a string',
      Properties+::: { ImageName: ImageName },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withIamRoleArn': d.fn('`withIamRoleArn` IamRoleArn ', [d.arg('IamRoleArn', d.T.string)]),
    withIamRoleArn(IamRoleArn): {
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      Properties+::: { IamRoleArn: IamRoleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withStreamingUrl': d.fn('`withStreamingUrl` StreamingUrl ', [d.arg('StreamingUrl', d.T.string)]),
    withStreamingUrl(StreamingUrl): {
      assert std.isString(StreamingUrl) : 'StreamingUrl must be a string',
      Properties+::: { StreamingUrl: StreamingUrl },
    },
    '#withImageArn': d.fn('`withImageArn` ImageArn ', [d.arg('ImageArn', d.T.string)]),
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: { ImageArn: ImageArn },
    },
    '#withAccessEndpoints': d.fn('`withAccessEndpoints` AccessEndpoints ', [d.arg('AccessEndpoints', d.T.array)]),
    withAccessEndpoints(AccessEndpoints): {
      assert std.isArray(AccessEndpoints) : 'AccessEndpoints must be a array',
      Properties+::: { AccessEndpoints: AccessEndpoints },
    },
  },
  Stack: {
    '#': d.pkg(
      name='Stack',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::Stack',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::Stack Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AppStream::Stack',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withStorageConnectors': d.fn('`withStorageConnectors` StorageConnectors ', [d.arg('StorageConnectors', d.T.array)]),
    withStorageConnectors(StorageConnectors): {
      assert std.isArray(StorageConnectors) : 'StorageConnectors must be a array',
      Properties+::: { StorageConnectors: StorageConnectors },
    },
    '#withDeleteStorageConnectors': d.fn('`withDeleteStorageConnectors` DeleteStorageConnectors ', [d.arg('DeleteStorageConnectors', d.T.boolean)]),
    withDeleteStorageConnectors(DeleteStorageConnectors): {
      assert std.isBoolean(DeleteStorageConnectors) : 'DeleteStorageConnectors must be a boolean',
      Properties+::: { DeleteStorageConnectors: DeleteStorageConnectors },
    },
    '#withEmbedHostDomains': d.fn('`withEmbedHostDomains` EmbedHostDomains ', [d.arg('EmbedHostDomains', d.T.array)]),
    withEmbedHostDomains(EmbedHostDomains): {
      assert std.isArray(EmbedHostDomains) : 'EmbedHostDomains must be a array',
      Properties+::: { EmbedHostDomains: EmbedHostDomains },
    },
    '#withUserSettings': d.fn('`withUserSettings` UserSettings ', [d.arg('UserSettings', d.T.array)]),
    withUserSettings(UserSettings): {
      assert std.isArray(UserSettings) : 'UserSettings must be a array',
      Properties+::: { UserSettings: UserSettings },
    },
    '#withAttributesToDelete': d.fn('`withAttributesToDelete` AttributesToDelete ', [d.arg('AttributesToDelete', d.T.array)]),
    withAttributesToDelete(AttributesToDelete): {
      assert std.isArray(AttributesToDelete) : 'AttributesToDelete must be a array',
      Properties+::: { AttributesToDelete: AttributesToDelete },
    },
    '#withRedirectURL': d.fn('`withRedirectURL` RedirectURL ', [d.arg('RedirectURL', d.T.string)]),
    withRedirectURL(RedirectURL): {
      assert std.isString(RedirectURL) : 'RedirectURL must be a string',
      Properties+::: { RedirectURL: RedirectURL },
    },
    '#withStreamingExperienceSettings': d.fn('`withStreamingExperienceSettings` StreamingExperienceSettings ', [d.arg('StreamingExperienceSettings', d.T.object)]),
    withStreamingExperienceSettings(StreamingExperienceSettings): {
      assert std.isObject(StreamingExperienceSettings) : 'StreamingExperienceSettings must be a object',
      Properties+::: { StreamingExperienceSettings: StreamingExperienceSettings },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withFeedbackURL': d.fn('`withFeedbackURL` FeedbackURL ', [d.arg('FeedbackURL', d.T.string)]),
    withFeedbackURL(FeedbackURL): {
      assert std.isString(FeedbackURL) : 'FeedbackURL must be a string',
      Properties+::: { FeedbackURL: FeedbackURL },
    },
    '#withApplicationSettings': d.fn('`withApplicationSettings` ApplicationSettings ', [d.arg('ApplicationSettings', d.T.object)]),
    withApplicationSettings(ApplicationSettings): {
      assert std.isObject(ApplicationSettings) : 'ApplicationSettings must be a object',
      Properties+::: { ApplicationSettings: ApplicationSettings },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
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
    '#withAccessEndpoints': d.fn('`withAccessEndpoints` AccessEndpoints ', [d.arg('AccessEndpoints', d.T.array)]),
    withAccessEndpoints(AccessEndpoints): {
      assert std.isArray(AccessEndpoints) : 'AccessEndpoints must be a array',
      Properties+::: { AccessEndpoints: AccessEndpoints },
    },
  },
  StackFleetAssociation: {
    '#': d.pkg(
      name='StackFleetAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::StackFleetAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::StackFleetAssociation Resource
        * FleetName 
        * StackName 
      |||,
      args=[
        d.arg('FleetName', 'd.T.string'),
        d.arg('StackName', 'd.T.string'),
      ]
    ),
    new(
      FleetName,
      StackName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FleetName) : 'FleetName must be a string',
        FleetName: FleetName,
        assert std.isString(StackName) : 'StackName must be a string',
        StackName: StackName,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::StackFleetAssociation',
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
  StackUserAssociation: {
    '#': d.pkg(
      name='StackUserAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::StackUserAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::StackUserAssociation Resource
        * StackName 
        * UserName 
        * AuthenticationType 
      |||,
      args=[
        d.arg('StackName', 'd.T.string'),
        d.arg('UserName', 'd.T.string'),
        d.arg('AuthenticationType', 'd.T.string'),
      ]
    ),
    new(
      StackName,
      UserName,
      AuthenticationType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StackName) : 'StackName must be a string',
        StackName: StackName,
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
        assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
        AuthenticationType: AuthenticationType,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::StackUserAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSendEmailNotification': d.fn('`withSendEmailNotification` SendEmailNotification ', [d.arg('SendEmailNotification', d.T.boolean)]),
    withSendEmailNotification(SendEmailNotification): {
      assert std.isBoolean(SendEmailNotification) : 'SendEmailNotification must be a boolean',
      Properties+::: { SendEmailNotification: SendEmailNotification },
    },
  },
  User: {
    '#': d.pkg(
      name='User',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppStream.libsonnet',
      help='Resource Type definition for AWS::AppStream::User',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppStream::User Resource
        * UserName 
        * AuthenticationType 
      |||,
      args=[
        d.arg('UserName', 'd.T.string'),
        d.arg('AuthenticationType', 'd.T.string'),
      ]
    ),
    new(
      UserName,
      AuthenticationType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
        assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
        AuthenticationType: AuthenticationType,
      },
      DependsOn:: [],
      Type: 'AWS::AppStream::User',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withFirstName': d.fn('`withFirstName` FirstName ', [d.arg('FirstName', d.T.string)]),
    withFirstName(FirstName): {
      assert std.isString(FirstName) : 'FirstName must be a string',
      Properties+::: { FirstName: FirstName },
    },
    '#withMessageAction': d.fn('`withMessageAction` MessageAction ', [d.arg('MessageAction', d.T.string)]),
    withMessageAction(MessageAction): {
      assert std.isString(MessageAction) : 'MessageAction must be a string',
      Properties+::: { MessageAction: MessageAction },
    },
    '#withLastName': d.fn('`withLastName` LastName ', [d.arg('LastName', d.T.string)]),
    withLastName(LastName): {
      assert std.isString(LastName) : 'LastName must be a string',
      Properties+::: { LastName: LastName },
    },
  },
}
