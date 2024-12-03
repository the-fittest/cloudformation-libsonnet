local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AutoScalingGroup: {
    '#': d.pkg(
      name='AutoScalingGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScaling.libsonnet',
      help='The AWS::AutoScaling::AutoScalingGroup resource defines an Amazon EC2 Auto Scaling group, which is a collection of Amazon EC2 instances that are treated as a logical grouping for the purposes of automatic scaling and management.  For more information about Amazon EC2 Auto Scaling, see the [Amazon EC2 Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html). Amazon EC2 Auto Scaling configures instances launched as part of an Auto Scaling group using either a [launch template](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html) or a launch configuration. We strongly recommend that you do not use launch configurations. For more information, see [Launch configurations](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html) in the *Amazon EC2 Auto Scaling User Guide*. For help migrating from launch configurations to launch templates, see [Migrate CloudFormation stacks from launch configurations to launch templates](https://docs.aws.amazon.com/autoscaling/ec2/userguide/migrate-launch-configurations-with-cloudformation.html) in the *Amazon EC2 Auto Scaling User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScaling::AutoScalingGroup Resource
        * MinSize The minimum size of the group.
        * MaxSize The maximum size of the group.With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to go above MaxSize to meet your capacity requirements. In this event, Amazon EC2 Auto Scaling will never go above MaxSize by more than your largest instance weight (weights that define how many units each instance contributes to the desired capacity of the group).
      |||,
      args=[
        d.arg('MinSize', 'd.T.string'),
        d.arg('MaxSize', 'd.T.string'),
      ]
    ),
    new(
      MinSize,
      MaxSize,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MinSize) : 'MinSize must be a string',
        MinSize: MinSize,
        assert std.isString(MaxSize) : 'MaxSize must be a string',
        MaxSize: MaxSize,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScaling::AutoScalingGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLifecycleHookSpecificationList': d.fn('`withLifecycleHookSpecificationList` LifecycleHookSpecificationList ', [d.arg('LifecycleHookSpecificationList', d.T.array)]),
    withLifecycleHookSpecificationList(LifecycleHookSpecificationList): {
      assert std.isArray(LifecycleHookSpecificationList) : 'LifecycleHookSpecificationList must be a array',
      Properties+::: { LifecycleHookSpecificationList: LifecycleHookSpecificationList },
    },
    '#withLoadBalancerNames': d.fn('`withLoadBalancerNames` LoadBalancerNames ', [d.arg('LoadBalancerNames', d.T.array)]),
    withLoadBalancerNames(LoadBalancerNames): {
      assert std.isArray(LoadBalancerNames) : 'LoadBalancerNames must be a array',
      Properties+::: { LoadBalancerNames: LoadBalancerNames },
    },
    '#withLaunchConfigurationName': d.fn('`withLaunchConfigurationName` LaunchConfigurationName ', [d.arg('LaunchConfigurationName', d.T.string)]),
    withLaunchConfigurationName(LaunchConfigurationName): {
      assert std.isString(LaunchConfigurationName) : 'LaunchConfigurationName must be a string',
      Properties+::: { LaunchConfigurationName: LaunchConfigurationName },
    },
    '#withServiceLinkedRoleARN': d.fn('`withServiceLinkedRoleARN` ServiceLinkedRoleARN ', [d.arg('ServiceLinkedRoleARN', d.T.string)]),
    withServiceLinkedRoleARN(ServiceLinkedRoleARN): {
      assert std.isString(ServiceLinkedRoleARN) : 'ServiceLinkedRoleARN must be a string',
      Properties+::: { ServiceLinkedRoleARN: ServiceLinkedRoleARN },
    },
    '#withAvailabilityZoneImpairmentPolicy': d.fn('`withAvailabilityZoneImpairmentPolicy` AvailabilityZoneImpairmentPolicy ', [d.arg('AvailabilityZoneImpairmentPolicy', d.T.object)]),
    withAvailabilityZoneImpairmentPolicy(AvailabilityZoneImpairmentPolicy): {
      assert std.isObject(AvailabilityZoneImpairmentPolicy) : 'AvailabilityZoneImpairmentPolicy must be a object',
      Properties+::: { AvailabilityZoneImpairmentPolicy: AvailabilityZoneImpairmentPolicy },
    },
    '#withTargetGroupARNs': d.fn('`withTargetGroupARNs` TargetGroupARNs ', [d.arg('TargetGroupARNs', d.T.array)]),
    withTargetGroupARNs(TargetGroupARNs): {
      assert std.isArray(TargetGroupARNs) : 'TargetGroupARNs must be a array',
      Properties+::: { TargetGroupARNs: TargetGroupARNs },
    },
    '#withCooldown': d.fn('`withCooldown` Cooldown ', [d.arg('Cooldown', d.T.string)]),
    withCooldown(Cooldown): {
      assert std.isString(Cooldown) : 'Cooldown must be a string',
      Properties+::: { Cooldown: Cooldown },
    },
    '#withNotificationConfigurations': d.fn('`withNotificationConfigurations` NotificationConfigurations ', [d.arg('NotificationConfigurations', d.T.array)]),
    withNotificationConfigurations(NotificationConfigurations): {
      assert std.isArray(NotificationConfigurations) : 'NotificationConfigurations must be a array',
      Properties+::: { NotificationConfigurations: NotificationConfigurations },
    },
    '#withDesiredCapacity': d.fn('`withDesiredCapacity` DesiredCapacity ', [d.arg('DesiredCapacity', d.T.string)]),
    withDesiredCapacity(DesiredCapacity): {
      assert std.isString(DesiredCapacity) : 'DesiredCapacity must be a string',
      Properties+::: { DesiredCapacity: DesiredCapacity },
    },
    '#withHealthCheckGracePeriod': d.fn('`withHealthCheckGracePeriod` HealthCheckGracePeriod ', [d.arg('HealthCheckGracePeriod', d.T.integer)]),
    withHealthCheckGracePeriod(HealthCheckGracePeriod): {
      assert std.isNumber(HealthCheckGracePeriod) : 'HealthCheckGracePeriod must be a integer',
      Properties+::: { HealthCheckGracePeriod: HealthCheckGracePeriod },
    },
    '#withDefaultInstanceWarmup': d.fn('`withDefaultInstanceWarmup` DefaultInstanceWarmup ', [d.arg('DefaultInstanceWarmup', d.T.integer)]),
    withDefaultInstanceWarmup(DefaultInstanceWarmup): {
      assert std.isNumber(DefaultInstanceWarmup) : 'DefaultInstanceWarmup must be a integer',
      Properties+::: { DefaultInstanceWarmup: DefaultInstanceWarmup },
    },
    '#withSkipZonalShiftValidation': d.fn('`withSkipZonalShiftValidation` SkipZonalShiftValidation ', [d.arg('SkipZonalShiftValidation', d.T.boolean)]),
    withSkipZonalShiftValidation(SkipZonalShiftValidation): {
      assert std.isBoolean(SkipZonalShiftValidation) : 'SkipZonalShiftValidation must be a boolean',
      Properties+::: { SkipZonalShiftValidation: SkipZonalShiftValidation },
    },
    '#withNewInstancesProtectedFromScaleIn': d.fn('`withNewInstancesProtectedFromScaleIn` NewInstancesProtectedFromScaleIn ', [d.arg('NewInstancesProtectedFromScaleIn', d.T.boolean)]),
    withNewInstancesProtectedFromScaleIn(NewInstancesProtectedFromScaleIn): {
      assert std.isBoolean(NewInstancesProtectedFromScaleIn) : 'NewInstancesProtectedFromScaleIn must be a boolean',
      Properties+::: { NewInstancesProtectedFromScaleIn: NewInstancesProtectedFromScaleIn },
    },
    '#withLaunchTemplate': d.fn('`withLaunchTemplate` LaunchTemplate ', [d.arg('LaunchTemplate', d.T.object)]),
    withLaunchTemplate(LaunchTemplate): {
      assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
      Properties+::: { LaunchTemplate: LaunchTemplate },
    },
    '#withMixedInstancesPolicy': d.fn('`withMixedInstancesPolicy` MixedInstancesPolicy ', [d.arg('MixedInstancesPolicy', d.T.object)]),
    withMixedInstancesPolicy(MixedInstancesPolicy): {
      assert std.isObject(MixedInstancesPolicy) : 'MixedInstancesPolicy must be a object',
      Properties+::: { MixedInstancesPolicy: MixedInstancesPolicy },
    },
    '#withVPCZoneIdentifier': d.fn('`withVPCZoneIdentifier` VPCZoneIdentifier ', [d.arg('VPCZoneIdentifier', d.T.array)]),
    withVPCZoneIdentifier(VPCZoneIdentifier): {
      assert std.isArray(VPCZoneIdentifier) : 'VPCZoneIdentifier must be a array',
      Properties+::: { VPCZoneIdentifier: VPCZoneIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withContext': d.fn('`withContext` Context ', [d.arg('Context', d.T.string)]),
    withContext(Context): {
      assert std.isString(Context) : 'Context must be a string',
      Properties+::: { Context: Context },
    },
    '#withCapacityRebalance': d.fn('`withCapacityRebalance` CapacityRebalance ', [d.arg('CapacityRebalance', d.T.boolean)]),
    withCapacityRebalance(CapacityRebalance): {
      assert std.isBoolean(CapacityRebalance) : 'CapacityRebalance must be a boolean',
      Properties+::: { CapacityRebalance: CapacityRebalance },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withAvailabilityZones': d.fn('`withAvailabilityZones` AvailabilityZones ', [d.arg('AvailabilityZones', d.T.array)]),
    withAvailabilityZones(AvailabilityZones): {
      assert std.isArray(AvailabilityZones) : 'AvailabilityZones must be a array',
      Properties+::: { AvailabilityZones: AvailabilityZones },
    },
    '#withNotificationConfiguration': d.fn('`withNotificationConfiguration` NotificationConfiguration ', [d.arg('NotificationConfiguration', d.T.object)]),
    withNotificationConfiguration(NotificationConfiguration): {
      assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
      Properties+::: { NotificationConfiguration: NotificationConfiguration },
    },
    '#withAvailabilityZoneDistribution': d.fn('`withAvailabilityZoneDistribution` AvailabilityZoneDistribution ', [d.arg('AvailabilityZoneDistribution', d.T.object)]),
    withAvailabilityZoneDistribution(AvailabilityZoneDistribution): {
      assert std.isObject(AvailabilityZoneDistribution) : 'AvailabilityZoneDistribution must be a object',
      Properties+::: { AvailabilityZoneDistribution: AvailabilityZoneDistribution },
    },
    '#withMetricsCollection': d.fn('`withMetricsCollection` MetricsCollection ', [d.arg('MetricsCollection', d.T.array)]),
    withMetricsCollection(MetricsCollection): {
      assert std.isArray(MetricsCollection) : 'MetricsCollection must be a array',
      Properties+::: { MetricsCollection: MetricsCollection },
    },
    '#withInstanceMaintenancePolicy': d.fn('`withInstanceMaintenancePolicy` InstanceMaintenancePolicy ', [d.arg('InstanceMaintenancePolicy', d.T.object)]),
    withInstanceMaintenancePolicy(InstanceMaintenancePolicy): {
      assert std.isObject(InstanceMaintenancePolicy) : 'InstanceMaintenancePolicy must be a object',
      Properties+::: { InstanceMaintenancePolicy: InstanceMaintenancePolicy },
    },
    '#withTerminationPolicies': d.fn('`withTerminationPolicies` TerminationPolicies ', [d.arg('TerminationPolicies', d.T.array)]),
    withTerminationPolicies(TerminationPolicies): {
      assert std.isArray(TerminationPolicies) : 'TerminationPolicies must be a array',
      Properties+::: { TerminationPolicies: TerminationPolicies },
    },
    '#withAutoScalingGroupName': d.fn('`withAutoScalingGroupName` AutoScalingGroupName ', [d.arg('AutoScalingGroupName', d.T.string)]),
    withAutoScalingGroupName(AutoScalingGroupName): {
      assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
      Properties+::: { AutoScalingGroupName: AutoScalingGroupName },
    },
    '#withTrafficSources': d.fn('`withTrafficSources` TrafficSources ', [d.arg('TrafficSources', d.T.array)]),
    withTrafficSources(TrafficSources): {
      assert std.isArray(TrafficSources) : 'TrafficSources must be a array',
      Properties+::: { TrafficSources: TrafficSources },
    },
    '#withDesiredCapacityType': d.fn('`withDesiredCapacityType` DesiredCapacityType ', [d.arg('DesiredCapacityType', d.T.string)]),
    withDesiredCapacityType(DesiredCapacityType): {
      assert std.isString(DesiredCapacityType) : 'DesiredCapacityType must be a string',
      Properties+::: { DesiredCapacityType: DesiredCapacityType },
    },
    '#withPlacementGroup': d.fn('`withPlacementGroup` PlacementGroup ', [d.arg('PlacementGroup', d.T.string)]),
    withPlacementGroup(PlacementGroup): {
      assert std.isString(PlacementGroup) : 'PlacementGroup must be a string',
      Properties+::: { PlacementGroup: PlacementGroup },
    },
    '#withCapacityReservationSpecification': d.fn('`withCapacityReservationSpecification` CapacityReservationSpecification ', [d.arg('CapacityReservationSpecification', d.T.object)]),
    withCapacityReservationSpecification(CapacityReservationSpecification): {
      assert std.isObject(CapacityReservationSpecification) : 'CapacityReservationSpecification must be a object',
      Properties+::: { CapacityReservationSpecification: CapacityReservationSpecification },
    },
    '#withHealthCheckType': d.fn('`withHealthCheckType` HealthCheckType ', [d.arg('HealthCheckType', d.T.string)]),
    withHealthCheckType(HealthCheckType): {
      assert std.isString(HealthCheckType) : 'HealthCheckType must be a string',
      Properties+::: { HealthCheckType: HealthCheckType },
    },
    '#withMaxInstanceLifetime': d.fn('`withMaxInstanceLifetime` MaxInstanceLifetime ', [d.arg('MaxInstanceLifetime', d.T.integer)]),
    withMaxInstanceLifetime(MaxInstanceLifetime): {
      assert std.isNumber(MaxInstanceLifetime) : 'MaxInstanceLifetime must be a integer',
      Properties+::: { MaxInstanceLifetime: MaxInstanceLifetime },
    },
  },
  LaunchConfiguration: {
    '#': d.pkg(
      name='LaunchConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScaling.libsonnet',
      help='The AWS::AutoScaling::LaunchConfiguration resource specifies the launch configuration that can be used by an Auto Scaling group to configure Amazon EC2 instances.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScaling::LaunchConfiguration Resource
        * ImageId Provides the unique ID of the Amazon Machine Image (AMI) that was assigned during registration.
        * InstanceType Specifies the instance type of the EC2 instance.
      |||,
      args=[
        d.arg('ImageId', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
      ]
    ),
    new(
      ImageId,
      InstanceType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ImageId) : 'ImageId must be a string',
        ImageId: ImageId,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScaling::LaunchConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPlacementTenancy': d.fn('`withPlacementTenancy` PlacementTenancy ', [d.arg('PlacementTenancy', d.T.string)]),
    withPlacementTenancy(PlacementTenancy): {
      assert std.isString(PlacementTenancy) : 'PlacementTenancy must be a string',
      Properties+::: { PlacementTenancy: PlacementTenancy },
    },
    '#withSecurityGroups': d.fn('`withSecurityGroups` SecurityGroups ', [d.arg('SecurityGroups', d.T.array)]),
    withSecurityGroups(SecurityGroups): {
      assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
      Properties+::: { SecurityGroups: SecurityGroups },
    },
    '#withLaunchConfigurationName': d.fn('`withLaunchConfigurationName` LaunchConfigurationName ', [d.arg('LaunchConfigurationName', d.T.string)]),
    withLaunchConfigurationName(LaunchConfigurationName): {
      assert std.isString(LaunchConfigurationName) : 'LaunchConfigurationName must be a string',
      Properties+::: { LaunchConfigurationName: LaunchConfigurationName },
    },
    '#withMetadataOptions': d.fn('`withMetadataOptions` MetadataOptions ', [d.arg('MetadataOptions', d.T.object)]),
    withMetadataOptions(MetadataOptions): {
      assert std.isObject(MetadataOptions) : 'MetadataOptions must be a object',
      Properties+::: { MetadataOptions: MetadataOptions },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withUserData': d.fn('`withUserData` UserData ', [d.arg('UserData', d.T.string)]),
    withUserData(UserData): {
      assert std.isString(UserData) : 'UserData must be a string',
      Properties+::: { UserData: UserData },
    },
    '#withClassicLinkVPCSecurityGroups': d.fn('`withClassicLinkVPCSecurityGroups` ClassicLinkVPCSecurityGroups ', [d.arg('ClassicLinkVPCSecurityGroups', d.T.array)]),
    withClassicLinkVPCSecurityGroups(ClassicLinkVPCSecurityGroups): {
      assert std.isArray(ClassicLinkVPCSecurityGroups) : 'ClassicLinkVPCSecurityGroups must be a array',
      Properties+::: { ClassicLinkVPCSecurityGroups: ClassicLinkVPCSecurityGroups },
    },
    '#withBlockDeviceMappings': d.fn('`withBlockDeviceMappings` BlockDeviceMappings ', [d.arg('BlockDeviceMappings', d.T.array)]),
    withBlockDeviceMappings(BlockDeviceMappings): {
      assert std.isArray(BlockDeviceMappings) : 'BlockDeviceMappings must be a array',
      Properties+::: { BlockDeviceMappings: BlockDeviceMappings },
    },
    '#withIamInstanceProfile': d.fn('`withIamInstanceProfile` IamInstanceProfile ', [d.arg('IamInstanceProfile', d.T.string)]),
    withIamInstanceProfile(IamInstanceProfile): {
      assert std.isString(IamInstanceProfile) : 'IamInstanceProfile must be a string',
      Properties+::: { IamInstanceProfile: IamInstanceProfile },
    },
    '#withKernelId': d.fn('`withKernelId` KernelId ', [d.arg('KernelId', d.T.string)]),
    withKernelId(KernelId): {
      assert std.isString(KernelId) : 'KernelId must be a string',
      Properties+::: { KernelId: KernelId },
    },
    '#withAssociatePublicIpAddress': d.fn('`withAssociatePublicIpAddress` AssociatePublicIpAddress ', [d.arg('AssociatePublicIpAddress', d.T.boolean)]),
    withAssociatePublicIpAddress(AssociatePublicIpAddress): {
      assert std.isBoolean(AssociatePublicIpAddress) : 'AssociatePublicIpAddress must be a boolean',
      Properties+::: { AssociatePublicIpAddress: AssociatePublicIpAddress },
    },
    '#withClassicLinkVPCId': d.fn('`withClassicLinkVPCId` ClassicLinkVPCId ', [d.arg('ClassicLinkVPCId', d.T.string)]),
    withClassicLinkVPCId(ClassicLinkVPCId): {
      assert std.isString(ClassicLinkVPCId) : 'ClassicLinkVPCId must be a string',
      Properties+::: { ClassicLinkVPCId: ClassicLinkVPCId },
    },
    '#withEbsOptimized': d.fn('`withEbsOptimized` EbsOptimized ', [d.arg('EbsOptimized', d.T.boolean)]),
    withEbsOptimized(EbsOptimized): {
      assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
      Properties+::: { EbsOptimized: EbsOptimized },
    },
    '#withKeyName': d.fn('`withKeyName` KeyName ', [d.arg('KeyName', d.T.string)]),
    withKeyName(KeyName): {
      assert std.isString(KeyName) : 'KeyName must be a string',
      Properties+::: { KeyName: KeyName },
    },
    '#withSpotPrice': d.fn('`withSpotPrice` SpotPrice ', [d.arg('SpotPrice', d.T.string)]),
    withSpotPrice(SpotPrice): {
      assert std.isString(SpotPrice) : 'SpotPrice must be a string',
      Properties+::: { SpotPrice: SpotPrice },
    },
    '#withRamDiskId': d.fn('`withRamDiskId` RamDiskId ', [d.arg('RamDiskId', d.T.string)]),
    withRamDiskId(RamDiskId): {
      assert std.isString(RamDiskId) : 'RamDiskId must be a string',
      Properties+::: { RamDiskId: RamDiskId },
    },
    '#withInstanceMonitoring': d.fn('`withInstanceMonitoring` InstanceMonitoring ', [d.arg('InstanceMonitoring', d.T.boolean)]),
    withInstanceMonitoring(InstanceMonitoring): {
      assert std.isBoolean(InstanceMonitoring) : 'InstanceMonitoring must be a boolean',
      Properties+::: { InstanceMonitoring: InstanceMonitoring },
    },
  },
  LifecycleHook: {
    '#': d.pkg(
      name='LifecycleHook',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScaling.libsonnet',
      help='Resource Type definition for AWS::AutoScaling::LifecycleHook',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScaling::LifecycleHook Resource
        * LifecycleTransition The instance state to which you want to attach the lifecycle hook.
        * AutoScalingGroupName The name of the Auto Scaling group for the lifecycle hook.
      |||,
      args=[
        d.arg('LifecycleTransition', 'd.T.string'),
        d.arg('AutoScalingGroupName', 'd.T.string'),
      ]
    ),
    new(
      LifecycleTransition,
      AutoScalingGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LifecycleTransition) : 'LifecycleTransition must be a string',
        LifecycleTransition: LifecycleTransition,
        assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
        AutoScalingGroupName: AutoScalingGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScaling::LifecycleHook',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDefaultResult': d.fn('`withDefaultResult` DefaultResult ', [d.arg('DefaultResult', d.T.string)]),
    withDefaultResult(DefaultResult): {
      assert std.isString(DefaultResult) : 'DefaultResult must be a string',
      Properties+::: { DefaultResult: DefaultResult },
    },
    '#withHeartbeatTimeout': d.fn('`withHeartbeatTimeout` HeartbeatTimeout ', [d.arg('HeartbeatTimeout', d.T.integer)]),
    withHeartbeatTimeout(HeartbeatTimeout): {
      assert std.isNumber(HeartbeatTimeout) : 'HeartbeatTimeout must be a integer',
      Properties+::: { HeartbeatTimeout: HeartbeatTimeout },
    },
    '#withLifecycleHookName': d.fn('`withLifecycleHookName` LifecycleHookName ', [d.arg('LifecycleHookName', d.T.string)]),
    withLifecycleHookName(LifecycleHookName): {
      assert std.isString(LifecycleHookName) : 'LifecycleHookName must be a string',
      Properties+::: { LifecycleHookName: LifecycleHookName },
    },
    '#withNotificationMetadata': d.fn('`withNotificationMetadata` NotificationMetadata ', [d.arg('NotificationMetadata', d.T.string)]),
    withNotificationMetadata(NotificationMetadata): {
      assert std.isString(NotificationMetadata) : 'NotificationMetadata must be a string',
      Properties+::: { NotificationMetadata: NotificationMetadata },
    },
    '#withNotificationTargetARN': d.fn('`withNotificationTargetARN` NotificationTargetARN ', [d.arg('NotificationTargetARN', d.T.string)]),
    withNotificationTargetARN(NotificationTargetARN): {
      assert std.isString(NotificationTargetARN) : 'NotificationTargetARN must be a string',
      Properties+::: { NotificationTargetARN: NotificationTargetARN },
    },
    '#withRoleARN': d.fn('`withRoleARN` RoleARN ', [d.arg('RoleARN', d.T.string)]),
    withRoleARN(RoleARN): {
      assert std.isString(RoleARN) : 'RoleARN must be a string',
      Properties+::: { RoleARN: RoleARN },
    },
  },
  ScalingPolicy: {
    '#': d.pkg(
      name='ScalingPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScaling.libsonnet',
      help='The AWS::AutoScaling::ScalingPolicy resource specifies an Amazon EC2 Auto Scaling scaling policy so that the Auto Scaling group can scale the number of instances available for your application.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScaling::ScalingPolicy Resource
        * AutoScalingGroupName The name of the Auto Scaling group.
      |||,
      args=[
        d.arg('AutoScalingGroupName', 'd.T.string'),
      ]
    ),
    new(
      AutoScalingGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
        AutoScalingGroupName: AutoScalingGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScaling::ScalingPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMetricAggregationType': d.fn('`withMetricAggregationType` MetricAggregationType ', [d.arg('MetricAggregationType', d.T.string)]),
    withMetricAggregationType(MetricAggregationType): {
      assert std.isString(MetricAggregationType) : 'MetricAggregationType must be a string',
      Properties+::: { MetricAggregationType: MetricAggregationType },
    },
    '#withPolicyName': d.fn('`withPolicyName` PolicyName ', [d.arg('PolicyName', d.T.string)]),
    withPolicyName(PolicyName): {
      assert std.isString(PolicyName) : 'PolicyName must be a string',
      Properties+::: { PolicyName: PolicyName },
    },
    '#withPolicyType': d.fn('`withPolicyType` PolicyType ', [d.arg('PolicyType', d.T.string)]),
    withPolicyType(PolicyType): {
      assert std.isString(PolicyType) : 'PolicyType must be a string',
      Properties+::: { PolicyType: PolicyType },
    },
    '#withPredictiveScalingConfiguration': d.fn('`withPredictiveScalingConfiguration` PredictiveScalingConfiguration ', [d.arg('PredictiveScalingConfiguration', d.T.object)]),
    withPredictiveScalingConfiguration(PredictiveScalingConfiguration): {
      assert std.isObject(PredictiveScalingConfiguration) : 'PredictiveScalingConfiguration must be a object',
      Properties+::: { PredictiveScalingConfiguration: PredictiveScalingConfiguration },
    },
    '#withScalingAdjustment': d.fn('`withScalingAdjustment` ScalingAdjustment ', [d.arg('ScalingAdjustment', d.T.integer)]),
    withScalingAdjustment(ScalingAdjustment): {
      assert std.isNumber(ScalingAdjustment) : 'ScalingAdjustment must be a integer',
      Properties+::: { ScalingAdjustment: ScalingAdjustment },
    },
    '#withCooldown': d.fn('`withCooldown` Cooldown ', [d.arg('Cooldown', d.T.string)]),
    withCooldown(Cooldown): {
      assert std.isString(Cooldown) : 'Cooldown must be a string',
      Properties+::: { Cooldown: Cooldown },
    },
    '#withStepAdjustments': d.fn('`withStepAdjustments` StepAdjustments ', [d.arg('StepAdjustments', d.T.array)]),
    withStepAdjustments(StepAdjustments): {
      assert std.isArray(StepAdjustments) : 'StepAdjustments must be a array',
      Properties+::: { StepAdjustments: StepAdjustments },
    },
    '#withMinAdjustmentMagnitude': d.fn('`withMinAdjustmentMagnitude` MinAdjustmentMagnitude ', [d.arg('MinAdjustmentMagnitude', d.T.integer)]),
    withMinAdjustmentMagnitude(MinAdjustmentMagnitude): {
      assert std.isNumber(MinAdjustmentMagnitude) : 'MinAdjustmentMagnitude must be a integer',
      Properties+::: { MinAdjustmentMagnitude: MinAdjustmentMagnitude },
    },
    '#withTargetTrackingConfiguration': d.fn('`withTargetTrackingConfiguration` TargetTrackingConfiguration ', [d.arg('TargetTrackingConfiguration', d.T.object)]),
    withTargetTrackingConfiguration(TargetTrackingConfiguration): {
      assert std.isObject(TargetTrackingConfiguration) : 'TargetTrackingConfiguration must be a object',
      Properties+::: { TargetTrackingConfiguration: TargetTrackingConfiguration },
    },
    '#withEstimatedInstanceWarmup': d.fn('`withEstimatedInstanceWarmup` EstimatedInstanceWarmup ', [d.arg('EstimatedInstanceWarmup', d.T.integer)]),
    withEstimatedInstanceWarmup(EstimatedInstanceWarmup): {
      assert std.isNumber(EstimatedInstanceWarmup) : 'EstimatedInstanceWarmup must be a integer',
      Properties+::: { EstimatedInstanceWarmup: EstimatedInstanceWarmup },
    },
    '#withAdjustmentType': d.fn('`withAdjustmentType` AdjustmentType ', [d.arg('AdjustmentType', d.T.string)]),
    withAdjustmentType(AdjustmentType): {
      assert std.isString(AdjustmentType) : 'AdjustmentType must be a string',
      Properties+::: { AdjustmentType: AdjustmentType },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  ScheduledAction: {
    '#': d.pkg(
      name='ScheduledAction',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScaling.libsonnet',
      help='The AWS::AutoScaling::ScheduledAction resource specifies an Amazon EC2 Auto Scaling scheduled action so that the Auto Scaling group can change the number of instances available for your application in response to predictable load changes.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScaling::ScheduledAction Resource
        * AutoScalingGroupName The name of the Auto Scaling group.
      |||,
      args=[
        d.arg('AutoScalingGroupName', 'd.T.string'),
      ]
    ),
    new(
      AutoScalingGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
        AutoScalingGroupName: AutoScalingGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScaling::ScheduledAction',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withScheduledActionName': d.fn('`withScheduledActionName` ScheduledActionName ', [d.arg('ScheduledActionName', d.T.string)]),
    withScheduledActionName(ScheduledActionName): {
      assert std.isString(ScheduledActionName) : 'ScheduledActionName must be a string',
      Properties+::: { ScheduledActionName: ScheduledActionName },
    },
    '#withMinSize': d.fn('`withMinSize` MinSize ', [d.arg('MinSize', d.T.integer)]),
    withMinSize(MinSize): {
      assert std.isNumber(MinSize) : 'MinSize must be a integer',
      Properties+::: { MinSize: MinSize },
    },
    '#withRecurrence': d.fn('`withRecurrence` Recurrence ', [d.arg('Recurrence', d.T.string)]),
    withRecurrence(Recurrence): {
      assert std.isString(Recurrence) : 'Recurrence must be a string',
      Properties+::: { Recurrence: Recurrence },
    },
    '#withTimeZone': d.fn('`withTimeZone` TimeZone ', [d.arg('TimeZone', d.T.string)]),
    withTimeZone(TimeZone): {
      assert std.isString(TimeZone) : 'TimeZone must be a string',
      Properties+::: { TimeZone: TimeZone },
    },
    '#withEndTime': d.fn('`withEndTime` EndTime ', [d.arg('EndTime', d.T.string)]),
    withEndTime(EndTime): {
      assert std.isString(EndTime) : 'EndTime must be a string',
      Properties+::: { EndTime: EndTime },
    },
    '#withStartTime': d.fn('`withStartTime` StartTime ', [d.arg('StartTime', d.T.string)]),
    withStartTime(StartTime): {
      assert std.isString(StartTime) : 'StartTime must be a string',
      Properties+::: { StartTime: StartTime },
    },
    '#withDesiredCapacity': d.fn('`withDesiredCapacity` DesiredCapacity ', [d.arg('DesiredCapacity', d.T.integer)]),
    withDesiredCapacity(DesiredCapacity): {
      assert std.isNumber(DesiredCapacity) : 'DesiredCapacity must be a integer',
      Properties+::: { DesiredCapacity: DesiredCapacity },
    },
    '#withMaxSize': d.fn('`withMaxSize` MaxSize ', [d.arg('MaxSize', d.T.integer)]),
    withMaxSize(MaxSize): {
      assert std.isNumber(MaxSize) : 'MaxSize must be a integer',
      Properties+::: { MaxSize: MaxSize },
    },
  },
  WarmPool: {
    '#': d.pkg(
      name='WarmPool',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AutoScaling.libsonnet',
      help='Resource schema for AWS::AutoScaling::WarmPool.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AutoScaling::WarmPool Resource
        * AutoScalingGroupName 
      |||,
      args=[
        d.arg('AutoScalingGroupName', 'd.T.string'),
      ]
    ),
    new(
      AutoScalingGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
        AutoScalingGroupName: AutoScalingGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::AutoScaling::WarmPool',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMaxGroupPreparedCapacity': d.fn('`withMaxGroupPreparedCapacity` MaxGroupPreparedCapacity ', [d.arg('MaxGroupPreparedCapacity', d.T.integer)]),
    withMaxGroupPreparedCapacity(MaxGroupPreparedCapacity): {
      assert std.isNumber(MaxGroupPreparedCapacity) : 'MaxGroupPreparedCapacity must be a integer',
      Properties+::: { MaxGroupPreparedCapacity: MaxGroupPreparedCapacity },
    },
    '#withMinSize': d.fn('`withMinSize` MinSize ', [d.arg('MinSize', d.T.integer)]),
    withMinSize(MinSize): {
      assert std.isNumber(MinSize) : 'MinSize must be a integer',
      Properties+::: { MinSize: MinSize },
    },
    '#withPoolState': d.fn('`withPoolState` PoolState ', [d.arg('PoolState', d.T.string)]),
    withPoolState(PoolState): {
      assert std.isString(PoolState) : 'PoolState must be a string',
      Properties+::: { PoolState: PoolState },
    },
    '#withInstanceReusePolicy': d.fn('`withInstanceReusePolicy` InstanceReusePolicy ', [d.arg('InstanceReusePolicy', d.T.object)]),
    withInstanceReusePolicy(InstanceReusePolicy): {
      assert std.isObject(InstanceReusePolicy) : 'InstanceReusePolicy must be a object',
      Properties+::: { InstanceReusePolicy: InstanceReusePolicy },
    },
  },
}
