local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AutoScalingConfiguration: {
    '#': d.pkg(
      name='AutoScalingConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppRunner.libsonnet',
      help='Describes an AWS App Runner automatic configuration resource that enables automatic scaling of instances used to process web requests. You can share an auto scaling configuration across multiple services.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppRunner::AutoScalingConfiguration Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AppRunner::AutoScalingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAutoScalingConfigurationArn': d.fn('`withAutoScalingConfigurationArn` AutoScalingConfigurationArn ', [d.arg('AutoScalingConfigurationArn', d.T.string)]),
    withAutoScalingConfigurationArn(AutoScalingConfigurationArn): {
      assert std.isString(AutoScalingConfigurationArn) : 'AutoScalingConfigurationArn must be a string',
      Properties+::: { AutoScalingConfigurationArn: AutoScalingConfigurationArn },
    },
    '#withAutoScalingConfigurationName': d.fn('`withAutoScalingConfigurationName` AutoScalingConfigurationName ', [d.arg('AutoScalingConfigurationName', d.T.string)]),
    withAutoScalingConfigurationName(AutoScalingConfigurationName): {
      assert std.isString(AutoScalingConfigurationName) : 'AutoScalingConfigurationName must be a string',
      Properties+::: { AutoScalingConfigurationName: AutoScalingConfigurationName },
    },
    '#withAutoScalingConfigurationRevision': d.fn('`withAutoScalingConfigurationRevision` AutoScalingConfigurationRevision ', [d.arg('AutoScalingConfigurationRevision', d.T.integer)]),
    withAutoScalingConfigurationRevision(AutoScalingConfigurationRevision): {
      assert std.isNumber(AutoScalingConfigurationRevision) : 'AutoScalingConfigurationRevision must be a integer',
      Properties+::: { AutoScalingConfigurationRevision: AutoScalingConfigurationRevision },
    },
    '#withMaxConcurrency': d.fn('`withMaxConcurrency` MaxConcurrency ', [d.arg('MaxConcurrency', d.T.integer)]),
    withMaxConcurrency(MaxConcurrency): {
      assert std.isNumber(MaxConcurrency) : 'MaxConcurrency must be a integer',
      Properties+::: { MaxConcurrency: MaxConcurrency },
    },
    '#withMaxSize': d.fn('`withMaxSize` MaxSize ', [d.arg('MaxSize', d.T.integer)]),
    withMaxSize(MaxSize): {
      assert std.isNumber(MaxSize) : 'MaxSize must be a integer',
      Properties+::: { MaxSize: MaxSize },
    },
    '#withMinSize': d.fn('`withMinSize` MinSize ', [d.arg('MinSize', d.T.integer)]),
    withMinSize(MinSize): {
      assert std.isNumber(MinSize) : 'MinSize must be a integer',
      Properties+::: { MinSize: MinSize },
    },
    '#withLatest': d.fn('`withLatest` Latest ', [d.arg('Latest', d.T.boolean)]),
    withLatest(Latest): {
      assert std.isBoolean(Latest) : 'Latest must be a boolean',
      Properties+::: { Latest: Latest },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ObservabilityConfiguration: {
    '#': d.pkg(
      name='ObservabilityConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppRunner.libsonnet',
      help='The AWS::AppRunner::ObservabilityConfiguration resourceis an AWS App Runner resource type that specifies an App Runner observability configuration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppRunner::ObservabilityConfiguration Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::AppRunner::ObservabilityConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withObservabilityConfigurationArn': d.fn('`withObservabilityConfigurationArn` ObservabilityConfigurationArn ', [d.arg('ObservabilityConfigurationArn', d.T.string)]),
    withObservabilityConfigurationArn(ObservabilityConfigurationArn): {
      assert std.isString(ObservabilityConfigurationArn) : 'ObservabilityConfigurationArn must be a string',
      Properties+::: { ObservabilityConfigurationArn: ObservabilityConfigurationArn },
    },
    '#withObservabilityConfigurationName': d.fn('`withObservabilityConfigurationName` ObservabilityConfigurationName ', [d.arg('ObservabilityConfigurationName', d.T.string)]),
    withObservabilityConfigurationName(ObservabilityConfigurationName): {
      assert std.isString(ObservabilityConfigurationName) : 'ObservabilityConfigurationName must be a string',
      Properties+::: { ObservabilityConfigurationName: ObservabilityConfigurationName },
    },
    '#withObservabilityConfigurationRevision': d.fn('`withObservabilityConfigurationRevision` ObservabilityConfigurationRevision ', [d.arg('ObservabilityConfigurationRevision', d.T.integer)]),
    withObservabilityConfigurationRevision(ObservabilityConfigurationRevision): {
      assert std.isNumber(ObservabilityConfigurationRevision) : 'ObservabilityConfigurationRevision must be a integer',
      Properties+::: { ObservabilityConfigurationRevision: ObservabilityConfigurationRevision },
    },
    '#withLatest': d.fn('`withLatest` Latest ', [d.arg('Latest', d.T.boolean)]),
    withLatest(Latest): {
      assert std.isBoolean(Latest) : 'Latest must be a boolean',
      Properties+::: { Latest: Latest },
    },
    '#withTraceConfiguration': d.fn('`withTraceConfiguration` TraceConfiguration ', [d.arg('TraceConfiguration', d.T.object)]),
    withTraceConfiguration(TraceConfiguration): {
      assert std.isObject(TraceConfiguration) : 'TraceConfiguration must be a object',
      Properties+::: { TraceConfiguration: TraceConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Service: {
    '#': d.pkg(
      name='Service',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppRunner.libsonnet',
      help='The AWS::AppRunner::Service resource specifies an AppRunner Service.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppRunner::Service Resource
        * SourceConfiguration 
      |||,
      args=[
        d.arg('SourceConfiguration', 'd.T.object'),
      ]
    ),
    new(
      SourceConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(SourceConfiguration) : 'SourceConfiguration must be a object',
        SourceConfiguration: SourceConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::AppRunner::Service',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withServiceName': d.fn('`withServiceName` ServiceName ', [d.arg('ServiceName', d.T.string)]),
    withServiceName(ServiceName): {
      assert std.isString(ServiceName) : 'ServiceName must be a string',
      Properties+::: { ServiceName: ServiceName },
    },
    '#withServiceId': d.fn('`withServiceId` ServiceId ', [d.arg('ServiceId', d.T.string)]),
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: { ServiceId: ServiceId },
    },
    '#withServiceArn': d.fn('`withServiceArn` ServiceArn ', [d.arg('ServiceArn', d.T.string)]),
    withServiceArn(ServiceArn): {
      assert std.isString(ServiceArn) : 'ServiceArn must be a string',
      Properties+::: { ServiceArn: ServiceArn },
    },
    '#withServiceUrl': d.fn('`withServiceUrl` ServiceUrl ', [d.arg('ServiceUrl', d.T.string)]),
    withServiceUrl(ServiceUrl): {
      assert std.isString(ServiceUrl) : 'ServiceUrl must be a string',
      Properties+::: { ServiceUrl: ServiceUrl },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withInstanceConfiguration': d.fn('`withInstanceConfiguration` InstanceConfiguration ', [d.arg('InstanceConfiguration', d.T.object)]),
    withInstanceConfiguration(InstanceConfiguration): {
      assert std.isObject(InstanceConfiguration) : 'InstanceConfiguration must be a object',
      Properties+::: { InstanceConfiguration: InstanceConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEncryptionConfiguration': d.fn('`withEncryptionConfiguration` EncryptionConfiguration ', [d.arg('EncryptionConfiguration', d.T.object)]),
    withEncryptionConfiguration(EncryptionConfiguration): {
      assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
      Properties+::: { EncryptionConfiguration: EncryptionConfiguration },
    },
    '#withHealthCheckConfiguration': d.fn('`withHealthCheckConfiguration` HealthCheckConfiguration ', [d.arg('HealthCheckConfiguration', d.T.object)]),
    withHealthCheckConfiguration(HealthCheckConfiguration): {
      assert std.isObject(HealthCheckConfiguration) : 'HealthCheckConfiguration must be a object',
      Properties+::: { HealthCheckConfiguration: HealthCheckConfiguration },
    },
    '#withObservabilityConfiguration': d.fn('`withObservabilityConfiguration` ObservabilityConfiguration ', [d.arg('ObservabilityConfiguration', d.T.object)]),
    withObservabilityConfiguration(ObservabilityConfiguration): {
      assert std.isObject(ObservabilityConfiguration) : 'ObservabilityConfiguration must be a object',
      Properties+::: { ObservabilityConfiguration: ObservabilityConfiguration },
    },
    '#withAutoScalingConfigurationArn': d.fn('`withAutoScalingConfigurationArn` AutoScalingConfigurationArn ', [d.arg('AutoScalingConfigurationArn', d.T.string)]),
    withAutoScalingConfigurationArn(AutoScalingConfigurationArn): {
      assert std.isString(AutoScalingConfigurationArn) : 'AutoScalingConfigurationArn must be a string',
      Properties+::: { AutoScalingConfigurationArn: AutoScalingConfigurationArn },
    },
    '#withNetworkConfiguration': d.fn('`withNetworkConfiguration` NetworkConfiguration ', [d.arg('NetworkConfiguration', d.T.object)]),
    withNetworkConfiguration(NetworkConfiguration): {
      assert std.isObject(NetworkConfiguration) : 'NetworkConfiguration must be a object',
      Properties+::: { NetworkConfiguration: NetworkConfiguration },
    },
  },
  VpcConnector: {
    '#': d.pkg(
      name='VpcConnector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppRunner.libsonnet',
      help='The AWS::AppRunner::VpcConnector resource specifies an App Runner VpcConnector.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppRunner::VpcConnector Resource
        * Subnets A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
      |||,
      args=[
        d.arg('Subnets', 'd.T.array'),
      ]
    ),
    new(
      Subnets,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Subnets) : 'Subnets must be a array',
        Subnets: Subnets,
      },
      DependsOn:: [],
      Type: 'AWS::AppRunner::VpcConnector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVpcConnectorName': d.fn('`withVpcConnectorName` VpcConnectorName ', [d.arg('VpcConnectorName', d.T.string)]),
    withVpcConnectorName(VpcConnectorName): {
      assert std.isString(VpcConnectorName) : 'VpcConnectorName must be a string',
      Properties+::: { VpcConnectorName: VpcConnectorName },
    },
    '#withVpcConnectorArn': d.fn('`withVpcConnectorArn` VpcConnectorArn ', [d.arg('VpcConnectorArn', d.T.string)]),
    withVpcConnectorArn(VpcConnectorArn): {
      assert std.isString(VpcConnectorArn) : 'VpcConnectorArn must be a string',
      Properties+::: { VpcConnectorArn: VpcConnectorArn },
    },
    '#withVpcConnectorRevision': d.fn('`withVpcConnectorRevision` VpcConnectorRevision ', [d.arg('VpcConnectorRevision', d.T.integer)]),
    withVpcConnectorRevision(VpcConnectorRevision): {
      assert std.isNumber(VpcConnectorRevision) : 'VpcConnectorRevision must be a integer',
      Properties+::: { VpcConnectorRevision: VpcConnectorRevision },
    },
    '#withSecurityGroups': d.fn('`withSecurityGroups` SecurityGroups ', [d.arg('SecurityGroups', d.T.array)]),
    withSecurityGroups(SecurityGroups): {
      assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
      Properties+::: { SecurityGroups: SecurityGroups },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VpcIngressConnection: {
    '#': d.pkg(
      name='VpcIngressConnection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppRunner.libsonnet',
      help='The AWS::AppRunner::VpcIngressConnection resource is an App Runner resource that specifies an App Runner VpcIngressConnection.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppRunner::VpcIngressConnection Resource
        * ServiceArn The Amazon Resource Name (ARN) of the service.
        * IngressVpcConfiguration 
      |||,
      args=[
        d.arg('ServiceArn', 'd.T.string'),
        d.arg('IngressVpcConfiguration', 'd.T.object'),
      ]
    ),
    new(
      ServiceArn,
      IngressVpcConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServiceArn) : 'ServiceArn must be a string',
        ServiceArn: ServiceArn,
        assert std.isObject(IngressVpcConfiguration) : 'IngressVpcConfiguration must be a object',
        IngressVpcConfiguration: IngressVpcConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::AppRunner::VpcIngressConnection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVpcIngressConnectionArn': d.fn('`withVpcIngressConnectionArn` VpcIngressConnectionArn ', [d.arg('VpcIngressConnectionArn', d.T.string)]),
    withVpcIngressConnectionArn(VpcIngressConnectionArn): {
      assert std.isString(VpcIngressConnectionArn) : 'VpcIngressConnectionArn must be a string',
      Properties+::: { VpcIngressConnectionArn: VpcIngressConnectionArn },
    },
    '#withVpcIngressConnectionName': d.fn('`withVpcIngressConnectionName` VpcIngressConnectionName ', [d.arg('VpcIngressConnectionName', d.T.string)]),
    withVpcIngressConnectionName(VpcIngressConnectionName): {
      assert std.isString(VpcIngressConnectionName) : 'VpcIngressConnectionName must be a string',
      Properties+::: { VpcIngressConnectionName: VpcIngressConnectionName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'AVAILABLE' || Status == 'PENDING_CREATION' || Status == 'PENDING_UPDATE' || Status == 'PENDING_DELETION' || Status == 'FAILED_CREATION' || Status == 'FAILED_UPDATE' || Status == 'FAILED_DELETION' || Status == 'DELETED' : "Status must be either 'AVAILABLE' or 'PENDING_CREATION' or 'PENDING_UPDATE' or 'PENDING_DELETION' or 'FAILED_CREATION' or 'FAILED_UPDATE' or 'FAILED_DELETION' or 'DELETED'",
      Properties+::: { Status: Status },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
