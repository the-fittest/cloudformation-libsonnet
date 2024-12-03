local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CapacityProvider: {
    '#': d.pkg(
      name='CapacityProvider',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='Resource Type definition for AWS::ECS::CapacityProvider.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::CapacityProvider Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ECS::CapacityProvider',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAutoScalingGroupProvider': d.fn('`withAutoScalingGroupProvider` AutoScalingGroupProvider ', [d.arg('AutoScalingGroupProvider', d.T.object)]),
    withAutoScalingGroupProvider(AutoScalingGroupProvider): {
      assert std.isObject(AutoScalingGroupProvider) : 'AutoScalingGroupProvider must be a object',
      Properties+::: { AutoScalingGroupProvider: AutoScalingGroupProvider },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='The AWS::ECS::Cluster resource creates an Amazon Elastic Container Service (Amazon ECS) cluster.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::Cluster Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ECS::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClusterSettings': d.fn('`withClusterSettings` ClusterSettings ', [d.arg('ClusterSettings', d.T.array)]),
    withClusterSettings(ClusterSettings): {
      assert std.isArray(ClusterSettings) : 'ClusterSettings must be a array',
      Properties+::: { ClusterSettings: ClusterSettings },
    },
    '#withDefaultCapacityProviderStrategy': d.fn('`withDefaultCapacityProviderStrategy` DefaultCapacityProviderStrategy ', [d.arg('DefaultCapacityProviderStrategy', d.T.array)]),
    withDefaultCapacityProviderStrategy(DefaultCapacityProviderStrategy): {
      assert std.isArray(DefaultCapacityProviderStrategy) : 'DefaultCapacityProviderStrategy must be a array',
      Properties+::: { DefaultCapacityProviderStrategy: DefaultCapacityProviderStrategy },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.object)]),
    withConfiguration(Configuration): {
      assert std.isObject(Configuration) : 'Configuration must be a object',
      Properties+::: { Configuration: Configuration },
    },
    '#withServiceConnectDefaults': d.fn('`withServiceConnectDefaults` ServiceConnectDefaults ', [d.arg('ServiceConnectDefaults', d.T.object)]),
    withServiceConnectDefaults(ServiceConnectDefaults): {
      assert std.isObject(ServiceConnectDefaults) : 'ServiceConnectDefaults must be a object',
      Properties+::: { ServiceConnectDefaults: ServiceConnectDefaults },
    },
    '#withCapacityProviders': d.fn('`withCapacityProviders` CapacityProviders ', [d.arg('CapacityProviders', d.T.array)]),
    withCapacityProviders(CapacityProviders): {
      assert std.isArray(CapacityProviders) : 'CapacityProviders must be a array',
      Properties+::: { CapacityProviders: CapacityProviders },
    },
    '#withClusterName': d.fn('`withClusterName` ClusterName ', [d.arg('ClusterName', d.T.string)]),
    withClusterName(ClusterName): {
      assert std.isString(ClusterName) : 'ClusterName must be a string',
      Properties+::: { ClusterName: ClusterName },
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
  },
  ClusterCapacityProviderAssociations: {
    '#': d.pkg(
      name='ClusterCapacityProviderAssociations',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='Associate a set of ECS Capacity Providers with a specified ECS Cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::ClusterCapacityProviderAssociations Resource
        * CapacityProviders 
        * Cluster 
        * DefaultCapacityProviderStrategy 
      |||,
      args=[
        d.arg('CapacityProviders', 'd.T.array'),
        d.arg('Cluster', 'd.T.string'),
        d.arg('DefaultCapacityProviderStrategy', 'd.T.array'),
      ]
    ),
    new(
      CapacityProviders,
      Cluster,
      DefaultCapacityProviderStrategy,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(CapacityProviders) : 'CapacityProviders must be a array',
        CapacityProviders: CapacityProviders,
        assert std.isString(Cluster) : 'Cluster must be a string',
        Cluster: Cluster,
        assert std.isArray(DefaultCapacityProviderStrategy) : 'DefaultCapacityProviderStrategy must be a array',
        DefaultCapacityProviderStrategy: DefaultCapacityProviderStrategy,
      },
      DependsOn:: [],
      Type: 'AWS::ECS::ClusterCapacityProviderAssociations',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  PrimaryTaskSet: {
    '#': d.pkg(
      name='PrimaryTaskSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='A pseudo-resource that manages which of your ECS task sets is primary.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::PrimaryTaskSet Resource
        * Cluster The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the task set in.
        * Service The short name or full Amazon Resource Name (ARN) of the service to create the task set in.
        * TaskSetId The ID or full Amazon Resource Name (ARN) of the task set.
      |||,
      args=[
        d.arg('Cluster', 'd.T.string'),
        d.arg('Service', 'd.T.string'),
        d.arg('TaskSetId', 'd.T.string'),
      ]
    ),
    new(
      Cluster,
      Service,
      TaskSetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Cluster) : 'Cluster must be a string',
        Cluster: Cluster,
        assert std.isString(Service) : 'Service must be a string',
        Service: Service,
        assert std.isString(TaskSetId) : 'TaskSetId must be a string',
        TaskSetId: TaskSetId,
      },
      DependsOn:: [],
      Type: 'AWS::ECS::PrimaryTaskSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Service: {
    '#': d.pkg(
      name='Service',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='The AWS::ECS::Service resource creates an Amazon Elastic Container Service (Amazon ECS) service that runs and maintains the requested number of tasks and associated load balancers.The stack update fails if you change any properties that require replacement and at least one ECS Service Connect ServiceConnectConfiguration property the is configured. This is because AWS CloudFormation creates the replacement service first, but each ServiceConnectService must have a name that is unique in the namespace.Starting April 15, 2023, AWS; will not onboard new customers to Amazon Elastic Inference (EI), and will help current customers migrate their workloads to options that offer better price and performance. After April 15, 2023, new customers will not be able to launch instances with Amazon EI accelerators in Amazon SageMaker, ECS, or EC2. However, customers who have used Amazon EI at least once during the past 30-day period are considered current customers and will be able to continue using the service.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::Service Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ECS::Service',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPlatformVersion': d.fn('`withPlatformVersion` PlatformVersion ', [d.arg('PlatformVersion', d.T.string)]),
    withPlatformVersion(PlatformVersion): {
      assert std.isString(PlatformVersion) : 'PlatformVersion must be a string',
      Properties+::: { PlatformVersion: PlatformVersion },
    },
    '#withPropagateTags': d.fn('`withPropagateTags` PropagateTags ', [d.arg('PropagateTags', d.T.string)]),
    withPropagateTags(PropagateTags): {
      assert std.isString(PropagateTags) : 'PropagateTags must be a string',
      assert PropagateTags == 'SERVICE' || PropagateTags == 'TASK_DEFINITION' : "PropagateTags must be either 'SERVICE' or 'TASK_DEFINITION'",
      Properties+::: { PropagateTags: PropagateTags },
    },
    '#withServiceArn': d.fn('`withServiceArn` ServiceArn ', [d.arg('ServiceArn', d.T.string)]),
    withServiceArn(ServiceArn): {
      assert std.isString(ServiceArn) : 'ServiceArn must be a string',
      Properties+::: { ServiceArn: ServiceArn },
    },
    '#withPlacementStrategies': d.fn('`withPlacementStrategies` PlacementStrategies ', [d.arg('PlacementStrategies', d.T.array)]),
    withPlacementStrategies(PlacementStrategies): {
      assert std.isArray(PlacementStrategies) : 'PlacementStrategies must be a array',
      Properties+::: { PlacementStrategies: PlacementStrategies },
    },
    '#withServiceRegistries': d.fn('`withServiceRegistries` ServiceRegistries ', [d.arg('ServiceRegistries', d.T.array)]),
    withServiceRegistries(ServiceRegistries): {
      assert std.isArray(ServiceRegistries) : 'ServiceRegistries must be a array',
      Properties+::: { ServiceRegistries: ServiceRegistries },
    },
    '#withVolumeConfigurations': d.fn('`withVolumeConfigurations` VolumeConfigurations ', [d.arg('VolumeConfigurations', d.T.array)]),
    withVolumeConfigurations(VolumeConfigurations): {
      assert std.isArray(VolumeConfigurations) : 'VolumeConfigurations must be a array',
      Properties+::: { VolumeConfigurations: VolumeConfigurations },
    },
    '#withCapacityProviderStrategy': d.fn('`withCapacityProviderStrategy` CapacityProviderStrategy ', [d.arg('CapacityProviderStrategy', d.T.array)]),
    withCapacityProviderStrategy(CapacityProviderStrategy): {
      assert std.isArray(CapacityProviderStrategy) : 'CapacityProviderStrategy must be a array',
      Properties+::: { CapacityProviderStrategy: CapacityProviderStrategy },
    },
    '#withLaunchType': d.fn('`withLaunchType` LaunchType ', [d.arg('LaunchType', d.T.string)]),
    withLaunchType(LaunchType): {
      assert std.isString(LaunchType) : 'LaunchType must be a string',
      assert LaunchType == 'EC2' || LaunchType == 'FARGATE' || LaunchType == 'EXTERNAL' : "LaunchType must be either 'EC2' or 'FARGATE' or 'EXTERNAL'",
      Properties+::: { LaunchType: LaunchType },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAvailabilityZoneRebalancing': d.fn('`withAvailabilityZoneRebalancing` AvailabilityZoneRebalancing ', [d.arg('AvailabilityZoneRebalancing', d.T.string)]),
    withAvailabilityZoneRebalancing(AvailabilityZoneRebalancing): {
      assert std.isString(AvailabilityZoneRebalancing) : 'AvailabilityZoneRebalancing must be a string',
      assert AvailabilityZoneRebalancing == 'ENABLED' || AvailabilityZoneRebalancing == 'DISABLED' : "AvailabilityZoneRebalancing must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { AvailabilityZoneRebalancing: AvailabilityZoneRebalancing },
    },
    '#withSchedulingStrategy': d.fn('`withSchedulingStrategy` SchedulingStrategy ', [d.arg('SchedulingStrategy', d.T.string)]),
    withSchedulingStrategy(SchedulingStrategy): {
      assert std.isString(SchedulingStrategy) : 'SchedulingStrategy must be a string',
      assert SchedulingStrategy == 'DAEMON' || SchedulingStrategy == 'REPLICA' : "SchedulingStrategy must be either 'DAEMON' or 'REPLICA'",
      Properties+::: { SchedulingStrategy: SchedulingStrategy },
    },
    '#withNetworkConfiguration': d.fn('`withNetworkConfiguration` NetworkConfiguration ', [d.arg('NetworkConfiguration', d.T.object)]),
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: { NetworkConfiguration: NetworkConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withHealthCheckGracePeriodSeconds': d.fn('`withHealthCheckGracePeriodSeconds` HealthCheckGracePeriodSeconds ', [d.arg('HealthCheckGracePeriodSeconds', d.T.integer)]),
    withHealthCheckGracePeriodSeconds(HealthCheckGracePeriodSeconds): {
      assert std.isNumber(HealthCheckGracePeriodSeconds) : 'HealthCheckGracePeriodSeconds must be a integer',
      Properties+::: { HealthCheckGracePeriodSeconds: HealthCheckGracePeriodSeconds },
    },
    '#withEnableECSManagedTags': d.fn('`withEnableECSManagedTags` EnableECSManagedTags ', [d.arg('EnableECSManagedTags', d.T.boolean)]),
    withEnableECSManagedTags(EnableECSManagedTags): {
      assert std.isBoolean(EnableECSManagedTags) : 'EnableECSManagedTags must be a boolean',
      Properties+::: { EnableECSManagedTags: EnableECSManagedTags },
    },
    '#withEnableExecuteCommand': d.fn('`withEnableExecuteCommand` EnableExecuteCommand ', [d.arg('EnableExecuteCommand', d.T.boolean)]),
    withEnableExecuteCommand(EnableExecuteCommand): {
      assert std.isBoolean(EnableExecuteCommand) : 'EnableExecuteCommand must be a boolean',
      Properties+::: { EnableExecuteCommand: EnableExecuteCommand },
    },
    '#withPlacementConstraints': d.fn('`withPlacementConstraints` PlacementConstraints ', [d.arg('PlacementConstraints', d.T.array)]),
    withPlacementConstraints(PlacementConstraints): {
      assert std.isArray(PlacementConstraints) : 'PlacementConstraints must be a array',
      Properties+::: { PlacementConstraints: PlacementConstraints },
    },
    '#withCluster': d.fn('`withCluster` Cluster ', [d.arg('Cluster', d.T.string)]),
    withCluster(Cluster): {
      assert std.isString(Cluster) : 'Cluster must be a string',
      Properties+::: { Cluster: Cluster },
    },
    '#withLoadBalancers': d.fn('`withLoadBalancers` LoadBalancers ', [d.arg('LoadBalancers', d.T.array)]),
    withLoadBalancers(LoadBalancers): {
      assert std.isArray(LoadBalancers) : 'LoadBalancers must be a array',
      Properties+::: { LoadBalancers: LoadBalancers },
    },
    '#withServiceConnectConfiguration': d.fn('`withServiceConnectConfiguration` ServiceConnectConfiguration ', [d.arg('ServiceConnectConfiguration', d.T.object)]),
    withServiceConnectConfiguration(ServiceConnectConfiguration): {
      assert std.isObject(ServiceConnectConfiguration) : 'ServiceConnectConfiguration must be a object',
      Properties+::: { ServiceConnectConfiguration: ServiceConnectConfiguration },
    },
    '#withDesiredCount': d.fn('`withDesiredCount` DesiredCount ', [d.arg('DesiredCount', d.T.integer)]),
    withDesiredCount(DesiredCount): {
      assert std.isNumber(DesiredCount) : 'DesiredCount must be a integer',
      Properties+::: { DesiredCount: DesiredCount },
    },
    '#withVpcLatticeConfigurations': d.fn('`withVpcLatticeConfigurations` VpcLatticeConfigurations ', [d.arg('VpcLatticeConfigurations', d.T.array)]),
    withVpcLatticeConfigurations(VpcLatticeConfigurations): {
      assert std.isArray(VpcLatticeConfigurations) : 'VpcLatticeConfigurations must be a array',
      Properties+::: { VpcLatticeConfigurations: VpcLatticeConfigurations },
    },
    '#withDeploymentController': d.fn('`withDeploymentController` DeploymentController ', [d.arg('DeploymentController', d.T.object)]),
    withDeploymentController(DeploymentController): {
      assert std.isObject(DeploymentController) : 'DeploymentController must be a object',
      Properties+::: { DeploymentController: DeploymentController },
    },
    '#withRole': d.fn('`withRole` Role ', [d.arg('Role', d.T.string)]),
    withRole(Role): {
      assert std.isString(Role) : 'Role must be a string',
      Properties+::: { Role: Role },
    },
    '#withTaskDefinition': d.fn('`withTaskDefinition` TaskDefinition ', [d.arg('TaskDefinition', d.T.string)]),
    withTaskDefinition(TaskDefinition): {
      assert std.isString(TaskDefinition) : 'TaskDefinition must be a string',
      Properties+::: { TaskDefinition: TaskDefinition },
    },
    '#withServiceName': d.fn('`withServiceName` ServiceName ', [d.arg('ServiceName', d.T.string)]),
    withServiceName(ServiceName): {
      assert std.isString(ServiceName) : 'ServiceName must be a string',
      Properties+::: { ServiceName: ServiceName },
    },
    '#withDeploymentConfiguration': d.fn('`withDeploymentConfiguration` DeploymentConfiguration ', [d.arg('DeploymentConfiguration', d.T.object)]),
    withDeploymentConfiguration(DeploymentConfiguration): {
      assert std.isObject(DeploymentConfiguration) : 'DeploymentConfiguration must be a object',
      Properties+::: { DeploymentConfiguration: DeploymentConfiguration },
    },
  },
  TaskDefinition: {
    '#': d.pkg(
      name='TaskDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='Registers a new task definition from the supplied family and containerDefinitions. Optionally, you can add data volumes to your containers with the volumes parameter. For more information about task definition parameters and defaults, see [Amazon ECS Task Definitions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html) in the *Amazon Elastic Container Service Developer Guide*. You can specify a role for your task with the taskRoleArn parameter. When you specify a role for a task, its containers can then use the latest versions of the CLI or SDKs to make API requests to the AWS services that are specified in the policy thats associated with the role. For more information, see [IAM Roles for Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html) in the *Amazon Elastic Container Service Developer Guide*. You can specify a Docker networking mode for the containers in your task definition with the networkMode parameter. If you specify the awsvpc network mode, the task is allocated an elastic network interface, and you must specify a [NetworkConfiguration](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html) when you create a service or run a task with the task definition. For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*.In the following example or examples, the Authorization header contents (AUTHPARAMS) must be replaced with an AWS Signature Version 4 signature. For more information, see [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) in the *General Reference*. You only need to learn how to sign HTTP requests if you intend to create them manually. When you use the [](https://docs.aws.amazon.com/cli/) or one of the [SDKs](https://docs.aws.amazon.com/tools/) to make requests to AWS, these tools automatically sign the requests for you, with the access key that you specify when you configure the tools. When you use these tools, you dont have to sign requests yourself.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::TaskDefinition Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ECS::TaskDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTaskRoleArn': d.fn('`withTaskRoleArn` TaskRoleArn ', [d.arg('TaskRoleArn', d.T.string)]),
    withTaskRoleArn(TaskRoleArn): {
      assert std.isString(TaskRoleArn) : 'TaskRoleArn must be a string',
      Properties+::: { TaskRoleArn: TaskRoleArn },
    },
    '#withIpcMode': d.fn('`withIpcMode` IpcMode ', [d.arg('IpcMode', d.T.string)]),
    withIpcMode(IpcMode): {
      assert std.isString(IpcMode) : 'IpcMode must be a string',
      Properties+::: { IpcMode: IpcMode },
    },
    '#withInferenceAccelerators': d.fn('`withInferenceAccelerators` InferenceAccelerators ', [d.arg('InferenceAccelerators', d.T.array)]),
    withInferenceAccelerators(InferenceAccelerators): {
      assert std.isArray(InferenceAccelerators) : 'InferenceAccelerators must be a array',
      Properties+::: { InferenceAccelerators: InferenceAccelerators },
    },
    '#withMemory': d.fn('`withMemory` Memory ', [d.arg('Memory', d.T.string)]),
    withMemory(Memory): {
      assert std.isString(Memory) : 'Memory must be a string',
      Properties+::: { Memory: Memory },
    },
    '#withPlacementConstraints': d.fn('`withPlacementConstraints` PlacementConstraints ', [d.arg('PlacementConstraints', d.T.array)]),
    withPlacementConstraints(PlacementConstraints): {
      assert std.isArray(PlacementConstraints) : 'PlacementConstraints must be a array',
      Properties+::: { PlacementConstraints: PlacementConstraints },
    },
    '#withCpu': d.fn('`withCpu` Cpu ', [d.arg('Cpu', d.T.string)]),
    withCpu(Cpu): {
      assert std.isString(Cpu) : 'Cpu must be a string',
      Properties+::: { Cpu: Cpu },
    },
    '#withRequiresCompatibilities': d.fn('`withRequiresCompatibilities` RequiresCompatibilities ', [d.arg('RequiresCompatibilities', d.T.array)]),
    withRequiresCompatibilities(RequiresCompatibilities): {
      assert std.isArray(RequiresCompatibilities) : 'RequiresCompatibilities must be a array',
      Properties+::: { RequiresCompatibilities: RequiresCompatibilities },
    },
    '#withNetworkMode': d.fn('`withNetworkMode` NetworkMode ', [d.arg('NetworkMode', d.T.string)]),
    withNetworkMode(NetworkMode): {
      assert std.isString(NetworkMode) : 'NetworkMode must be a string',
      Properties+::: { NetworkMode: NetworkMode },
    },
    '#withPidMode': d.fn('`withPidMode` PidMode ', [d.arg('PidMode', d.T.string)]),
    withPidMode(PidMode): {
      assert std.isString(PidMode) : 'PidMode must be a string',
      Properties+::: { PidMode: PidMode },
    },
    '#withEnableFaultInjection': d.fn('`withEnableFaultInjection` EnableFaultInjection ', [d.arg('EnableFaultInjection', d.T.boolean)]),
    withEnableFaultInjection(EnableFaultInjection): {
      assert std.isBoolean(EnableFaultInjection) : 'EnableFaultInjection must be a boolean',
      Properties+::: { EnableFaultInjection: EnableFaultInjection },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withRuntimePlatform': d.fn('`withRuntimePlatform` RuntimePlatform ', [d.arg('RuntimePlatform', d.T.object)]),
    withRuntimePlatform(RuntimePlatform): {
      assert std.isObject(RuntimePlatform) : 'RuntimePlatform must be a object',
      Properties+::: { RuntimePlatform: RuntimePlatform },
    },
    '#withProxyConfiguration': d.fn('`withProxyConfiguration` ProxyConfiguration ', [d.arg('ProxyConfiguration', d.T.object)]),
    withProxyConfiguration(ProxyConfiguration): {
      assert std.isObject(ProxyConfiguration) : 'ProxyConfiguration must be a object',
      Properties+::: { ProxyConfiguration: ProxyConfiguration },
    },
    '#withVolumes': d.fn('`withVolumes` Volumes ', [d.arg('Volumes', d.T.array)]),
    withVolumes(Volumes): {
      assert std.isArray(Volumes) : 'Volumes must be a array',
      Properties+::: { Volumes: Volumes },
    },
    '#withContainerDefinitions': d.fn('`withContainerDefinitions` ContainerDefinitions ', [d.arg('ContainerDefinitions', d.T.array)]),
    withContainerDefinitions(ContainerDefinitions): {
      assert std.isArray(ContainerDefinitions) : 'ContainerDefinitions must be a array',
      Properties+::: { ContainerDefinitions: ContainerDefinitions },
    },
    '#withFamily': d.fn('`withFamily` Family ', [d.arg('Family', d.T.string)]),
    withFamily(Family): {
      assert std.isString(Family) : 'Family must be a string',
      Properties+::: { Family: Family },
    },
    '#withEphemeralStorage': d.fn('`withEphemeralStorage` EphemeralStorage ', [d.arg('EphemeralStorage', d.T.object)]),
    withEphemeralStorage(EphemeralStorage): {
      assert std.isObject(EphemeralStorage) : 'EphemeralStorage must be a object',
      Properties+::: { EphemeralStorage: EphemeralStorage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTaskDefinitionArn': d.fn('`withTaskDefinitionArn` TaskDefinitionArn ', [d.arg('TaskDefinitionArn', d.T.string)]),
    withTaskDefinitionArn(TaskDefinitionArn): {
      assert std.isString(TaskDefinitionArn) : 'TaskDefinitionArn must be a string',
      Properties+::: { TaskDefinitionArn: TaskDefinitionArn },
    },
  },
  TaskSet: {
    '#': d.pkg(
      name='TaskSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECS.libsonnet',
      help='Create a task set in the specified cluster and service. This is used when a service uses the EXTERNAL deployment controller type. For more information, see https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.htmlin the Amazon Elastic Container Service Developer Guide.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECS::TaskSet Resource
        * Cluster The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the task set in.
        * Service The short name or full Amazon Resource Name (ARN) of the service to create the task set in.
        * TaskDefinition The short name or full Amazon Resource Name (ARN) of the task definition for the tasks in the task set to use.
      |||,
      args=[
        d.arg('Cluster', 'd.T.string'),
        d.arg('Service', 'd.T.string'),
        d.arg('TaskDefinition', 'd.T.string'),
      ]
    ),
    new(
      Cluster,
      Service,
      TaskDefinition,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Cluster) : 'Cluster must be a string',
        Cluster: Cluster,
        assert std.isString(Service) : 'Service must be a string',
        Service: Service,
        assert std.isString(TaskDefinition) : 'TaskDefinition must be a string',
        TaskDefinition: TaskDefinition,
      },
      DependsOn:: [],
      Type: 'AWS::ECS::TaskSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPlatformVersion': d.fn('`withPlatformVersion` PlatformVersion ', [d.arg('PlatformVersion', d.T.string)]),
    withPlatformVersion(PlatformVersion): {
      assert std.isString(PlatformVersion) : 'PlatformVersion must be a string',
      Properties+::: { PlatformVersion: PlatformVersion },
    },
    '#withExternalId': d.fn('`withExternalId` ExternalId ', [d.arg('ExternalId', d.T.string)]),
    withExternalId(ExternalId): {
      assert std.isString(ExternalId) : 'ExternalId must be a string',
      Properties+::: { ExternalId: ExternalId },
    },
    '#withLoadBalancers': d.fn('`withLoadBalancers` LoadBalancers ', [d.arg('LoadBalancers', d.T.array)]),
    withLoadBalancers(LoadBalancers): {
      assert std.isArray(LoadBalancers) : 'LoadBalancers must be a array',
      Properties+::: { LoadBalancers: LoadBalancers },
    },
    '#withScale': d.fn('`withScale` Scale ', [d.arg('Scale', d.T.object)]),
    withScale(Scale): {
      assert std.isObject(Scale) : 'Scale must be a object',
      Properties+::: { Scale: Scale },
    },
    '#withServiceRegistries': d.fn('`withServiceRegistries` ServiceRegistries ', [d.arg('ServiceRegistries', d.T.array)]),
    withServiceRegistries(ServiceRegistries): {
      assert std.isArray(ServiceRegistries) : 'ServiceRegistries must be a array',
      Properties+::: { ServiceRegistries: ServiceRegistries },
    },
    '#withCapacityProviderStrategy': d.fn('`withCapacityProviderStrategy` CapacityProviderStrategy ', [d.arg('CapacityProviderStrategy', d.T.array)]),
    withCapacityProviderStrategy(CapacityProviderStrategy): {
      assert std.isArray(CapacityProviderStrategy) : 'CapacityProviderStrategy must be a array',
      Properties+::: { CapacityProviderStrategy: CapacityProviderStrategy },
    },
    '#withLaunchType': d.fn('`withLaunchType` LaunchType ', [d.arg('LaunchType', d.T.string)]),
    withLaunchType(LaunchType): {
      assert std.isString(LaunchType) : 'LaunchType must be a string',
      assert LaunchType == 'EC2' || LaunchType == 'FARGATE' : "LaunchType must be either 'EC2' or 'FARGATE'",
      Properties+::: { LaunchType: LaunchType },
    },
    '#withNetworkConfiguration': d.fn('`withNetworkConfiguration` NetworkConfiguration ', [d.arg('NetworkConfiguration', d.T.object)]),
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: { NetworkConfiguration: NetworkConfiguration },
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
}
