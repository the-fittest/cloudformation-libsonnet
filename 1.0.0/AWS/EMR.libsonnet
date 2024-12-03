local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Resource Type definition for AWS::EMR::Cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::Cluster Resource
        * Instances 
        * ServiceRole 
        * JobFlowRole 
        * Name 
      |||,
      args=[
        d.arg('Instances', 'd.T.object'),
        d.arg('ServiceRole', 'd.T.string'),
        d.arg('JobFlowRole', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Instances,
      ServiceRole,
      JobFlowRole,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Instances) : 'Instances must be a object',
        Instances: Instances,
        assert std.isString(ServiceRole) : 'ServiceRole must be a string',
        ServiceRole: ServiceRole,
        assert std.isString(JobFlowRole) : 'JobFlowRole must be a string',
        JobFlowRole: JobFlowRole,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSteps': d.fn('`withSteps` Steps ', [d.arg('Steps', d.T.array)]),
    withSteps(Steps): {
      assert std.isArray(Steps) : 'Steps must be a array',
      Properties+::: { Steps: Steps },
    },
    '#withPlacementGroupConfigs': d.fn('`withPlacementGroupConfigs` PlacementGroupConfigs ', [d.arg('PlacementGroupConfigs', d.T.array)]),
    withPlacementGroupConfigs(PlacementGroupConfigs): {
      assert std.isArray(PlacementGroupConfigs) : 'PlacementGroupConfigs must be a array',
      Properties+::: { PlacementGroupConfigs: PlacementGroupConfigs },
    },
    '#withStepConcurrencyLevel': d.fn('`withStepConcurrencyLevel` StepConcurrencyLevel ', [d.arg('StepConcurrencyLevel', d.T.integer)]),
    withStepConcurrencyLevel(StepConcurrencyLevel): {
      assert std.isNumber(StepConcurrencyLevel) : 'StepConcurrencyLevel must be a integer',
      Properties+::: { StepConcurrencyLevel: StepConcurrencyLevel },
    },
    '#withEbsRootVolumeSize': d.fn('`withEbsRootVolumeSize` EbsRootVolumeSize ', [d.arg('EbsRootVolumeSize', d.T.integer)]),
    withEbsRootVolumeSize(EbsRootVolumeSize): {
      assert std.isNumber(EbsRootVolumeSize) : 'EbsRootVolumeSize must be a integer',
      Properties+::: { EbsRootVolumeSize: EbsRootVolumeSize },
    },
    '#withOSReleaseLabel': d.fn('`withOSReleaseLabel` OSReleaseLabel ', [d.arg('OSReleaseLabel', d.T.string)]),
    withOSReleaseLabel(OSReleaseLabel): {
      assert std.isString(OSReleaseLabel) : 'OSReleaseLabel must be a string',
      Properties+::: { OSReleaseLabel: OSReleaseLabel },
    },
    '#withLogUri': d.fn('`withLogUri` LogUri ', [d.arg('LogUri', d.T.string)]),
    withLogUri(LogUri): {
      assert std.isString(LogUri) : 'LogUri must be a string',
      Properties+::: { LogUri: LogUri },
    },
    '#withBootstrapActions': d.fn('`withBootstrapActions` BootstrapActions ', [d.arg('BootstrapActions', d.T.array)]),
    withBootstrapActions(BootstrapActions): {
      assert std.isArray(BootstrapActions) : 'BootstrapActions must be a array',
      Properties+::: { BootstrapActions: BootstrapActions },
    },
    '#withMasterPublicDNS': d.fn('`withMasterPublicDNS` MasterPublicDNS ', [d.arg('MasterPublicDNS', d.T.string)]),
    withMasterPublicDNS(MasterPublicDNS): {
      assert std.isString(MasterPublicDNS) : 'MasterPublicDNS must be a string',
      Properties+::: { MasterPublicDNS: MasterPublicDNS },
    },
    '#withConfigurations': d.fn('`withConfigurations` Configurations ', [d.arg('Configurations', d.T.array)]),
    withConfigurations(Configurations): {
      assert std.isArray(Configurations) : 'Configurations must be a array',
      Properties+::: { Configurations: Configurations },
    },
    '#withReleaseLabel': d.fn('`withReleaseLabel` ReleaseLabel ', [d.arg('ReleaseLabel', d.T.string)]),
    withReleaseLabel(ReleaseLabel): {
      assert std.isString(ReleaseLabel) : 'ReleaseLabel must be a string',
      Properties+::: { ReleaseLabel: ReleaseLabel },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withManagedScalingPolicy': d.fn('`withManagedScalingPolicy` ManagedScalingPolicy ', [d.arg('ManagedScalingPolicy', d.T.object)]),
    withManagedScalingPolicy(ManagedScalingPolicy): {
      assert std.isObject(ManagedScalingPolicy) : 'ManagedScalingPolicy must be a object',
      Properties+::: { ManagedScalingPolicy: ManagedScalingPolicy },
    },
    '#withLogEncryptionKmsKeyId': d.fn('`withLogEncryptionKmsKeyId` LogEncryptionKmsKeyId ', [d.arg('LogEncryptionKmsKeyId', d.T.string)]),
    withLogEncryptionKmsKeyId(LogEncryptionKmsKeyId): {
      assert std.isString(LogEncryptionKmsKeyId) : 'LogEncryptionKmsKeyId must be a string',
      Properties+::: { LogEncryptionKmsKeyId: LogEncryptionKmsKeyId },
    },
    '#withAdditionalInfo': d.fn('`withAdditionalInfo` AdditionalInfo ', [d.arg('AdditionalInfo', d.T.object)]),
    withAdditionalInfo(AdditionalInfo): {
      assert std.isObject(AdditionalInfo) : 'AdditionalInfo must be a object',
      Properties+::: { AdditionalInfo: AdditionalInfo },
    },
    '#withAutoTerminationPolicy': d.fn('`withAutoTerminationPolicy` AutoTerminationPolicy ', [d.arg('AutoTerminationPolicy', d.T.object)]),
    withAutoTerminationPolicy(AutoTerminationPolicy): {
      assert std.isObject(AutoTerminationPolicy) : 'AutoTerminationPolicy must be a object',
      Properties+::: { AutoTerminationPolicy: AutoTerminationPolicy },
    },
    '#withKerberosAttributes': d.fn('`withKerberosAttributes` KerberosAttributes ', [d.arg('KerberosAttributes', d.T.object)]),
    withKerberosAttributes(KerberosAttributes): {
      assert std.isObject(KerberosAttributes) : 'KerberosAttributes must be a object',
      Properties+::: { KerberosAttributes: KerberosAttributes },
    },
    '#withApplications': d.fn('`withApplications` Applications ', [d.arg('Applications', d.T.array)]),
    withApplications(Applications): {
      assert std.isArray(Applications) : 'Applications must be a array',
      Properties+::: { Applications: Applications },
    },
    '#withAutoScalingRole': d.fn('`withAutoScalingRole` AutoScalingRole ', [d.arg('AutoScalingRole', d.T.string)]),
    withAutoScalingRole(AutoScalingRole): {
      assert std.isString(AutoScalingRole) : 'AutoScalingRole must be a string',
      Properties+::: { AutoScalingRole: AutoScalingRole },
    },
    '#withCustomAmiId': d.fn('`withCustomAmiId` CustomAmiId ', [d.arg('CustomAmiId', d.T.string)]),
    withCustomAmiId(CustomAmiId): {
      assert std.isString(CustomAmiId) : 'CustomAmiId must be a string',
      Properties+::: { CustomAmiId: CustomAmiId },
    },
    '#withEbsRootVolumeIops': d.fn('`withEbsRootVolumeIops` EbsRootVolumeIops ', [d.arg('EbsRootVolumeIops', d.T.integer)]),
    withEbsRootVolumeIops(EbsRootVolumeIops): {
      assert std.isNumber(EbsRootVolumeIops) : 'EbsRootVolumeIops must be a integer',
      Properties+::: { EbsRootVolumeIops: EbsRootVolumeIops },
    },
    '#withScaleDownBehavior': d.fn('`withScaleDownBehavior` ScaleDownBehavior ', [d.arg('ScaleDownBehavior', d.T.string)]),
    withScaleDownBehavior(ScaleDownBehavior): {
      assert std.isString(ScaleDownBehavior) : 'ScaleDownBehavior must be a string',
      Properties+::: { ScaleDownBehavior: ScaleDownBehavior },
    },
    '#withEbsRootVolumeThroughput': d.fn('`withEbsRootVolumeThroughput` EbsRootVolumeThroughput ', [d.arg('EbsRootVolumeThroughput', d.T.integer)]),
    withEbsRootVolumeThroughput(EbsRootVolumeThroughput): {
      assert std.isNumber(EbsRootVolumeThroughput) : 'EbsRootVolumeThroughput must be a integer',
      Properties+::: { EbsRootVolumeThroughput: EbsRootVolumeThroughput },
    },
    '#withVisibleToAllUsers': d.fn('`withVisibleToAllUsers` VisibleToAllUsers ', [d.arg('VisibleToAllUsers', d.T.boolean)]),
    withVisibleToAllUsers(VisibleToAllUsers): {
      assert std.isBoolean(VisibleToAllUsers) : 'VisibleToAllUsers must be a boolean',
      Properties+::: { VisibleToAllUsers: VisibleToAllUsers },
    },
    '#withSecurityConfiguration': d.fn('`withSecurityConfiguration` SecurityConfiguration ', [d.arg('SecurityConfiguration', d.T.string)]),
    withSecurityConfiguration(SecurityConfiguration): {
      assert std.isString(SecurityConfiguration) : 'SecurityConfiguration must be a string',
      Properties+::: { SecurityConfiguration: SecurityConfiguration },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  InstanceFleetConfig: {
    '#': d.pkg(
      name='InstanceFleetConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Resource Type definition for AWS::EMR::InstanceFleetConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::InstanceFleetConfig Resource
        * InstanceFleetType 
        * ClusterId 
      |||,
      args=[
        d.arg('InstanceFleetType', 'd.T.string'),
        d.arg('ClusterId', 'd.T.string'),
      ]
    ),
    new(
      InstanceFleetType,
      ClusterId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceFleetType) : 'InstanceFleetType must be a string',
        InstanceFleetType: InstanceFleetType,
        assert std.isString(ClusterId) : 'ClusterId must be a string',
        ClusterId: ClusterId,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::InstanceFleetConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTargetOnDemandCapacity': d.fn('`withTargetOnDemandCapacity` TargetOnDemandCapacity ', [d.arg('TargetOnDemandCapacity', d.T.integer)]),
    withTargetOnDemandCapacity(TargetOnDemandCapacity): {
      assert std.isNumber(TargetOnDemandCapacity) : 'TargetOnDemandCapacity must be a integer',
      Properties+::: { TargetOnDemandCapacity: TargetOnDemandCapacity },
    },
    '#withTargetSpotCapacity': d.fn('`withTargetSpotCapacity` TargetSpotCapacity ', [d.arg('TargetSpotCapacity', d.T.integer)]),
    withTargetSpotCapacity(TargetSpotCapacity): {
      assert std.isNumber(TargetSpotCapacity) : 'TargetSpotCapacity must be a integer',
      Properties+::: { TargetSpotCapacity: TargetSpotCapacity },
    },
    '#withLaunchSpecifications': d.fn('`withLaunchSpecifications` LaunchSpecifications ', [d.arg('LaunchSpecifications', d.T.object)]),
    withLaunchSpecifications(LaunchSpecifications): {
      assert std.isObject(LaunchSpecifications) : 'LaunchSpecifications must be a object',
      Properties+::: { LaunchSpecifications: LaunchSpecifications },
    },
    '#withResizeSpecifications': d.fn('`withResizeSpecifications` ResizeSpecifications ', [d.arg('ResizeSpecifications', d.T.object)]),
    withResizeSpecifications(ResizeSpecifications): {
      assert std.isObject(ResizeSpecifications) : 'ResizeSpecifications must be a object',
      Properties+::: { ResizeSpecifications: ResizeSpecifications },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withInstanceTypeConfigs': d.fn('`withInstanceTypeConfigs` InstanceTypeConfigs ', [d.arg('InstanceTypeConfigs', d.T.array)]),
    withInstanceTypeConfigs(InstanceTypeConfigs): {
      assert std.isArray(InstanceTypeConfigs) : 'InstanceTypeConfigs must be a array',
      Properties+::: { InstanceTypeConfigs: InstanceTypeConfigs },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  InstanceGroupConfig: {
    '#': d.pkg(
      name='InstanceGroupConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Resource Type definition for AWS::EMR::InstanceGroupConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::InstanceGroupConfig Resource
        * JobFlowId 
        * InstanceCount 
        * InstanceRole 
        * InstanceType 
      |||,
      args=[
        d.arg('JobFlowId', 'd.T.string'),
        d.arg('InstanceCount', 'd.T.integer'),
        d.arg('InstanceRole', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
      ]
    ),
    new(
      JobFlowId,
      InstanceCount,
      InstanceRole,
      InstanceType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(JobFlowId) : 'JobFlowId must be a string',
        JobFlowId: JobFlowId,
        assert std.isNumber(InstanceCount) : 'InstanceCount must be a integer',
        InstanceCount: InstanceCount,
        assert std.isString(InstanceRole) : 'InstanceRole must be a string',
        InstanceRole: InstanceRole,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::InstanceGroupConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAutoScalingPolicy': d.fn('`withAutoScalingPolicy` AutoScalingPolicy ', [d.arg('AutoScalingPolicy', d.T.object)]),
    withAutoScalingPolicy(AutoScalingPolicy): {
      assert std.isObject(AutoScalingPolicy) : 'AutoScalingPolicy must be a object',
      Properties+::: { AutoScalingPolicy: AutoScalingPolicy },
    },
    '#withBidPrice': d.fn('`withBidPrice` BidPrice ', [d.arg('BidPrice', d.T.string)]),
    withBidPrice(BidPrice): {
      assert std.isString(BidPrice) : 'BidPrice must be a string',
      Properties+::: { BidPrice: BidPrice },
    },
    '#withEbsConfiguration': d.fn('`withEbsConfiguration` EbsConfiguration ', [d.arg('EbsConfiguration', d.T.object)]),
    withEbsConfiguration(EbsConfiguration): {
      assert std.isObject(EbsConfiguration) : 'EbsConfiguration must be a object',
      Properties+::: { EbsConfiguration: EbsConfiguration },
    },
    '#withCustomAmiId': d.fn('`withCustomAmiId` CustomAmiId ', [d.arg('CustomAmiId', d.T.string)]),
    withCustomAmiId(CustomAmiId): {
      assert std.isString(CustomAmiId) : 'CustomAmiId must be a string',
      Properties+::: { CustomAmiId: CustomAmiId },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withConfigurations': d.fn('`withConfigurations` Configurations ', [d.arg('Configurations', d.T.array)]),
    withConfigurations(Configurations): {
      assert std.isArray(Configurations) : 'Configurations must be a array',
      Properties+::: { Configurations: Configurations },
    },
    '#withMarket': d.fn('`withMarket` Market ', [d.arg('Market', d.T.string)]),
    withMarket(Market): {
      assert std.isString(Market) : 'Market must be a string',
      Properties+::: { Market: Market },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  SecurityConfiguration: {
    '#': d.pkg(
      name='SecurityConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Use a SecurityConfiguration resource to configure data encryption, Kerberos authentication, and Amazon S3 authorization for EMRFS.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::SecurityConfiguration Resource
        * SecurityConfiguration The security configuration details in JSON format.
      |||,
      args=[
        d.arg('SecurityConfiguration', ''),
      ]
    ),
    new(
      SecurityConfiguration,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        SecurityConfiguration: SecurityConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::SecurityConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Step: {
    '#': d.pkg(
      name='Step',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Schema for AWS::EMR::Step',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::Step Resource
        * JobFlowId A string that uniquely identifies the cluster (job flow).
        * HadoopJarStep The HadoopJarStepConfig property type specifies a job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for the cluster to execute as a step on the master node, and then waits for the job to finish or fail before executing subsequent steps.
        * ActionOnFailure This specifies what action to take when the cluster step fails. Possible values are CANCEL_AND_WAIT and CONTINUE.
        * Name The name of the cluster step.
      |||,
      args=[
        d.arg('JobFlowId', 'd.T.string'),
        d.arg('HadoopJarStep', 'd.T.object'),
        d.arg('ActionOnFailure', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      JobFlowId,
      HadoopJarStep,
      ActionOnFailure,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(JobFlowId) : 'JobFlowId must be a string',
        JobFlowId: JobFlowId,
        assert std.isObject(HadoopJarStep) : 'HadoopJarStep must be a object',
        HadoopJarStep: HadoopJarStep,
        assert std.isString(ActionOnFailure) : 'ActionOnFailure must be a string',
        ActionOnFailure: ActionOnFailure,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::Step',
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
  Studio: {
    '#': d.pkg(
      name='Studio',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Resource schema for AWS::EMR::Studio',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::Studio Resource
        * AuthMode Specifies whether the Studio authenticates users using single sign-on (SSO) or IAM. Amazon EMR Studio currently only supports SSO authentication.
        * EngineSecurityGroupId The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by VpcId.
        * Name A descriptive name for the Amazon EMR Studio.
        * ServiceRole The IAM role that will be assumed by the Amazon EMR Studio. The service role provides a way for Amazon EMR Studio to interoperate with other AWS services.
        * SubnetIds A list of up to 5 subnet IDs to associate with the Studio. The subnets must belong to the VPC specified by VpcId. Studio users can create a Workspace in any of the specified subnets.
        * VpcId The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
        * WorkspaceSecurityGroupId The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by VpcId.
        * DefaultS3Location The default Amazon S3 location to back up EMR Studio Workspaces and notebook files. A Studio user can select an alternative Amazon S3 location when creating a Workspace.
      |||,
      args=[
        d.arg('AuthMode', 'd.T.string'),
        d.arg('EngineSecurityGroupId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('ServiceRole', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
        d.arg('VpcId', 'd.T.string'),
        d.arg('WorkspaceSecurityGroupId', 'd.T.string'),
        d.arg('DefaultS3Location', 'd.T.string'),
      ]
    ),
    new(
      AuthMode,
      EngineSecurityGroupId,
      Name,
      ServiceRole,
      SubnetIds,
      VpcId,
      WorkspaceSecurityGroupId,
      DefaultS3Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AuthMode) : 'AuthMode must be a string',
        assert AuthMode == 'SSO' || AuthMode == 'IAM' : "AuthMode must be either 'SSO' or 'IAM'",
        AuthMode: AuthMode,
        assert std.isString(EngineSecurityGroupId) : 'EngineSecurityGroupId must be a string',
        EngineSecurityGroupId: EngineSecurityGroupId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ServiceRole) : 'ServiceRole must be a string',
        ServiceRole: ServiceRole,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(WorkspaceSecurityGroupId) : 'WorkspaceSecurityGroupId must be a string',
        WorkspaceSecurityGroupId: WorkspaceSecurityGroupId,
        assert std.isString(DefaultS3Location) : 'DefaultS3Location must be a string',
        DefaultS3Location: DefaultS3Location,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::Studio',
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
    '#withStudioId': d.fn('`withStudioId` StudioId ', [d.arg('StudioId', d.T.string)]),
    withStudioId(StudioId): {
      assert std.isString(StudioId) : 'StudioId must be a string',
      Properties+::: { StudioId: StudioId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withUserRole': d.fn('`withUserRole` UserRole ', [d.arg('UserRole', d.T.string)]),
    withUserRole(UserRole): {
      assert std.isString(UserRole) : 'UserRole must be a string',
      Properties+::: { UserRole: UserRole },
    },
    '#withIdpAuthUrl': d.fn('`withIdpAuthUrl` IdpAuthUrl ', [d.arg('IdpAuthUrl', d.T.string)]),
    withIdpAuthUrl(IdpAuthUrl): {
      assert std.isString(IdpAuthUrl) : 'IdpAuthUrl must be a string',
      Properties+::: { IdpAuthUrl: IdpAuthUrl },
    },
    '#withIdpRelayStateParameterName': d.fn('`withIdpRelayStateParameterName` IdpRelayStateParameterName ', [d.arg('IdpRelayStateParameterName', d.T.string)]),
    withIdpRelayStateParameterName(IdpRelayStateParameterName): {
      assert std.isString(IdpRelayStateParameterName) : 'IdpRelayStateParameterName must be a string',
      Properties+::: { IdpRelayStateParameterName: IdpRelayStateParameterName },
    },
    '#withTrustedIdentityPropagationEnabled': d.fn('`withTrustedIdentityPropagationEnabled` TrustedIdentityPropagationEnabled ', [d.arg('TrustedIdentityPropagationEnabled', d.T.boolean)]),
    withTrustedIdentityPropagationEnabled(TrustedIdentityPropagationEnabled): {
      assert std.isBoolean(TrustedIdentityPropagationEnabled) : 'TrustedIdentityPropagationEnabled must be a boolean',
      Properties+::: { TrustedIdentityPropagationEnabled: TrustedIdentityPropagationEnabled },
    },
    '#withIdcUserAssignment': d.fn('`withIdcUserAssignment` IdcUserAssignment ', [d.arg('IdcUserAssignment', d.T.string)]),
    withIdcUserAssignment(IdcUserAssignment): {
      assert std.isString(IdcUserAssignment) : 'IdcUserAssignment must be a string',
      assert IdcUserAssignment == 'REQUIRED' || IdcUserAssignment == 'OPTIONAL' : "IdcUserAssignment must be either 'REQUIRED' or 'OPTIONAL'",
      Properties+::: { IdcUserAssignment: IdcUserAssignment },
    },
    '#withIdcInstanceArn': d.fn('`withIdcInstanceArn` IdcInstanceArn ', [d.arg('IdcInstanceArn', d.T.string)]),
    withIdcInstanceArn(IdcInstanceArn): {
      assert std.isString(IdcInstanceArn) : 'IdcInstanceArn must be a string',
      Properties+::: { IdcInstanceArn: IdcInstanceArn },
    },
    '#withEncryptionKeyArn': d.fn('`withEncryptionKeyArn` EncryptionKeyArn ', [d.arg('EncryptionKeyArn', d.T.string)]),
    withEncryptionKeyArn(EncryptionKeyArn): {
      assert std.isString(EncryptionKeyArn) : 'EncryptionKeyArn must be a string',
      Properties+::: { EncryptionKeyArn: EncryptionKeyArn },
    },
  },
  StudioSessionMapping: {
    '#': d.pkg(
      name='StudioSessionMapping',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::StudioSessionMapping Resource
        * StudioId The ID of the Amazon EMR Studio to which the user or group will be mapped.
        * IdentityName The name of the user or group. For more information, see UserName and DisplayName in the AWS SSO Identity Store API Reference. Either IdentityName or IdentityId must be specified.
        * IdentityType Specifies whether the identity to map to the Studio is a user or a group.
        * SessionPolicyArn The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. Session policies refine Studio user permissions without the need to use multiple IAM user roles.
      |||,
      args=[
        d.arg('StudioId', 'd.T.string'),
        d.arg('IdentityName', 'd.T.string'),
        d.arg('IdentityType', 'd.T.string'),
        d.arg('SessionPolicyArn', 'd.T.string'),
      ]
    ),
    new(
      StudioId,
      IdentityName,
      IdentityType,
      SessionPolicyArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StudioId) : 'StudioId must be a string',
        StudioId: StudioId,
        assert std.isString(IdentityName) : 'IdentityName must be a string',
        IdentityName: IdentityName,
        assert std.isString(IdentityType) : 'IdentityType must be a string',
        assert IdentityType == 'USER' || IdentityType == 'GROUP' : "IdentityType must be either 'USER' or 'GROUP'",
        IdentityType: IdentityType,
        assert std.isString(SessionPolicyArn) : 'SessionPolicyArn must be a string',
        SessionPolicyArn: SessionPolicyArn,
      },
      DependsOn:: [],
      Type: 'AWS::EMR::StudioSessionMapping',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  WALWorkspace: {
    '#': d.pkg(
      name='WALWorkspace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EMR.libsonnet',
      help='Resource schema for AWS::EMR::WALWorkspace Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EMR::WALWorkspace Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EMR::WALWorkspace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withWALWorkspaceName': d.fn('`withWALWorkspaceName` WALWorkspaceName ', [d.arg('WALWorkspaceName', d.T.string)]),
    withWALWorkspaceName(WALWorkspaceName): {
      assert std.isString(WALWorkspaceName) : 'WALWorkspaceName must be a string',
      Properties+::: { WALWorkspaceName: WALWorkspaceName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
