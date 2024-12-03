local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  App: {
    '#': d.pkg(
      name='App',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::App',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::App Resource
        * AppName The name of the app.
        * AppType The type of app.
        * DomainId The domain ID.
        * UserProfileName The user profile name.
      |||,
      args=[
        d.arg('AppName', 'd.T.string'),
        d.arg('AppType', 'd.T.string'),
        d.arg('DomainId', 'd.T.string'),
        d.arg('UserProfileName', 'd.T.string'),
      ]
    ),
    new(
      AppName,
      AppType,
      DomainId,
      UserProfileName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AppName) : 'AppName must be a string',
        AppName: AppName,
        assert std.isString(AppType) : 'AppType must be a string',
        assert AppType == 'JupyterServer' || AppType == 'KernelGateway' || AppType == 'RStudioServerPro' || AppType == 'RSessionGateway' || AppType == 'Canvas' : "AppType must be either 'JupyterServer' or 'KernelGateway' or 'RStudioServerPro' or 'RSessionGateway' or 'Canvas'",
        AppType: AppType,
        assert std.isString(DomainId) : 'DomainId must be a string',
        DomainId: DomainId,
        assert std.isString(UserProfileName) : 'UserProfileName must be a string',
        UserProfileName: UserProfileName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::App',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAppArn': d.fn('`withAppArn` AppArn ', [d.arg('AppArn', d.T.string)]),
    withAppArn(AppArn): {
      assert std.isString(AppArn) : 'AppArn must be a string',
      Properties+::: { AppArn: AppArn },
    },
    '#withResourceSpec': d.fn('`withResourceSpec` ResourceSpec ', [d.arg('ResourceSpec', d.T.object)]),
    withResourceSpec(ResourceSpec): {
      assert std.isObject(ResourceSpec) : 'ResourceSpec must be a object',
      Properties+::: { ResourceSpec: ResourceSpec },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AppImageConfig: {
    '#': d.pkg(
      name='AppImageConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::AppImageConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::AppImageConfig Resource
        * AppImageConfigName The Name of the AppImageConfig.
      |||,
      args=[
        d.arg('AppImageConfigName', 'd.T.string'),
      ]
    ),
    new(
      AppImageConfigName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AppImageConfigName) : 'AppImageConfigName must be a string',
        AppImageConfigName: AppImageConfigName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::AppImageConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAppImageConfigArn': d.fn('`withAppImageConfigArn` AppImageConfigArn ', [d.arg('AppImageConfigArn', d.T.string)]),
    withAppImageConfigArn(AppImageConfigArn): {
      assert std.isString(AppImageConfigArn) : 'AppImageConfigArn must be a string',
      Properties+::: { AppImageConfigArn: AppImageConfigArn },
    },
    '#withKernelGatewayImageConfig': d.fn('`withKernelGatewayImageConfig` KernelGatewayImageConfig ', [d.arg('KernelGatewayImageConfig', d.T.object)]),
    withKernelGatewayImageConfig(KernelGatewayImageConfig): {
      assert std.isObject(KernelGatewayImageConfig) : 'KernelGatewayImageConfig must be a object',
      Properties+::: { KernelGatewayImageConfig: KernelGatewayImageConfig },
    },
    '#withJupyterLabAppImageConfig': d.fn('`withJupyterLabAppImageConfig` JupyterLabAppImageConfig ', [d.arg('JupyterLabAppImageConfig', d.T.object)]),
    withJupyterLabAppImageConfig(JupyterLabAppImageConfig): {
      assert std.isObject(JupyterLabAppImageConfig) : 'JupyterLabAppImageConfig must be a object',
      Properties+::: { JupyterLabAppImageConfig: JupyterLabAppImageConfig },
    },
    '#withCodeEditorAppImageConfig': d.fn('`withCodeEditorAppImageConfig` CodeEditorAppImageConfig ', [d.arg('CodeEditorAppImageConfig', d.T.object)]),
    withCodeEditorAppImageConfig(CodeEditorAppImageConfig): {
      assert std.isObject(CodeEditorAppImageConfig) : 'CodeEditorAppImageConfig must be a object',
      Properties+::: { CodeEditorAppImageConfig: CodeEditorAppImageConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Cluster Resource
        * InstanceGroups 
      |||,
      args=[
        d.arg('InstanceGroups', 'd.T.array'),
      ]
    ),
    new(
      InstanceGroups,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(InstanceGroups) : 'InstanceGroups must be a array',
        InstanceGroups: InstanceGroups,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClusterName': d.fn('`withClusterName` ClusterName ', [d.arg('ClusterName', d.T.string)]),
    withClusterName(ClusterName): {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      Properties+::: { ClusterName: ClusterName },
    },
    '#withClusterArn': d.fn('`withClusterArn` ClusterArn ', [d.arg('ClusterArn', d.T.string)]),
    withClusterArn(ClusterArn): {
      assert std.isString(ClusterArn) : 'ClusterArn must be a string',
      Properties+::: { ClusterArn: ClusterArn },
    },
    '#withClusterStatus': d.fn('`withClusterStatus` ClusterStatus ', [d.arg('ClusterStatus', d.T.string)]),
    withClusterStatus(ClusterStatus): {
      assert std.isString(ClusterStatus) : 'ClusterStatus must be a string',
      assert ClusterStatus == 'Creating' || ClusterStatus == 'Deleting' || ClusterStatus == 'Failed' || ClusterStatus == 'InService' || ClusterStatus == 'RollingBack' || ClusterStatus == 'SystemUpdating' || ClusterStatus == 'Updating' : "ClusterStatus must be either 'Creating' or 'Deleting' or 'Failed' or 'InService' or 'RollingBack' or 'SystemUpdating' or 'Updating'",
      Properties+::: { ClusterStatus: ClusterStatus },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withFailureMessage': d.fn('`withFailureMessage` FailureMessage ', [d.arg('FailureMessage', d.T.string)]),
    withFailureMessage(FailureMessage): {
      assert std.isString(FailureMessage) : 'FailureMessage must be a string',
      Properties+::: { FailureMessage: FailureMessage },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withOrchestrator': d.fn('`withOrchestrator` Orchestrator ', [d.arg('Orchestrator', d.T.object)]),
    withOrchestrator(Orchestrator): {
      assert std.isObject(Orchestrator) : 'Orchestrator must be a object',
      Properties+::: { Orchestrator: Orchestrator },
    },
    '#withNodeRecovery': d.fn('`withNodeRecovery` NodeRecovery ', [d.arg('NodeRecovery', d.T.string)]),
    withNodeRecovery(NodeRecovery): {
      assert std.isString(NodeRecovery) : 'NodeRecovery must be a string',
      assert NodeRecovery == 'Automatic' || NodeRecovery == 'None' : "NodeRecovery must be either 'Automatic' or 'None'",
      Properties+::: { NodeRecovery: NodeRecovery },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  CodeRepository: {
    '#': d.pkg(
      name='CodeRepository',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::CodeRepository',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::CodeRepository Resource
        * GitConfig 
      |||,
      args=[
        d.arg('GitConfig', 'd.T.object'),
      ]
    ),
    new(
      GitConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(GitConfig) : 'GitConfig must be a object',
        GitConfig: GitConfig,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::CodeRepository',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCodeRepositoryName': d.fn('`withCodeRepositoryName` CodeRepositoryName ', [d.arg('CodeRepositoryName', d.T.string)]),
    withCodeRepositoryName(CodeRepositoryName): {
      assert std.isString(CodeRepositoryName) : 'CodeRepositoryName must be a string',
      Properties+::: { CodeRepositoryName: CodeRepositoryName },
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
  },
  DataQualityJobDefinition: {
    '#': d.pkg(
      name='DataQualityJobDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::DataQualityJobDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::DataQualityJobDefinition Resource
        * DataQualityAppSpecification 
        * DataQualityJobInput 
        * DataQualityJobOutputConfig 
        * JobResources 
        * RoleArn The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
      |||,
      args=[
        d.arg('DataQualityAppSpecification', 'd.T.object'),
        d.arg('DataQualityJobInput', 'd.T.object'),
        d.arg('DataQualityJobOutputConfig', 'd.T.object'),
        d.arg('JobResources', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      DataQualityAppSpecification,
      DataQualityJobInput,
      DataQualityJobOutputConfig,
      JobResources,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DataQualityAppSpecification) : 'DataQualityAppSpecification must be a object',
        DataQualityAppSpecification: DataQualityAppSpecification,
        assert std.isObject(DataQualityJobInput) : 'DataQualityJobInput must be a object',
        DataQualityJobInput: DataQualityJobInput,
        assert std.isObject(DataQualityJobOutputConfig) : 'DataQualityJobOutputConfig must be a object',
        DataQualityJobOutputConfig: DataQualityJobOutputConfig,
        assert std.isObject(JobResources) : 'JobResources must be a object',
        JobResources: JobResources,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::DataQualityJobDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withJobDefinitionArn': d.fn('`withJobDefinitionArn` JobDefinitionArn ', [d.arg('JobDefinitionArn', d.T.string)]),
    withJobDefinitionArn(JobDefinitionArn): {
      assert std.isString(JobDefinitionArn) : 'JobDefinitionArn must be a string',
      Properties+::: { JobDefinitionArn: JobDefinitionArn },
    },
    '#withJobDefinitionName': d.fn('`withJobDefinitionName` JobDefinitionName ', [d.arg('JobDefinitionName', d.T.string)]),
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: { JobDefinitionName: JobDefinitionName },
    },
    '#withDataQualityBaselineConfig': d.fn('`withDataQualityBaselineConfig` DataQualityBaselineConfig ', [d.arg('DataQualityBaselineConfig', d.T.object)]),
    withDataQualityBaselineConfig(DataQualityBaselineConfig): {
      assert std.isObject(DataQualityBaselineConfig) : 'DataQualityBaselineConfig must be a object',
      Properties+::: { DataQualityBaselineConfig: DataQualityBaselineConfig },
    },
    '#withNetworkConfig': d.fn('`withNetworkConfig` NetworkConfig ', [d.arg('NetworkConfig', d.T.object)]),
    withNetworkConfig(NetworkConfig): {
      assert std.isObject(NetworkConfig) : 'NetworkConfig must be a object',
      Properties+::: { NetworkConfig: NetworkConfig },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withStoppingCondition': d.fn('`withStoppingCondition` StoppingCondition ', [d.arg('StoppingCondition', d.T.object)]),
    withStoppingCondition(StoppingCondition): {
      assert std.isObject(StoppingCondition) : 'StoppingCondition must be a object',
      Properties+::: { StoppingCondition: StoppingCondition },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  Device: {
    '#': d.pkg(
      name='Device',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource schema for AWS::SageMaker::Device',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Device Resource
        * DeviceFleetName The name of the edge device fleet
      |||,
      args=[
        d.arg('DeviceFleetName', 'd.T.string'),
      ]
    ),
    new(
      DeviceFleetName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeviceFleetName) : 'DeviceFleetName must be a string',
        DeviceFleetName: DeviceFleetName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Device',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDevice': d.fn('`withDevice` Device ', [d.arg('Device', d.T.object)]),
    withDevice(Device): {
      assert std.isObject(Device) : 'Device must be a object',
      Properties+::: { Device: Device },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DeviceFleet: {
    '#': d.pkg(
      name='DeviceFleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource schema for AWS::SageMaker::DeviceFleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::DeviceFleet Resource
        * DeviceFleetName The name of the edge device fleet
        * OutputConfig S3 bucket and an ecryption key id (if available) to store outputs for the fleet
        * RoleArn Role associated with the device fleet
      |||,
      args=[
        d.arg('DeviceFleetName', 'd.T.string'),
        d.arg('OutputConfig', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      DeviceFleetName,
      OutputConfig,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeviceFleetName) : 'DeviceFleetName must be a string',
        DeviceFleetName: DeviceFleetName,
        assert std.isObject(OutputConfig) : 'OutputConfig must be a object',
        OutputConfig: OutputConfig,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::DeviceFleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Domain',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Domain Resource
        * AuthMode The mode of authentication that members use to access the domain.
        * DefaultUserSettings The default user settings.
        * DomainName A name for the domain.
        * SubnetIds The VPC subnets that Studio uses for communication.
        * VpcId The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
      |||,
      args=[
        d.arg('AuthMode', 'd.T.string'),
        d.arg('DefaultUserSettings', 'd.T.object'),
        d.arg('DomainName', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('VpcId', 'd.T.string'),
      ]
    ),
    new(
      AuthMode,
      DefaultUserSettings,
      DomainName,
      SubnetIds,
      VpcId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AuthMode) : 'AuthMode must be a string',
        assert AuthMode == 'SSO' || AuthMode == 'IAM' : "AuthMode must be either 'SSO' or 'IAM'",
        AuthMode: AuthMode,
        assert std.isObject(DefaultUserSettings) : 'DefaultUserSettings must be a object',
        DefaultUserSettings: DefaultUserSettings,
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomainArn': d.fn('`withDomainArn` DomainArn ', [d.arg('DomainArn', d.T.string)]),
    withDomainArn(DomainArn): {
      assert std.isString(DomainArn) : 'DomainArn must be a string',
      Properties+::: { DomainArn: DomainArn },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withAppNetworkAccessType': d.fn('`withAppNetworkAccessType` AppNetworkAccessType ', [d.arg('AppNetworkAccessType', d.T.string)]),
    withAppNetworkAccessType(AppNetworkAccessType): {
      assert std.isString(AppNetworkAccessType) : 'AppNetworkAccessType must be a string',
      assert AppNetworkAccessType == 'PublicInternetOnly' || AppNetworkAccessType == 'VpcOnly' : "AppNetworkAccessType must be either 'PublicInternetOnly' or 'VpcOnly'",
      Properties+::: { AppNetworkAccessType: AppNetworkAccessType },
    },
    '#withDefaultSpaceSettings': d.fn('`withDefaultSpaceSettings` DefaultSpaceSettings ', [d.arg('DefaultSpaceSettings', d.T.object)]),
    withDefaultSpaceSettings(DefaultSpaceSettings): {
      assert std.isObject(DefaultSpaceSettings) : 'DefaultSpaceSettings must be a object',
      Properties+::: { DefaultSpaceSettings: DefaultSpaceSettings },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDomainId': d.fn('`withDomainId` DomainId ', [d.arg('DomainId', d.T.string)]),
    withDomainId(DomainId): {
      assert std.isString(DomainId) : 'DomainId must be a string',
      Properties+::: { DomainId: DomainId },
    },
    '#withHomeEfsFileSystemId': d.fn('`withHomeEfsFileSystemId` HomeEfsFileSystemId ', [d.arg('HomeEfsFileSystemId', d.T.string)]),
    withHomeEfsFileSystemId(HomeEfsFileSystemId): {
      assert std.isString(HomeEfsFileSystemId) : 'HomeEfsFileSystemId must be a string',
      Properties+::: { HomeEfsFileSystemId: HomeEfsFileSystemId },
    },
    '#withSingleSignOnManagedApplicationInstanceId': d.fn('`withSingleSignOnManagedApplicationInstanceId` SingleSignOnManagedApplicationInstanceId ', [d.arg('SingleSignOnManagedApplicationInstanceId', d.T.string)]),
    withSingleSignOnManagedApplicationInstanceId(SingleSignOnManagedApplicationInstanceId): {
      assert std.isString(SingleSignOnManagedApplicationInstanceId) : 'SingleSignOnManagedApplicationInstanceId must be a string',
      Properties+::: { SingleSignOnManagedApplicationInstanceId: SingleSignOnManagedApplicationInstanceId },
    },
    '#withSingleSignOnApplicationArn': d.fn('`withSingleSignOnApplicationArn` SingleSignOnApplicationArn ', [d.arg('SingleSignOnApplicationArn', d.T.string)]),
    withSingleSignOnApplicationArn(SingleSignOnApplicationArn): {
      assert std.isString(SingleSignOnApplicationArn) : 'SingleSignOnApplicationArn must be a string',
      Properties+::: { SingleSignOnApplicationArn: SingleSignOnApplicationArn },
    },
    '#withDomainSettings': d.fn('`withDomainSettings` DomainSettings ', [d.arg('DomainSettings', d.T.object)]),
    withDomainSettings(DomainSettings): {
      assert std.isObject(DomainSettings) : 'DomainSettings must be a object',
      Properties+::: { DomainSettings: DomainSettings },
    },
    '#withAppSecurityGroupManagement': d.fn('`withAppSecurityGroupManagement` AppSecurityGroupManagement ', [d.arg('AppSecurityGroupManagement', d.T.string)]),
    withAppSecurityGroupManagement(AppSecurityGroupManagement): {
      assert std.isString(AppSecurityGroupManagement) : 'AppSecurityGroupManagement must be a string',
      assert AppSecurityGroupManagement == 'Service' || AppSecurityGroupManagement == 'Customer' : "AppSecurityGroupManagement must be either 'Service' or 'Customer'",
      Properties+::: { AppSecurityGroupManagement: AppSecurityGroupManagement },
    },
    '#withSecurityGroupIdForDomainBoundary': d.fn('`withSecurityGroupIdForDomainBoundary` SecurityGroupIdForDomainBoundary ', [d.arg('SecurityGroupIdForDomainBoundary', d.T.string)]),
    withSecurityGroupIdForDomainBoundary(SecurityGroupIdForDomainBoundary): {
      assert std.isString(SecurityGroupIdForDomainBoundary) : 'SecurityGroupIdForDomainBoundary must be a string',
      Properties+::: { SecurityGroupIdForDomainBoundary: SecurityGroupIdForDomainBoundary },
    },
    '#withTagPropagation': d.fn('`withTagPropagation` TagPropagation ', [d.arg('TagPropagation', d.T.string)]),
    withTagPropagation(TagPropagation): {
      assert std.isString(TagPropagation) : 'TagPropagation must be a string',
      assert TagPropagation == 'ENABLED' || TagPropagation == 'DISABLED' : "TagPropagation must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { TagPropagation: TagPropagation },
    },
  },
  Endpoint: {
    '#': d.pkg(
      name='Endpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Endpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Endpoint Resource
        * EndpointConfigName The name of the endpoint configuration for the SageMaker endpoint. This is a required property.
      |||,
      args=[
        d.arg('EndpointConfigName', 'd.T.string'),
      ]
    ),
    new(
      EndpointConfigName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EndpointConfigName) : 'EndpointConfigName must be a string',
        EndpointConfigName: EndpointConfigName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Endpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeploymentConfig': d.fn('`withDeploymentConfig` DeploymentConfig ', [d.arg('DeploymentConfig', d.T.object)]),
    withDeploymentConfig(DeploymentConfig): {
      assert std.isObject(DeploymentConfig) : 'DeploymentConfig must be a object',
      Properties+::: { DeploymentConfig: DeploymentConfig },
    },
    '#withEndpointArn': d.fn('`withEndpointArn` EndpointArn ', [d.arg('EndpointArn', d.T.string)]),
    withEndpointArn(EndpointArn): {
      assert std.isString(EndpointArn) : 'EndpointArn must be a string',
      Properties+::: { EndpointArn: EndpointArn },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withExcludeRetainedVariantProperties': d.fn('`withExcludeRetainedVariantProperties` ExcludeRetainedVariantProperties ', [d.arg('ExcludeRetainedVariantProperties', d.T.array)]),
    withExcludeRetainedVariantProperties(ExcludeRetainedVariantProperties): {
      assert std.isArray(ExcludeRetainedVariantProperties) : 'ExcludeRetainedVariantProperties must be a array',
      Properties+::: { ExcludeRetainedVariantProperties: ExcludeRetainedVariantProperties },
    },
    '#withRetainAllVariantProperties': d.fn('`withRetainAllVariantProperties` RetainAllVariantProperties ', [d.arg('RetainAllVariantProperties', d.T.boolean)]),
    withRetainAllVariantProperties(RetainAllVariantProperties): {
      assert std.isBoolean(RetainAllVariantProperties) : 'RetainAllVariantProperties must be a boolean',
      Properties+::: { RetainAllVariantProperties: RetainAllVariantProperties },
    },
    '#withRetainDeploymentConfig': d.fn('`withRetainDeploymentConfig` RetainDeploymentConfig ', [d.arg('RetainDeploymentConfig', d.T.boolean)]),
    withRetainDeploymentConfig(RetainDeploymentConfig): {
      assert std.isBoolean(RetainDeploymentConfig) : 'RetainDeploymentConfig must be a boolean',
      Properties+::: { RetainDeploymentConfig: RetainDeploymentConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EndpointConfig: {
    '#': d.pkg(
      name='EndpointConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::EndpointConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::EndpointConfig Resource
        * ProductionVariants 
      |||,
      args=[
        d.arg('ProductionVariants', 'd.T.array'),
      ]
    ),
    new(
      ProductionVariants,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(ProductionVariants) : 'ProductionVariants must be a array',
        ProductionVariants: ProductionVariants,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::EndpointConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withShadowProductionVariants': d.fn('`withShadowProductionVariants` ShadowProductionVariants ', [d.arg('ShadowProductionVariants', d.T.array)]),
    withShadowProductionVariants(ShadowProductionVariants): {
      assert std.isArray(ShadowProductionVariants) : 'ShadowProductionVariants must be a array',
      Properties+::: { ShadowProductionVariants: ShadowProductionVariants },
    },
    '#withDataCaptureConfig': d.fn('`withDataCaptureConfig` DataCaptureConfig ', [d.arg('DataCaptureConfig', d.T.object)]),
    withDataCaptureConfig(DataCaptureConfig): {
      assert std.isObject(DataCaptureConfig) : 'DataCaptureConfig must be a object',
      Properties+::: { DataCaptureConfig: DataCaptureConfig },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withEnableNetworkIsolation': d.fn('`withEnableNetworkIsolation` EnableNetworkIsolation ', [d.arg('EnableNetworkIsolation', d.T.boolean)]),
    withEnableNetworkIsolation(EnableNetworkIsolation): {
      assert std.isBoolean(EnableNetworkIsolation) : 'EnableNetworkIsolation must be a boolean',
      Properties+::: { EnableNetworkIsolation: EnableNetworkIsolation },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withAsyncInferenceConfig': d.fn('`withAsyncInferenceConfig` AsyncInferenceConfig ', [d.arg('AsyncInferenceConfig', d.T.object)]),
    withAsyncInferenceConfig(AsyncInferenceConfig): {
      assert std.isObject(AsyncInferenceConfig) : 'AsyncInferenceConfig must be a object',
      Properties+::: { AsyncInferenceConfig: AsyncInferenceConfig },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withEndpointConfigName': d.fn('`withEndpointConfigName` EndpointConfigName ', [d.arg('EndpointConfigName', d.T.string)]),
    withEndpointConfigName(EndpointConfigName): {
      assert std.isString(EndpointConfigName) : 'EndpointConfigName must be a string',
      Properties+::: { EndpointConfigName: EndpointConfigName },
    },
    '#withExplainerConfig': d.fn('`withExplainerConfig` ExplainerConfig ', [d.arg('ExplainerConfig', d.T.object)]),
    withExplainerConfig(ExplainerConfig): {
      assert std.isObject(ExplainerConfig) : 'ExplainerConfig must be a object',
      Properties+::: { ExplainerConfig: ExplainerConfig },
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
  },
  FeatureGroup: {
    '#': d.pkg(
      name='FeatureGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::FeatureGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::FeatureGroup Resource
        * FeatureGroupName The Name of the FeatureGroup.
        * RecordIdentifierFeatureName The Record Identifier Feature Name.
        * EventTimeFeatureName The Event Time Feature Name.
        * FeatureDefinitions An Array of Feature Definition
      |||,
      args=[
        d.arg('FeatureGroupName', 'd.T.string'),
        d.arg('RecordIdentifierFeatureName', 'd.T.string'),
        d.arg('EventTimeFeatureName', 'd.T.string'),
        d.arg('FeatureDefinitions', 'd.T.array'),
      ]
    ),
    new(
      FeatureGroupName,
      RecordIdentifierFeatureName,
      EventTimeFeatureName,
      FeatureDefinitions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FeatureGroupName) : 'FeatureGroupName must be a string',
        FeatureGroupName: FeatureGroupName,
        assert std.isString(RecordIdentifierFeatureName) : 'RecordIdentifierFeatureName must be a string',
        RecordIdentifierFeatureName: RecordIdentifierFeatureName,
        assert std.isString(EventTimeFeatureName) : 'EventTimeFeatureName must be a string',
        EventTimeFeatureName: EventTimeFeatureName,
        assert std.isArray(FeatureDefinitions) : 'FeatureDefinitions must be a array',
        FeatureDefinitions: FeatureDefinitions,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::FeatureGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOnlineStoreConfig': d.fn('`withOnlineStoreConfig` OnlineStoreConfig ', [d.arg('OnlineStoreConfig', d.T.object)]),
    withOnlineStoreConfig(OnlineStoreConfig): {
      assert std.isObject(OnlineStoreConfig) : 'OnlineStoreConfig must be a object',
      Properties+::: { OnlineStoreConfig: OnlineStoreConfig },
    },
    '#withOfflineStoreConfig': d.fn('`withOfflineStoreConfig` OfflineStoreConfig ', [d.arg('OfflineStoreConfig', d.T.object)]),
    withOfflineStoreConfig(OfflineStoreConfig): {
      assert std.isObject(OfflineStoreConfig) : 'OfflineStoreConfig must be a object',
      Properties+::: { OfflineStoreConfig: OfflineStoreConfig },
    },
    '#withThroughputConfig': d.fn('`withThroughputConfig` ThroughputConfig ', [d.arg('ThroughputConfig', d.T.object)]),
    withThroughputConfig(ThroughputConfig): {
      assert std.isObject(ThroughputConfig) : 'ThroughputConfig must be a object',
      Properties+::: { ThroughputConfig: ThroughputConfig },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withFeatureGroupStatus': d.fn('`withFeatureGroupStatus` FeatureGroupStatus ', [d.arg('FeatureGroupStatus', d.T.string)]),
    withFeatureGroupStatus(FeatureGroupStatus): {
      assert std.isString(FeatureGroupStatus) : 'FeatureGroupStatus must be a string',
      Properties+::: { FeatureGroupStatus: FeatureGroupStatus },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Image: {
    '#': d.pkg(
      name='Image',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Image',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Image Resource
        * ImageName 
        * ImageRoleArn 
      |||,
      args=[
        d.arg('ImageName', 'd.T.string'),
        d.arg('ImageRoleArn', 'd.T.string'),
      ]
    ),
    new(
      ImageName,
      ImageRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ImageName) : 'ImageName must be a string',
        ImageName: ImageName,
        assert std.isString(ImageRoleArn) : 'ImageRoleArn must be a string',
        ImageRoleArn: ImageRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Image',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withImageArn': d.fn('`withImageArn` ImageArn ', [d.arg('ImageArn', d.T.string)]),
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: { ImageArn: ImageArn },
    },
    '#withImageDisplayName': d.fn('`withImageDisplayName` ImageDisplayName ', [d.arg('ImageDisplayName', d.T.string)]),
    withImageDisplayName(ImageDisplayName): {
      assert std.isString(ImageDisplayName) : 'ImageDisplayName must be a string',
      Properties+::: { ImageDisplayName: ImageDisplayName },
    },
    '#withImageDescription': d.fn('`withImageDescription` ImageDescription ', [d.arg('ImageDescription', d.T.string)]),
    withImageDescription(ImageDescription): {
      assert std.isString(ImageDescription) : 'ImageDescription must be a string',
      Properties+::: { ImageDescription: ImageDescription },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ImageVersion: {
    '#': d.pkg(
      name='ImageVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ImageVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ImageVersion Resource
        * ImageName 
        * BaseImage 
      |||,
      args=[
        d.arg('ImageName', 'd.T.string'),
        d.arg('BaseImage', 'd.T.string'),
      ]
    ),
    new(
      ImageName,
      BaseImage,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ImageName) : 'ImageName must be a string',
        ImageName: ImageName,
        assert std.isString(BaseImage) : 'BaseImage must be a string',
        BaseImage: BaseImage,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::ImageVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withImageArn': d.fn('`withImageArn` ImageArn ', [d.arg('ImageArn', d.T.string)]),
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: { ImageArn: ImageArn },
    },
    '#withImageVersionArn': d.fn('`withImageVersionArn` ImageVersionArn ', [d.arg('ImageVersionArn', d.T.string)]),
    withImageVersionArn(ImageVersionArn): {
      assert std.isString(ImageVersionArn) : 'ImageVersionArn must be a string',
      Properties+::: { ImageVersionArn: ImageVersionArn },
    },
    '#withContainerImage': d.fn('`withContainerImage` ContainerImage ', [d.arg('ContainerImage', d.T.string)]),
    withContainerImage(ContainerImage): {
      assert std.isString(ContainerImage) : 'ContainerImage must be a string',
      Properties+::: { ContainerImage: ContainerImage },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.integer)]),
    withVersion(Version): {
      assert std.isNumber(Version) : 'Version must be a integer',
      Properties+::: { Version: Version },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withAliases': d.fn('`withAliases` Aliases ', [d.arg('Aliases', d.T.array)]),
    withAliases(Aliases): {
      assert std.isArray(Aliases) : 'Aliases must be a array',
      Properties+::: { Aliases: Aliases },
    },
    '#withVendorGuidance': d.fn('`withVendorGuidance` VendorGuidance ', [d.arg('VendorGuidance', d.T.string)]),
    withVendorGuidance(VendorGuidance): {
      assert std.isString(VendorGuidance) : 'VendorGuidance must be a string',
      Properties+::: { VendorGuidance: VendorGuidance },
    },
    '#withJobType': d.fn('`withJobType` JobType ', [d.arg('JobType', d.T.string)]),
    withJobType(JobType): {
      assert std.isString(JobType) : 'JobType must be a string',
      Properties+::: { JobType: JobType },
    },
    '#withMLFramework': d.fn('`withMLFramework` MLFramework ', [d.arg('MLFramework', d.T.string)]),
    withMLFramework(MLFramework): {
      assert std.isString(MLFramework) : 'MLFramework must be a string',
      Properties+::: { MLFramework: MLFramework },
    },
    '#withProgrammingLang': d.fn('`withProgrammingLang` ProgrammingLang ', [d.arg('ProgrammingLang', d.T.string)]),
    withProgrammingLang(ProgrammingLang): {
      assert std.isString(ProgrammingLang) : 'ProgrammingLang must be a string',
      Properties+::: { ProgrammingLang: ProgrammingLang },
    },
    '#withProcessor': d.fn('`withProcessor` Processor ', [d.arg('Processor', d.T.string)]),
    withProcessor(Processor): {
      assert std.isString(Processor) : 'Processor must be a string',
      Properties+::: { Processor: Processor },
    },
    '#withHorovod': d.fn('`withHorovod` Horovod ', [d.arg('Horovod', d.T.boolean)]),
    withHorovod(Horovod): {
      assert std.isBoolean(Horovod) : 'Horovod must be a boolean',
      Properties+::: { Horovod: Horovod },
    },
    '#withReleaseNotes': d.fn('`withReleaseNotes` ReleaseNotes ', [d.arg('ReleaseNotes', d.T.string)]),
    withReleaseNotes(ReleaseNotes): {
      assert std.isString(ReleaseNotes) : 'ReleaseNotes must be a string',
      Properties+::: { ReleaseNotes: ReleaseNotes },
    },
  },
  InferenceComponent: {
    '#': d.pkg(
      name='InferenceComponent',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::InferenceComponent',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::InferenceComponent Resource
        * EndpointName 
        * Specification 
      |||,
      args=[
        d.arg('EndpointName', 'd.T.string'),
        d.arg('Specification', 'd.T.object'),
      ]
    ),
    new(
      EndpointName,
      Specification,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EndpointName) : 'EndpointName must be a string',
        EndpointName: EndpointName,
        assert std.isObject(Specification) : 'Specification must be a object',
        Specification: Specification,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::InferenceComponent',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInferenceComponentArn': d.fn('`withInferenceComponentArn` InferenceComponentArn ', [d.arg('InferenceComponentArn', d.T.string)]),
    withInferenceComponentArn(InferenceComponentArn): {
      assert std.isString(InferenceComponentArn) : 'InferenceComponentArn must be a string',
      Properties+::: { InferenceComponentArn: InferenceComponentArn },
    },
    '#withInferenceComponentName': d.fn('`withInferenceComponentName` InferenceComponentName ', [d.arg('InferenceComponentName', d.T.string)]),
    withInferenceComponentName(InferenceComponentName): {
      assert std.isString(InferenceComponentName) : 'InferenceComponentName must be a string',
      Properties+::: { InferenceComponentName: InferenceComponentName },
    },
    '#withEndpointArn': d.fn('`withEndpointArn` EndpointArn ', [d.arg('EndpointArn', d.T.string)]),
    withEndpointArn(EndpointArn): {
      assert std.isString(EndpointArn) : 'EndpointArn must be a string',
      Properties+::: { EndpointArn: EndpointArn },
    },
    '#withVariantName': d.fn('`withVariantName` VariantName ', [d.arg('VariantName', d.T.string)]),
    withVariantName(VariantName): {
      assert std.isString(VariantName) : 'VariantName must be a string',
      Properties+::: { VariantName: VariantName },
    },
    '#withFailureReason': d.fn('`withFailureReason` FailureReason ', [d.arg('FailureReason', d.T.string)]),
    withFailureReason(FailureReason): {
      assert std.isString(FailureReason) : 'FailureReason must be a string',
      Properties+::: { FailureReason: FailureReason },
    },
    '#withRuntimeConfig': d.fn('`withRuntimeConfig` RuntimeConfig ', [d.arg('RuntimeConfig', d.T.object)]),
    withRuntimeConfig(RuntimeConfig): {
      assert std.isObject(RuntimeConfig) : 'RuntimeConfig must be a object',
      Properties+::: { RuntimeConfig: RuntimeConfig },
    },
    '#withInferenceComponentStatus': d.fn('`withInferenceComponentStatus` InferenceComponentStatus ', [d.arg('InferenceComponentStatus', d.T.string)]),
    withInferenceComponentStatus(InferenceComponentStatus): {
      assert std.isString(InferenceComponentStatus) : 'InferenceComponentStatus must be a string',
      Properties+::: { InferenceComponentStatus: InferenceComponentStatus },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  InferenceExperiment: {
    '#': d.pkg(
      name='InferenceExperiment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::InferenceExperiment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::InferenceExperiment Resource
        * Name The name for the inference experiment.
        * Type The type of the inference experiment that you want to run.
        * RoleArn The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to access model artifacts and container images, and manage Amazon SageMaker Inference endpoints for model deployment.
        * EndpointName 
        * ModelVariants An array of ModelVariantConfig objects. Each ModelVariantConfig object in the array describes the infrastructure configuration for the corresponding variant.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('EndpointName', 'd.T.string'),
        d.arg('ModelVariants', 'd.T.array'),
      ]
    ),
    new(
      Name,
      Type,
      RoleArn,
      EndpointName,
      ModelVariants,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'ShadowMode' : "Type must be either 'ShadowMode'",
        Type: Type,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(EndpointName) : 'EndpointName must be a string',
        EndpointName: EndpointName,
        assert std.isArray(ModelVariants) : 'ModelVariants must be a array',
        ModelVariants: ModelVariants,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::InferenceExperiment',
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
    '#withEndpointMetadata': d.fn('`withEndpointMetadata` EndpointMetadata ', [d.arg('EndpointMetadata', d.T.object)]),
    withEndpointMetadata(EndpointMetadata): {
      assert std.isObject(EndpointMetadata) : 'EndpointMetadata must be a object',
      Properties+::: { EndpointMetadata: EndpointMetadata },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
    '#withKmsKey': d.fn('`withKmsKey` KmsKey ', [d.arg('KmsKey', d.T.string)]),
    withKmsKey(KmsKey): {
      assert std.isString(KmsKey) : 'KmsKey must be a string',
      Properties+::: { KmsKey: KmsKey },
    },
    '#withDataStorageConfig': d.fn('`withDataStorageConfig` DataStorageConfig ', [d.arg('DataStorageConfig', d.T.object)]),
    withDataStorageConfig(DataStorageConfig): {
      assert std.isObject(DataStorageConfig) : 'DataStorageConfig must be a object',
      Properties+::: { DataStorageConfig: DataStorageConfig },
    },
    '#withShadowModeConfig': d.fn('`withShadowModeConfig` ShadowModeConfig ', [d.arg('ShadowModeConfig', d.T.object)]),
    withShadowModeConfig(ShadowModeConfig): {
      assert std.isObject(ShadowModeConfig) : 'ShadowModeConfig must be a object',
      Properties+::: { ShadowModeConfig: ShadowModeConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'Creating' || Status == 'Created' || Status == 'Updating' || Status == 'Starting' || Status == 'Stopping' || Status == 'Running' || Status == 'Completed' || Status == 'Cancelled' : "Status must be either 'Creating' or 'Created' or 'Updating' or 'Starting' or 'Stopping' or 'Running' or 'Completed' or 'Cancelled'",
      Properties+::: { Status: Status },
    },
    '#withStatusReason': d.fn('`withStatusReason` StatusReason ', [d.arg('StatusReason', d.T.string)]),
    withStatusReason(StatusReason): {
      assert std.isString(StatusReason) : 'StatusReason must be a string',
      Properties+::: { StatusReason: StatusReason },
    },
    '#withDesiredState': d.fn('`withDesiredState` DesiredState ', [d.arg('DesiredState', d.T.string)]),
    withDesiredState(DesiredState): {
      assert std.isString(DesiredState) : 'DesiredState must be a string',
      assert DesiredState == 'Running' || DesiredState == 'Completed' || DesiredState == 'Cancelled' : "DesiredState must be either 'Running' or 'Completed' or 'Cancelled'",
      Properties+::: { DesiredState: DesiredState },
    },
  },
  MlflowTrackingServer: {
    '#': d.pkg(
      name='MlflowTrackingServer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::MlflowTrackingServer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::MlflowTrackingServer Resource
        * TrackingServerName The name of the MLFlow Tracking Server.
        * ArtifactStoreUri The Amazon S3 URI for MLFlow Tracking Server artifacts.
        * RoleArn The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to perform tasks on behalf of the customer.
      |||,
      args=[
        d.arg('TrackingServerName', 'd.T.string'),
        d.arg('ArtifactStoreUri', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      TrackingServerName,
      ArtifactStoreUri,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TrackingServerName) : 'TrackingServerName must be a string',
        TrackingServerName: TrackingServerName,
        assert std.isString(ArtifactStoreUri) : 'ArtifactStoreUri must be a string',
        ArtifactStoreUri: ArtifactStoreUri,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::MlflowTrackingServer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTrackingServerArn': d.fn('`withTrackingServerArn` TrackingServerArn ', [d.arg('TrackingServerArn', d.T.string)]),
    withTrackingServerArn(TrackingServerArn): {
      assert std.isString(TrackingServerArn) : 'TrackingServerArn must be a string',
      Properties+::: { TrackingServerArn: TrackingServerArn },
    },
    '#withTrackingServerSize': d.fn('`withTrackingServerSize` TrackingServerSize ', [d.arg('TrackingServerSize', d.T.string)]),
    withTrackingServerSize(TrackingServerSize): {
      assert std.isString(TrackingServerSize) : 'TrackingServerSize must be a string',
      assert TrackingServerSize == 'Small' || TrackingServerSize == 'Medium' || TrackingServerSize == 'Large' : "TrackingServerSize must be either 'Small' or 'Medium' or 'Large'",
      Properties+::: { TrackingServerSize: TrackingServerSize },
    },
    '#withMlflowVersion': d.fn('`withMlflowVersion` MlflowVersion ', [d.arg('MlflowVersion', d.T.string)]),
    withMlflowVersion(MlflowVersion): {
      assert std.isString(MlflowVersion) : 'MlflowVersion must be a string',
      Properties+::: { MlflowVersion: MlflowVersion },
    },
    '#withAutomaticModelRegistration': d.fn('`withAutomaticModelRegistration` AutomaticModelRegistration ', [d.arg('AutomaticModelRegistration', d.T.boolean)]),
    withAutomaticModelRegistration(AutomaticModelRegistration): {
      assert std.isBoolean(AutomaticModelRegistration) : 'AutomaticModelRegistration must be a boolean',
      Properties+::: { AutomaticModelRegistration: AutomaticModelRegistration },
    },
    '#withWeeklyMaintenanceWindowStart': d.fn('`withWeeklyMaintenanceWindowStart` WeeklyMaintenanceWindowStart ', [d.arg('WeeklyMaintenanceWindowStart', d.T.string)]),
    withWeeklyMaintenanceWindowStart(WeeklyMaintenanceWindowStart): {
      assert std.isString(WeeklyMaintenanceWindowStart) : 'WeeklyMaintenanceWindowStart must be a string',
      Properties+::: { WeeklyMaintenanceWindowStart: WeeklyMaintenanceWindowStart },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Model: {
    '#': d.pkg(
      name='Model',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Model',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Model Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SageMaker::Model',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withEnableNetworkIsolation': d.fn('`withEnableNetworkIsolation` EnableNetworkIsolation ', [d.arg('EnableNetworkIsolation', d.T.boolean)]),
    withEnableNetworkIsolation(EnableNetworkIsolation): {
      assert std.isBoolean(EnableNetworkIsolation) : 'EnableNetworkIsolation must be a boolean',
      Properties+::: { EnableNetworkIsolation: EnableNetworkIsolation },
    },
    '#withPrimaryContainer': d.fn('`withPrimaryContainer` PrimaryContainer ', [d.arg('PrimaryContainer', d.T.object)]),
    withPrimaryContainer(PrimaryContainer): {
      assert std.isObject(PrimaryContainer) : 'PrimaryContainer must be a object',
      Properties+::: { PrimaryContainer: PrimaryContainer },
    },
    '#withModelName': d.fn('`withModelName` ModelName ', [d.arg('ModelName', d.T.string)]),
    withModelName(ModelName): {
      assert std.isString(ModelName) : 'ModelName must be a string',
      Properties+::: { ModelName: ModelName },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withContainers': d.fn('`withContainers` Containers ', [d.arg('Containers', d.T.array)]),
    withContainers(Containers): {
      assert std.isArray(Containers) : 'Containers must be a array',
      Properties+::: { Containers: Containers },
    },
    '#withInferenceExecutionConfig': d.fn('`withInferenceExecutionConfig` InferenceExecutionConfig ', [d.arg('InferenceExecutionConfig', d.T.object)]),
    withInferenceExecutionConfig(InferenceExecutionConfig): {
      assert std.isObject(InferenceExecutionConfig) : 'InferenceExecutionConfig must be a object',
      Properties+::: { InferenceExecutionConfig: InferenceExecutionConfig },
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
  },
  ModelBiasJobDefinition: {
    '#': d.pkg(
      name='ModelBiasJobDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ModelBiasJobDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ModelBiasJobDefinition Resource
        * ModelBiasAppSpecification 
        * ModelBiasJobInput 
        * ModelBiasJobOutputConfig 
        * JobResources 
        * RoleArn The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
      |||,
      args=[
        d.arg('ModelBiasAppSpecification', 'd.T.object'),
        d.arg('ModelBiasJobInput', 'd.T.object'),
        d.arg('ModelBiasJobOutputConfig', 'd.T.object'),
        d.arg('JobResources', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      ModelBiasAppSpecification,
      ModelBiasJobInput,
      ModelBiasJobOutputConfig,
      JobResources,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ModelBiasAppSpecification) : 'ModelBiasAppSpecification must be a object',
        ModelBiasAppSpecification: ModelBiasAppSpecification,
        assert std.isObject(ModelBiasJobInput) : 'ModelBiasJobInput must be a object',
        ModelBiasJobInput: ModelBiasJobInput,
        assert std.isObject(ModelBiasJobOutputConfig) : 'ModelBiasJobOutputConfig must be a object',
        ModelBiasJobOutputConfig: ModelBiasJobOutputConfig,
        assert std.isObject(JobResources) : 'JobResources must be a object',
        JobResources: JobResources,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::ModelBiasJobDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withJobDefinitionArn': d.fn('`withJobDefinitionArn` JobDefinitionArn ', [d.arg('JobDefinitionArn', d.T.string)]),
    withJobDefinitionArn(JobDefinitionArn): {
      assert std.isString(JobDefinitionArn) : 'JobDefinitionArn must be a string',
      Properties+::: { JobDefinitionArn: JobDefinitionArn },
    },
    '#withJobDefinitionName': d.fn('`withJobDefinitionName` JobDefinitionName ', [d.arg('JobDefinitionName', d.T.string)]),
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: { JobDefinitionName: JobDefinitionName },
    },
    '#withModelBiasBaselineConfig': d.fn('`withModelBiasBaselineConfig` ModelBiasBaselineConfig ', [d.arg('ModelBiasBaselineConfig', d.T.object)]),
    withModelBiasBaselineConfig(ModelBiasBaselineConfig): {
      assert std.isObject(ModelBiasBaselineConfig) : 'ModelBiasBaselineConfig must be a object',
      Properties+::: { ModelBiasBaselineConfig: ModelBiasBaselineConfig },
    },
    '#withNetworkConfig': d.fn('`withNetworkConfig` NetworkConfig ', [d.arg('NetworkConfig', d.T.object)]),
    withNetworkConfig(NetworkConfig): {
      assert std.isObject(NetworkConfig) : 'NetworkConfig must be a object',
      Properties+::: { NetworkConfig: NetworkConfig },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withStoppingCondition': d.fn('`withStoppingCondition` StoppingCondition ', [d.arg('StoppingCondition', d.T.object)]),
    withStoppingCondition(StoppingCondition): {
      assert std.isObject(StoppingCondition) : 'StoppingCondition must be a object',
      Properties+::: { StoppingCondition: StoppingCondition },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  ModelCard: {
    '#': d.pkg(
      name='ModelCard',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ModelCard.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ModelCard Resource
        * ModelCardName The unique name of the model card.
        * Content 
        * ModelCardStatus The approval status of the model card within your organization. Different organizations might have different criteria for model card review and approval.
      |||,
      args=[
        d.arg('ModelCardName', 'd.T.string'),
        d.arg('Content', 'd.T.object'),
        d.arg('ModelCardStatus', 'd.T.string'),
      ]
    ),
    new(
      ModelCardName,
      Content,
      ModelCardStatus,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ModelCardName) : 'ModelCardName must be a string',
        ModelCardName: ModelCardName,
        assert std.isObject(Content) : 'Content must be a object',
        Content: Content,
        assert std.isString(ModelCardStatus) : 'ModelCardStatus must be a string',
        assert ModelCardStatus == 'Draft' || ModelCardStatus == 'PendingReview' || ModelCardStatus == 'Approved' || ModelCardStatus == 'Archived' : "ModelCardStatus must be either 'Draft' or 'PendingReview' or 'Approved' or 'Archived'",
        ModelCardStatus: ModelCardStatus,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::ModelCard',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withModelCardArn': d.fn('`withModelCardArn` ModelCardArn ', [d.arg('ModelCardArn', d.T.string)]),
    withModelCardArn(ModelCardArn): {
      assert std.isString(ModelCardArn) : 'ModelCardArn must be a string',
      Properties+::: { ModelCardArn: ModelCardArn },
    },
    '#withModelCardVersion': d.fn('`withModelCardVersion` ModelCardVersion ', [d.arg('ModelCardVersion', d.T.integer)]),
    withModelCardVersion(ModelCardVersion): {
      assert std.isNumber(ModelCardVersion) : 'ModelCardVersion must be a integer',
      Properties+::: { ModelCardVersion: ModelCardVersion },
    },
    '#withSecurityConfig': d.fn('`withSecurityConfig` SecurityConfig ', [d.arg('SecurityConfig', d.T.object)]),
    withSecurityConfig(SecurityConfig): {
      assert std.isObject(SecurityConfig) : 'SecurityConfig must be a object',
      Properties+::: { SecurityConfig: SecurityConfig },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.object)]),
    withCreatedBy(CreatedBy): {
      assert std.isObject(CreatedBy) : 'CreatedBy must be a object',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
    '#withLastModifiedBy': d.fn('`withLastModifiedBy` LastModifiedBy ', [d.arg('LastModifiedBy', d.T.object)]),
    withLastModifiedBy(LastModifiedBy): {
      assert std.isObject(LastModifiedBy) : 'LastModifiedBy must be a object',
      Properties+::: { LastModifiedBy: LastModifiedBy },
    },
    '#withModelCardProcessingStatus': d.fn('`withModelCardProcessingStatus` ModelCardProcessingStatus ', [d.arg('ModelCardProcessingStatus', d.T.string)]),
    withModelCardProcessingStatus(ModelCardProcessingStatus): {
      assert std.isString(ModelCardProcessingStatus) : 'ModelCardProcessingStatus must be a string',
      assert ModelCardProcessingStatus == 'UnsetValue' || ModelCardProcessingStatus == 'DeleteInProgress' || ModelCardProcessingStatus == 'DeletePending' || ModelCardProcessingStatus == 'ContentDeleted' || ModelCardProcessingStatus == 'ExportJobsDeleted' || ModelCardProcessingStatus == 'DeleteCompleted' || ModelCardProcessingStatus == 'DeleteFailed' : "ModelCardProcessingStatus must be either 'UnsetValue' or 'DeleteInProgress' or 'DeletePending' or 'ContentDeleted' or 'ExportJobsDeleted' or 'DeleteCompleted' or 'DeleteFailed'",
      Properties+::: { ModelCardProcessingStatus: ModelCardProcessingStatus },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ModelExplainabilityJobDefinition: {
    '#': d.pkg(
      name='ModelExplainabilityJobDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ModelExplainabilityJobDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ModelExplainabilityJobDefinition Resource
        * ModelExplainabilityAppSpecification 
        * ModelExplainabilityJobInput 
        * ModelExplainabilityJobOutputConfig 
        * JobResources 
        * RoleArn The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
      |||,
      args=[
        d.arg('ModelExplainabilityAppSpecification', 'd.T.object'),
        d.arg('ModelExplainabilityJobInput', 'd.T.object'),
        d.arg('ModelExplainabilityJobOutputConfig', 'd.T.object'),
        d.arg('JobResources', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      ModelExplainabilityAppSpecification,
      ModelExplainabilityJobInput,
      ModelExplainabilityJobOutputConfig,
      JobResources,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ModelExplainabilityAppSpecification) : 'ModelExplainabilityAppSpecification must be a object',
        ModelExplainabilityAppSpecification: ModelExplainabilityAppSpecification,
        assert std.isObject(ModelExplainabilityJobInput) : 'ModelExplainabilityJobInput must be a object',
        ModelExplainabilityJobInput: ModelExplainabilityJobInput,
        assert std.isObject(ModelExplainabilityJobOutputConfig) : 'ModelExplainabilityJobOutputConfig must be a object',
        ModelExplainabilityJobOutputConfig: ModelExplainabilityJobOutputConfig,
        assert std.isObject(JobResources) : 'JobResources must be a object',
        JobResources: JobResources,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::ModelExplainabilityJobDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withJobDefinitionArn': d.fn('`withJobDefinitionArn` JobDefinitionArn ', [d.arg('JobDefinitionArn', d.T.string)]),
    withJobDefinitionArn(JobDefinitionArn): {
      assert std.isString(JobDefinitionArn) : 'JobDefinitionArn must be a string',
      Properties+::: { JobDefinitionArn: JobDefinitionArn },
    },
    '#withJobDefinitionName': d.fn('`withJobDefinitionName` JobDefinitionName ', [d.arg('JobDefinitionName', d.T.string)]),
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: { JobDefinitionName: JobDefinitionName },
    },
    '#withModelExplainabilityBaselineConfig': d.fn('`withModelExplainabilityBaselineConfig` ModelExplainabilityBaselineConfig ', [d.arg('ModelExplainabilityBaselineConfig', d.T.object)]),
    withModelExplainabilityBaselineConfig(ModelExplainabilityBaselineConfig): {
      assert std.isObject(ModelExplainabilityBaselineConfig) : 'ModelExplainabilityBaselineConfig must be a object',
      Properties+::: { ModelExplainabilityBaselineConfig: ModelExplainabilityBaselineConfig },
    },
    '#withNetworkConfig': d.fn('`withNetworkConfig` NetworkConfig ', [d.arg('NetworkConfig', d.T.object)]),
    withNetworkConfig(NetworkConfig): {
      assert std.isObject(NetworkConfig) : 'NetworkConfig must be a object',
      Properties+::: { NetworkConfig: NetworkConfig },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withStoppingCondition': d.fn('`withStoppingCondition` StoppingCondition ', [d.arg('StoppingCondition', d.T.object)]),
    withStoppingCondition(StoppingCondition): {
      assert std.isObject(StoppingCondition) : 'StoppingCondition must be a object',
      Properties+::: { StoppingCondition: StoppingCondition },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  ModelPackage: {
    '#': d.pkg(
      name='ModelPackage',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ModelPackage',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ModelPackage Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SageMaker::ModelPackage',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAdditionalInferenceSpecifications': d.fn('`withAdditionalInferenceSpecifications` AdditionalInferenceSpecifications ', [d.arg('AdditionalInferenceSpecifications', d.T.array)]),
    withAdditionalInferenceSpecifications(AdditionalInferenceSpecifications): {
      assert std.isArray(AdditionalInferenceSpecifications) : 'AdditionalInferenceSpecifications must be a array',
      Properties+::: { AdditionalInferenceSpecifications: AdditionalInferenceSpecifications },
    },
    '#withCertifyForMarketplace': d.fn('`withCertifyForMarketplace` CertifyForMarketplace ', [d.arg('CertifyForMarketplace', d.T.boolean)]),
    withCertifyForMarketplace(CertifyForMarketplace): {
      assert std.isBoolean(CertifyForMarketplace) : 'CertifyForMarketplace must be a boolean',
      Properties+::: { CertifyForMarketplace: CertifyForMarketplace },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withCustomerMetadataProperties': d.fn('`withCustomerMetadataProperties` CustomerMetadataProperties ', [d.arg('CustomerMetadataProperties', d.T.object)]),
    withCustomerMetadataProperties(CustomerMetadataProperties): {
      assert std.isObject(CustomerMetadataProperties) : 'CustomerMetadataProperties must be a object',
      Properties+::: { CustomerMetadataProperties: CustomerMetadataProperties },
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withDriftCheckBaselines': d.fn('`withDriftCheckBaselines` DriftCheckBaselines ', [d.arg('DriftCheckBaselines', d.T.object)]),
    withDriftCheckBaselines(DriftCheckBaselines): {
      assert std.isObject(DriftCheckBaselines) : 'DriftCheckBaselines must be a object',
      Properties+::: { DriftCheckBaselines: DriftCheckBaselines },
    },
    '#withInferenceSpecification': d.fn('`withInferenceSpecification` InferenceSpecification ', [d.arg('InferenceSpecification', d.T.object)]),
    withInferenceSpecification(InferenceSpecification): {
      assert std.isObject(InferenceSpecification) : 'InferenceSpecification must be a object',
      Properties+::: { InferenceSpecification: InferenceSpecification },
    },
    '#withMetadataProperties': d.fn('`withMetadataProperties` MetadataProperties ', [d.arg('MetadataProperties', d.T.object)]),
    withMetadataProperties(MetadataProperties): {
      assert std.isObject(MetadataProperties) : 'MetadataProperties must be a object',
      Properties+::: { MetadataProperties: MetadataProperties },
    },
    '#withModelApprovalStatus': d.fn('`withModelApprovalStatus` ModelApprovalStatus ', [d.arg('ModelApprovalStatus', d.T.string)]),
    withModelApprovalStatus(ModelApprovalStatus): {
      assert std.isString(ModelApprovalStatus) : 'ModelApprovalStatus must be a string',
      Properties+::: { ModelApprovalStatus: ModelApprovalStatus },
    },
    '#withModelMetrics': d.fn('`withModelMetrics` ModelMetrics ', [d.arg('ModelMetrics', d.T.object)]),
    withModelMetrics(ModelMetrics): {
      assert std.isObject(ModelMetrics) : 'ModelMetrics must be a object',
      Properties+::: { ModelMetrics: ModelMetrics },
    },
    '#withModelPackageDescription': d.fn('`withModelPackageDescription` ModelPackageDescription ', [d.arg('ModelPackageDescription', d.T.string)]),
    withModelPackageDescription(ModelPackageDescription): {
      assert std.isString(ModelPackageDescription) : 'ModelPackageDescription must be a string',
      Properties+::: { ModelPackageDescription: ModelPackageDescription },
    },
    '#withModelPackageGroupName': d.fn('`withModelPackageGroupName` ModelPackageGroupName ', [d.arg('ModelPackageGroupName', d.T.string)]),
    withModelPackageGroupName(ModelPackageGroupName): {
      assert std.isString(ModelPackageGroupName) : 'ModelPackageGroupName must be a string',
      Properties+::: { ModelPackageGroupName: ModelPackageGroupName },
    },
    '#withModelPackageName': d.fn('`withModelPackageName` ModelPackageName ', [d.arg('ModelPackageName', d.T.string)]),
    withModelPackageName(ModelPackageName): {
      assert std.isString(ModelPackageName) : 'ModelPackageName must be a string',
      Properties+::: { ModelPackageName: ModelPackageName },
    },
    '#withSamplePayloadUrl': d.fn('`withSamplePayloadUrl` SamplePayloadUrl ', [d.arg('SamplePayloadUrl', d.T.string)]),
    withSamplePayloadUrl(SamplePayloadUrl): {
      assert std.isString(SamplePayloadUrl) : 'SamplePayloadUrl must be a string',
      Properties+::: { SamplePayloadUrl: SamplePayloadUrl },
    },
    '#withSkipModelValidation': d.fn('`withSkipModelValidation` SkipModelValidation ', [d.arg('SkipModelValidation', d.T.string)]),
    withSkipModelValidation(SkipModelValidation): {
      assert std.isString(SkipModelValidation) : 'SkipModelValidation must be a string',
      Properties+::: { SkipModelValidation: SkipModelValidation },
    },
    '#withSourceAlgorithmSpecification': d.fn('`withSourceAlgorithmSpecification` SourceAlgorithmSpecification ', [d.arg('SourceAlgorithmSpecification', d.T.object)]),
    withSourceAlgorithmSpecification(SourceAlgorithmSpecification): {
      assert std.isObject(SourceAlgorithmSpecification) : 'SourceAlgorithmSpecification must be a object',
      Properties+::: { SourceAlgorithmSpecification: SourceAlgorithmSpecification },
    },
    '#withTask': d.fn('`withTask` Task ', [d.arg('Task', d.T.string)]),
    withTask(Task): {
      assert std.isString(Task) : 'Task must be a string',
      Properties+::: { Task: Task },
    },
    '#withValidationSpecification': d.fn('`withValidationSpecification` ValidationSpecification ', [d.arg('ValidationSpecification', d.T.object)]),
    withValidationSpecification(ValidationSpecification): {
      assert std.isObject(ValidationSpecification) : 'ValidationSpecification must be a object',
      Properties+::: { ValidationSpecification: ValidationSpecification },
    },
    '#withModelPackageArn': d.fn('`withModelPackageArn` ModelPackageArn ', [d.arg('ModelPackageArn', d.T.string)]),
    withModelPackageArn(ModelPackageArn): {
      assert std.isString(ModelPackageArn) : 'ModelPackageArn must be a string',
      Properties+::: { ModelPackageArn: ModelPackageArn },
    },
    '#withApprovalDescription': d.fn('`withApprovalDescription` ApprovalDescription ', [d.arg('ApprovalDescription', d.T.string)]),
    withApprovalDescription(ApprovalDescription): {
      assert std.isString(ApprovalDescription) : 'ApprovalDescription must be a string',
      Properties+::: { ApprovalDescription: ApprovalDescription },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
    '#withModelPackageStatus': d.fn('`withModelPackageStatus` ModelPackageStatus ', [d.arg('ModelPackageStatus', d.T.string)]),
    withModelPackageStatus(ModelPackageStatus): {
      assert std.isString(ModelPackageStatus) : 'ModelPackageStatus must be a string',
      Properties+::: { ModelPackageStatus: ModelPackageStatus },
    },
    '#withModelPackageVersion': d.fn('`withModelPackageVersion` ModelPackageVersion ', [d.arg('ModelPackageVersion', d.T.integer)]),
    withModelPackageVersion(ModelPackageVersion): {
      assert std.isNumber(ModelPackageVersion) : 'ModelPackageVersion must be a integer',
      Properties+::: { ModelPackageVersion: ModelPackageVersion },
    },
    '#withAdditionalInferenceSpecificationsToAdd': d.fn('`withAdditionalInferenceSpecificationsToAdd` AdditionalInferenceSpecificationsToAdd ', [d.arg('AdditionalInferenceSpecificationsToAdd', d.T.array)]),
    withAdditionalInferenceSpecificationsToAdd(AdditionalInferenceSpecificationsToAdd): {
      assert std.isArray(AdditionalInferenceSpecificationsToAdd) : 'AdditionalInferenceSpecificationsToAdd must be a array',
      Properties+::: { AdditionalInferenceSpecificationsToAdd: AdditionalInferenceSpecificationsToAdd },
    },
    '#withModelPackageStatusDetails': d.fn('`withModelPackageStatusDetails` ModelPackageStatusDetails ', [d.arg('ModelPackageStatusDetails', d.T.object)]),
    withModelPackageStatusDetails(ModelPackageStatusDetails): {
      assert std.isObject(ModelPackageStatusDetails) : 'ModelPackageStatusDetails must be a object',
      Properties+::: { ModelPackageStatusDetails: ModelPackageStatusDetails },
    },
    '#withSourceUri': d.fn('`withSourceUri` SourceUri ', [d.arg('SourceUri', d.T.string)]),
    withSourceUri(SourceUri): {
      assert std.isString(SourceUri) : 'SourceUri must be a string',
      Properties+::: { SourceUri: SourceUri },
    },
    '#withModelCard': d.fn('`withModelCard` ModelCard ', [d.arg('ModelCard', d.T.object)]),
    withModelCard(ModelCard): {
      assert std.isObject(ModelCard) : 'ModelCard must be a object',
      Properties+::: { ModelCard: ModelCard },
    },
    '#withSecurityConfig': d.fn('`withSecurityConfig` SecurityConfig ', [d.arg('SecurityConfig', d.T.object)]),
    withSecurityConfig(SecurityConfig): {
      assert std.isObject(SecurityConfig) : 'SecurityConfig must be a object',
      Properties+::: { SecurityConfig: SecurityConfig },
    },
  },
  ModelPackageGroup: {
    '#': d.pkg(
      name='ModelPackageGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ModelPackageGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ModelPackageGroup Resource
        * ModelPackageGroupName 
      |||,
      args=[
        d.arg('ModelPackageGroupName', 'd.T.string'),
      ]
    ),
    new(
      ModelPackageGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ModelPackageGroupName) : 'ModelPackageGroupName must be a string',
        ModelPackageGroupName: ModelPackageGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::ModelPackageGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withModelPackageGroupArn': d.fn('`withModelPackageGroupArn` ModelPackageGroupArn ', [d.arg('ModelPackageGroupArn', d.T.string)]),
    withModelPackageGroupArn(ModelPackageGroupArn): {
      assert std.isString(ModelPackageGroupArn) : 'ModelPackageGroupArn must be a string',
      Properties+::: { ModelPackageGroupArn: ModelPackageGroupArn },
    },
    '#withModelPackageGroupDescription': d.fn('`withModelPackageGroupDescription` ModelPackageGroupDescription ', [d.arg('ModelPackageGroupDescription', d.T.string)]),
    withModelPackageGroupDescription(ModelPackageGroupDescription): {
      assert std.isString(ModelPackageGroupDescription) : 'ModelPackageGroupDescription must be a string',
      Properties+::: { ModelPackageGroupDescription: ModelPackageGroupDescription },
    },
    '#withModelPackageGroupPolicy': d.fn('`withModelPackageGroupPolicy` ModelPackageGroupPolicy ', [d.arg('ModelPackageGroupPolicy')]),
    withModelPackageGroupPolicy(ModelPackageGroupPolicy): {
      // Type: object,string
      Properties+::: { ModelPackageGroupPolicy: ModelPackageGroupPolicy },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withModelPackageGroupStatus': d.fn('`withModelPackageGroupStatus` ModelPackageGroupStatus ', [d.arg('ModelPackageGroupStatus', d.T.string)]),
    withModelPackageGroupStatus(ModelPackageGroupStatus): {
      assert std.isString(ModelPackageGroupStatus) : 'ModelPackageGroupStatus must be a string',
      assert ModelPackageGroupStatus == 'Pending' || ModelPackageGroupStatus == 'InProgress' || ModelPackageGroupStatus == 'Completed' || ModelPackageGroupStatus == 'Failed' || ModelPackageGroupStatus == 'Deleting' || ModelPackageGroupStatus == 'DeleteFailed' : "ModelPackageGroupStatus must be either 'Pending' or 'InProgress' or 'Completed' or 'Failed' or 'Deleting' or 'DeleteFailed'",
      Properties+::: { ModelPackageGroupStatus: ModelPackageGroupStatus },
    },
  },
  ModelQualityJobDefinition: {
    '#': d.pkg(
      name='ModelQualityJobDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::ModelQualityJobDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::ModelQualityJobDefinition Resource
        * ModelQualityAppSpecification 
        * ModelQualityJobInput 
        * ModelQualityJobOutputConfig 
        * JobResources 
        * RoleArn The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
      |||,
      args=[
        d.arg('ModelQualityAppSpecification', 'd.T.object'),
        d.arg('ModelQualityJobInput', 'd.T.object'),
        d.arg('ModelQualityJobOutputConfig', 'd.T.object'),
        d.arg('JobResources', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      ModelQualityAppSpecification,
      ModelQualityJobInput,
      ModelQualityJobOutputConfig,
      JobResources,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ModelQualityAppSpecification) : 'ModelQualityAppSpecification must be a object',
        ModelQualityAppSpecification: ModelQualityAppSpecification,
        assert std.isObject(ModelQualityJobInput) : 'ModelQualityJobInput must be a object',
        ModelQualityJobInput: ModelQualityJobInput,
        assert std.isObject(ModelQualityJobOutputConfig) : 'ModelQualityJobOutputConfig must be a object',
        ModelQualityJobOutputConfig: ModelQualityJobOutputConfig,
        assert std.isObject(JobResources) : 'JobResources must be a object',
        JobResources: JobResources,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::ModelQualityJobDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withJobDefinitionArn': d.fn('`withJobDefinitionArn` JobDefinitionArn ', [d.arg('JobDefinitionArn', d.T.string)]),
    withJobDefinitionArn(JobDefinitionArn): {
      assert std.isString(JobDefinitionArn) : 'JobDefinitionArn must be a string',
      Properties+::: { JobDefinitionArn: JobDefinitionArn },
    },
    '#withJobDefinitionName': d.fn('`withJobDefinitionName` JobDefinitionName ', [d.arg('JobDefinitionName', d.T.string)]),
    withJobDefinitionName(JobDefinitionName): {
      assert std.isString(JobDefinitionName) : 'JobDefinitionName must be a string',
      Properties+::: { JobDefinitionName: JobDefinitionName },
    },
    '#withModelQualityBaselineConfig': d.fn('`withModelQualityBaselineConfig` ModelQualityBaselineConfig ', [d.arg('ModelQualityBaselineConfig', d.T.object)]),
    withModelQualityBaselineConfig(ModelQualityBaselineConfig): {
      assert std.isObject(ModelQualityBaselineConfig) : 'ModelQualityBaselineConfig must be a object',
      Properties+::: { ModelQualityBaselineConfig: ModelQualityBaselineConfig },
    },
    '#withNetworkConfig': d.fn('`withNetworkConfig` NetworkConfig ', [d.arg('NetworkConfig', d.T.object)]),
    withNetworkConfig(NetworkConfig): {
      assert std.isObject(NetworkConfig) : 'NetworkConfig must be a object',
      Properties+::: { NetworkConfig: NetworkConfig },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withStoppingCondition': d.fn('`withStoppingCondition` StoppingCondition ', [d.arg('StoppingCondition', d.T.object)]),
    withStoppingCondition(StoppingCondition): {
      assert std.isObject(StoppingCondition) : 'StoppingCondition must be a object',
      Properties+::: { StoppingCondition: StoppingCondition },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  MonitoringSchedule: {
    '#': d.pkg(
      name='MonitoringSchedule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::MonitoringSchedule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::MonitoringSchedule Resource
        * MonitoringScheduleConfig 
        * MonitoringScheduleName 
      |||,
      args=[
        d.arg('MonitoringScheduleConfig', 'd.T.object'),
        d.arg('MonitoringScheduleName', 'd.T.string'),
      ]
    ),
    new(
      MonitoringScheduleConfig,
      MonitoringScheduleName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(MonitoringScheduleConfig) : 'MonitoringScheduleConfig must be a object',
        MonitoringScheduleConfig: MonitoringScheduleConfig,
        assert std.isString(MonitoringScheduleName) : 'MonitoringScheduleName must be a string',
        MonitoringScheduleName: MonitoringScheduleName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::MonitoringSchedule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMonitoringScheduleArn': d.fn('`withMonitoringScheduleArn` MonitoringScheduleArn ', [d.arg('MonitoringScheduleArn', d.T.string)]),
    withMonitoringScheduleArn(MonitoringScheduleArn): {
      assert std.isString(MonitoringScheduleArn) : 'MonitoringScheduleArn must be a string',
      Properties+::: { MonitoringScheduleArn: MonitoringScheduleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withEndpointName': d.fn('`withEndpointName` EndpointName ', [d.arg('EndpointName', d.T.string)]),
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: { EndpointName: EndpointName },
    },
    '#withFailureReason': d.fn('`withFailureReason` FailureReason ', [d.arg('FailureReason', d.T.string)]),
    withFailureReason(FailureReason): {
      assert std.isString(FailureReason) : 'FailureReason must be a string',
      Properties+::: { FailureReason: FailureReason },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
    '#withLastMonitoringExecutionSummary': d.fn('`withLastMonitoringExecutionSummary` LastMonitoringExecutionSummary ', [d.arg('LastMonitoringExecutionSummary', d.T.object)]),
    withLastMonitoringExecutionSummary(LastMonitoringExecutionSummary): {
      assert std.isObject(LastMonitoringExecutionSummary) : 'LastMonitoringExecutionSummary must be a object',
      Properties+::: { LastMonitoringExecutionSummary: LastMonitoringExecutionSummary },
    },
    '#withMonitoringScheduleStatus': d.fn('`withMonitoringScheduleStatus` MonitoringScheduleStatus ', [d.arg('MonitoringScheduleStatus', d.T.string)]),
    withMonitoringScheduleStatus(MonitoringScheduleStatus): {
      assert std.isString(MonitoringScheduleStatus) : 'MonitoringScheduleStatus must be a string',
      assert MonitoringScheduleStatus == 'Pending' || MonitoringScheduleStatus == 'Failed' || MonitoringScheduleStatus == 'Scheduled' || MonitoringScheduleStatus == 'Stopped' : "MonitoringScheduleStatus must be either 'Pending' or 'Failed' or 'Scheduled' or 'Stopped'",
      Properties+::: { MonitoringScheduleStatus: MonitoringScheduleStatus },
    },
  },
  NotebookInstance: {
    '#': d.pkg(
      name='NotebookInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::NotebookInstance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::NotebookInstance Resource
        * InstanceType 
        * RoleArn 
      |||,
      args=[
        d.arg('InstanceType', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      InstanceType,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::NotebookInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withVolumeSizeInGB': d.fn('`withVolumeSizeInGB` VolumeSizeInGB ', [d.arg('VolumeSizeInGB', d.T.integer)]),
    withVolumeSizeInGB(VolumeSizeInGB): {
      assert std.isNumber(VolumeSizeInGB) : 'VolumeSizeInGB must be a integer',
      Properties+::: { VolumeSizeInGB: VolumeSizeInGB },
    },
    '#withAdditionalCodeRepositories': d.fn('`withAdditionalCodeRepositories` AdditionalCodeRepositories ', [d.arg('AdditionalCodeRepositories', d.T.array)]),
    withAdditionalCodeRepositories(AdditionalCodeRepositories): {
      assert std.isArray(AdditionalCodeRepositories) : 'AdditionalCodeRepositories must be a array',
      Properties+::: { AdditionalCodeRepositories: AdditionalCodeRepositories },
    },
    '#withDefaultCodeRepository': d.fn('`withDefaultCodeRepository` DefaultCodeRepository ', [d.arg('DefaultCodeRepository', d.T.string)]),
    withDefaultCodeRepository(DefaultCodeRepository): {
      assert std.isString(DefaultCodeRepository) : 'DefaultCodeRepository must be a string',
      Properties+::: { DefaultCodeRepository: DefaultCodeRepository },
    },
    '#withDirectInternetAccess': d.fn('`withDirectInternetAccess` DirectInternetAccess ', [d.arg('DirectInternetAccess', d.T.string)]),
    withDirectInternetAccess(DirectInternetAccess): {
      assert std.isString(DirectInternetAccess) : 'DirectInternetAccess must be a string',
      Properties+::: { DirectInternetAccess: DirectInternetAccess },
    },
    '#withPlatformIdentifier': d.fn('`withPlatformIdentifier` PlatformIdentifier ', [d.arg('PlatformIdentifier', d.T.string)]),
    withPlatformIdentifier(PlatformIdentifier): {
      assert std.isString(PlatformIdentifier) : 'PlatformIdentifier must be a string',
      Properties+::: { PlatformIdentifier: PlatformIdentifier },
    },
    '#withAcceleratorTypes': d.fn('`withAcceleratorTypes` AcceleratorTypes ', [d.arg('AcceleratorTypes', d.T.array)]),
    withAcceleratorTypes(AcceleratorTypes): {
      assert std.isArray(AcceleratorTypes) : 'AcceleratorTypes must be a array',
      Properties+::: { AcceleratorTypes: AcceleratorTypes },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withInstanceMetadataServiceConfiguration': d.fn('`withInstanceMetadataServiceConfiguration` InstanceMetadataServiceConfiguration ', [d.arg('InstanceMetadataServiceConfiguration', d.T.object)]),
    withInstanceMetadataServiceConfiguration(InstanceMetadataServiceConfiguration): {
      assert std.isObject(InstanceMetadataServiceConfiguration) : 'InstanceMetadataServiceConfiguration must be a object',
      Properties+::: { InstanceMetadataServiceConfiguration: InstanceMetadataServiceConfiguration },
    },
    '#withRootAccess': d.fn('`withRootAccess` RootAccess ', [d.arg('RootAccess', d.T.string)]),
    withRootAccess(RootAccess): {
      assert std.isString(RootAccess) : 'RootAccess must be a string',
      Properties+::: { RootAccess: RootAccess },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNotebookInstanceName': d.fn('`withNotebookInstanceName` NotebookInstanceName ', [d.arg('NotebookInstanceName', d.T.string)]),
    withNotebookInstanceName(NotebookInstanceName): {
      assert std.isString(NotebookInstanceName) : 'NotebookInstanceName must be a string',
      Properties+::: { NotebookInstanceName: NotebookInstanceName },
    },
    '#withLifecycleConfigName': d.fn('`withLifecycleConfigName` LifecycleConfigName ', [d.arg('LifecycleConfigName', d.T.string)]),
    withLifecycleConfigName(LifecycleConfigName): {
      assert std.isString(LifecycleConfigName) : 'LifecycleConfigName must be a string',
      Properties+::: { LifecycleConfigName: LifecycleConfigName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  NotebookInstanceLifecycleConfig: {
    '#': d.pkg(
      name='NotebookInstanceLifecycleConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::NotebookInstanceLifecycleConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::NotebookInstanceLifecycleConfig Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SageMaker::NotebookInstanceLifecycleConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOnStart': d.fn('`withOnStart` OnStart ', [d.arg('OnStart', d.T.array)]),
    withOnStart(OnStart): {
      assert std.isArray(OnStart) : 'OnStart must be a array',
      Properties+::: { OnStart: OnStart },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNotebookInstanceLifecycleConfigName': d.fn('`withNotebookInstanceLifecycleConfigName` NotebookInstanceLifecycleConfigName ', [d.arg('NotebookInstanceLifecycleConfigName', d.T.string)]),
    withNotebookInstanceLifecycleConfigName(NotebookInstanceLifecycleConfigName): {
      assert std.isString(NotebookInstanceLifecycleConfigName) : 'NotebookInstanceLifecycleConfigName must be a string',
      Properties+::: { NotebookInstanceLifecycleConfigName: NotebookInstanceLifecycleConfigName },
    },
    '#withOnCreate': d.fn('`withOnCreate` OnCreate ', [d.arg('OnCreate', d.T.array)]),
    withOnCreate(OnCreate): {
      assert std.isArray(OnCreate) : 'OnCreate must be a array',
      Properties+::: { OnCreate: OnCreate },
    },
  },
  Pipeline: {
    '#': d.pkg(
      name='Pipeline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Pipeline',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Pipeline Resource
        * PipelineName The name of the Pipeline.
        * PipelineDefinition 
        * RoleArn Role Arn
      |||,
      args=[
        d.arg('PipelineName', 'd.T.string'),
        d.arg('PipelineDefinition', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      PipelineName,
      PipelineDefinition,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PipelineName) : 'PipelineName must be a string',
        PipelineName: PipelineName,
        assert std.isObject(PipelineDefinition) : 'PipelineDefinition must be a object',
        PipelineDefinition: PipelineDefinition,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Pipeline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPipelineDisplayName': d.fn('`withPipelineDisplayName` PipelineDisplayName ', [d.arg('PipelineDisplayName', d.T.string)]),
    withPipelineDisplayName(PipelineDisplayName): {
      assert std.isString(PipelineDisplayName) : 'PipelineDisplayName must be a string',
      Properties+::: { PipelineDisplayName: PipelineDisplayName },
    },
    '#withPipelineDescription': d.fn('`withPipelineDescription` PipelineDescription ', [d.arg('PipelineDescription', d.T.string)]),
    withPipelineDescription(PipelineDescription): {
      assert std.isString(PipelineDescription) : 'PipelineDescription must be a string',
      Properties+::: { PipelineDescription: PipelineDescription },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withParallelismConfiguration': d.fn('`withParallelismConfiguration` ParallelismConfiguration ', [d.arg('ParallelismConfiguration', d.T.object)]),
    withParallelismConfiguration(ParallelismConfiguration): {
      assert std.isObject(ParallelismConfiguration) : 'ParallelismConfiguration must be a object',
      Properties+::: { ParallelismConfiguration: ParallelismConfiguration },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Project',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Project Resource
        * ProjectName 
        * ServiceCatalogProvisioningDetails Input ServiceCatalog Provisioning Details
      |||,
      args=[
        d.arg('ProjectName', 'd.T.string'),
        d.arg('ServiceCatalogProvisioningDetails', 'd.T.object'),
      ]
    ),
    new(
      ProjectName,
      ServiceCatalogProvisioningDetails,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProjectName) : 'ProjectName must be a string',
        ProjectName: ProjectName,
        assert std.isObject(ServiceCatalogProvisioningDetails) : 'ServiceCatalogProvisioningDetails must be a object',
        ServiceCatalogProvisioningDetails: ServiceCatalogProvisioningDetails,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withProjectArn': d.fn('`withProjectArn` ProjectArn ', [d.arg('ProjectArn', d.T.string)]),
    withProjectArn(ProjectArn): {
      assert std.isString(ProjectArn) : 'ProjectArn must be a string',
      Properties+::: { ProjectArn: ProjectArn },
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withProjectDescription': d.fn('`withProjectDescription` ProjectDescription ', [d.arg('ProjectDescription', d.T.string)]),
    withProjectDescription(ProjectDescription): {
      assert std.isString(ProjectDescription) : 'ProjectDescription must be a string',
      Properties+::: { ProjectDescription: ProjectDescription },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withServiceCatalogProvisionedProductDetails': d.fn('`withServiceCatalogProvisionedProductDetails` ServiceCatalogProvisionedProductDetails ', [d.arg('ServiceCatalogProvisionedProductDetails', d.T.object)]),
    withServiceCatalogProvisionedProductDetails(ServiceCatalogProvisionedProductDetails): {
      assert std.isObject(ServiceCatalogProvisionedProductDetails) : 'ServiceCatalogProvisionedProductDetails must be a object',
      Properties+::: { ServiceCatalogProvisionedProductDetails: ServiceCatalogProvisionedProductDetails },
    },
    '#withProjectStatus': d.fn('`withProjectStatus` ProjectStatus ', [d.arg('ProjectStatus', d.T.string)]),
    withProjectStatus(ProjectStatus): {
      assert std.isString(ProjectStatus) : 'ProjectStatus must be a string',
      assert ProjectStatus == 'Pending' || ProjectStatus == 'CreateInProgress' || ProjectStatus == 'CreateCompleted' || ProjectStatus == 'CreateFailed' || ProjectStatus == 'DeleteInProgress' || ProjectStatus == 'DeleteFailed' || ProjectStatus == 'DeleteCompleted' : "ProjectStatus must be either 'Pending' or 'CreateInProgress' or 'CreateCompleted' or 'CreateFailed' or 'DeleteInProgress' or 'DeleteFailed' or 'DeleteCompleted'",
      Properties+::: { ProjectStatus: ProjectStatus },
    },
  },
  Space: {
    '#': d.pkg(
      name='Space',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Space',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Space Resource
        * DomainId The ID of the associated Domain.
        * SpaceName A name for the Space.
      |||,
      args=[
        d.arg('DomainId', 'd.T.string'),
        d.arg('SpaceName', 'd.T.string'),
      ]
    ),
    new(
      DomainId,
      SpaceName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainId) : 'DomainId must be a string',
        DomainId: DomainId,
        assert std.isString(SpaceName) : 'SpaceName must be a string',
        SpaceName: SpaceName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::Space',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSpaceArn': d.fn('`withSpaceArn` SpaceArn ', [d.arg('SpaceArn', d.T.string)]),
    withSpaceArn(SpaceArn): {
      assert std.isString(SpaceArn) : 'SpaceArn must be a string',
      Properties+::: { SpaceArn: SpaceArn },
    },
    '#withSpaceSettings': d.fn('`withSpaceSettings` SpaceSettings ', [d.arg('SpaceSettings', d.T.object)]),
    withSpaceSettings(SpaceSettings): {
      assert std.isObject(SpaceSettings) : 'SpaceSettings must be a object',
      Properties+::: { SpaceSettings: SpaceSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withOwnershipSettings': d.fn('`withOwnershipSettings` OwnershipSettings ', [d.arg('OwnershipSettings', d.T.object)]),
    withOwnershipSettings(OwnershipSettings): {
      assert std.isObject(OwnershipSettings) : 'OwnershipSettings must be a object',
      Properties+::: { OwnershipSettings: OwnershipSettings },
    },
    '#withSpaceSharingSettings': d.fn('`withSpaceSharingSettings` SpaceSharingSettings ', [d.arg('SpaceSharingSettings', d.T.object)]),
    withSpaceSharingSettings(SpaceSharingSettings): {
      assert std.isObject(SpaceSharingSettings) : 'SpaceSharingSettings must be a object',
      Properties+::: { SpaceSharingSettings: SpaceSharingSettings },
    },
    '#withSpaceDisplayName': d.fn('`withSpaceDisplayName` SpaceDisplayName ', [d.arg('SpaceDisplayName', d.T.string)]),
    withSpaceDisplayName(SpaceDisplayName): {
      assert std.isString(SpaceDisplayName) : 'SpaceDisplayName must be a string',
      Properties+::: { SpaceDisplayName: SpaceDisplayName },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
  },
  StudioLifecycleConfig: {
    '#': d.pkg(
      name='StudioLifecycleConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::StudioLifecycleConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::StudioLifecycleConfig Resource
        * StudioLifecycleConfigAppType The App type that the Lifecycle Configuration is attached to.
        * StudioLifecycleConfigContent The content of your Amazon SageMaker Studio Lifecycle Configuration script. This content must be base64 encoded.
        * StudioLifecycleConfigName The name of the Amazon SageMaker Studio Lifecycle Configuration.
      |||,
      args=[
        d.arg('StudioLifecycleConfigAppType', 'd.T.string'),
        d.arg('StudioLifecycleConfigContent', 'd.T.string'),
        d.arg('StudioLifecycleConfigName', 'd.T.string'),
      ]
    ),
    new(
      StudioLifecycleConfigAppType,
      StudioLifecycleConfigContent,
      StudioLifecycleConfigName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StudioLifecycleConfigAppType) : 'StudioLifecycleConfigAppType must be a string',
        assert StudioLifecycleConfigAppType == 'JupyterServer' || StudioLifecycleConfigAppType == 'KernelGateway' || StudioLifecycleConfigAppType == 'CodeEditor' || StudioLifecycleConfigAppType == 'JupyterLab' : "StudioLifecycleConfigAppType must be either 'JupyterServer' or 'KernelGateway' or 'CodeEditor' or 'JupyterLab'",
        StudioLifecycleConfigAppType: StudioLifecycleConfigAppType,
        assert std.isString(StudioLifecycleConfigContent) : 'StudioLifecycleConfigContent must be a string',
        StudioLifecycleConfigContent: StudioLifecycleConfigContent,
        assert std.isString(StudioLifecycleConfigName) : 'StudioLifecycleConfigName must be a string',
        StudioLifecycleConfigName: StudioLifecycleConfigName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::StudioLifecycleConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStudioLifecycleConfigArn': d.fn('`withStudioLifecycleConfigArn` StudioLifecycleConfigArn ', [d.arg('StudioLifecycleConfigArn', d.T.string)]),
    withStudioLifecycleConfigArn(StudioLifecycleConfigArn): {
      assert std.isString(StudioLifecycleConfigArn) : 'StudioLifecycleConfigArn must be a string',
      Properties+::: { StudioLifecycleConfigArn: StudioLifecycleConfigArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  UserProfile: {
    '#': d.pkg(
      name='UserProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::UserProfile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::UserProfile Resource
        * DomainId The ID of the associated Domain.
        * UserProfileName A name for the UserProfile.
      |||,
      args=[
        d.arg('DomainId', 'd.T.string'),
        d.arg('UserProfileName', 'd.T.string'),
      ]
    ),
    new(
      DomainId,
      UserProfileName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainId) : 'DomainId must be a string',
        DomainId: DomainId,
        assert std.isString(UserProfileName) : 'UserProfileName must be a string',
        UserProfileName: UserProfileName,
      },
      DependsOn:: [],
      Type: 'AWS::SageMaker::UserProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUserProfileArn': d.fn('`withUserProfileArn` UserProfileArn ', [d.arg('UserProfileArn', d.T.string)]),
    withUserProfileArn(UserProfileArn): {
      assert std.isString(UserProfileArn) : 'UserProfileArn must be a string',
      Properties+::: { UserProfileArn: UserProfileArn },
    },
    '#withSingleSignOnUserIdentifier': d.fn('`withSingleSignOnUserIdentifier` SingleSignOnUserIdentifier ', [d.arg('SingleSignOnUserIdentifier', d.T.string)]),
    withSingleSignOnUserIdentifier(SingleSignOnUserIdentifier): {
      assert std.isString(SingleSignOnUserIdentifier) : 'SingleSignOnUserIdentifier must be a string',
      Properties+::: { SingleSignOnUserIdentifier: SingleSignOnUserIdentifier },
    },
    '#withSingleSignOnUserValue': d.fn('`withSingleSignOnUserValue` SingleSignOnUserValue ', [d.arg('SingleSignOnUserValue', d.T.string)]),
    withSingleSignOnUserValue(SingleSignOnUserValue): {
      assert std.isString(SingleSignOnUserValue) : 'SingleSignOnUserValue must be a string',
      Properties+::: { SingleSignOnUserValue: SingleSignOnUserValue },
    },
    '#withUserSettings': d.fn('`withUserSettings` UserSettings ', [d.arg('UserSettings', d.T.object)]),
    withUserSettings(UserSettings): {
      assert std.isObject(UserSettings) : 'UserSettings must be a object',
      Properties+::: { UserSettings: UserSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Workteam: {
    '#': d.pkg(
      name='Workteam',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SageMaker.libsonnet',
      help='Resource Type definition for AWS::SageMaker::Workteam',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SageMaker::Workteam Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SageMaker::Workteam',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withNotificationConfiguration': d.fn('`withNotificationConfiguration` NotificationConfiguration ', [d.arg('NotificationConfiguration', d.T.object)]),
    withNotificationConfiguration(NotificationConfiguration): {
      assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
      Properties+::: { NotificationConfiguration: NotificationConfiguration },
    },
    '#withWorkteamName': d.fn('`withWorkteamName` WorkteamName ', [d.arg('WorkteamName', d.T.string)]),
    withWorkteamName(WorkteamName): {
      assert std.isString(WorkteamName) : 'WorkteamName must be a string',
      Properties+::: { WorkteamName: WorkteamName },
    },
    '#withMemberDefinitions': d.fn('`withMemberDefinitions` MemberDefinitions ', [d.arg('MemberDefinitions', d.T.array)]),
    withMemberDefinitions(MemberDefinitions): {
      assert std.isArray(MemberDefinitions) : 'MemberDefinitions must be a array',
      Properties+::: { MemberDefinitions: MemberDefinitions },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withWorkforceName': d.fn('`withWorkforceName` WorkforceName ', [d.arg('WorkforceName', d.T.string)]),
    withWorkforceName(WorkforceName): {
      assert std.isString(WorkforceName) : 'WorkforceName must be a string',
      Properties+::: { WorkforceName: WorkforceName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
