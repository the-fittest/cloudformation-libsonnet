{
  // AWS MediaConnect Flow
  Flow: {
    new(
      Name,
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Source) : 'Source must be an object',
        Source: Source,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::MediaConnect::Flow',
    },
    withFlowArn(FlowArn): {
      assert std.isString(FlowArn) : 'FlowArn must be a string',
      Properties+::: {
        FlowArn: FlowArn,
      },
    },
    withEgressIp(EgressIp): {
      assert std.isString(EgressIp) : 'EgressIp must be a string',
      Properties+::: {
        EgressIp: EgressIp,
      },
    },
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: {
        AvailabilityZone: AvailabilityZone,
      },
    },
    withFlowAvailabilityZone(FlowAvailabilityZone): {
      assert std.isString(FlowAvailabilityZone) : 'FlowAvailabilityZone must be a string',
      Properties+::: {
        FlowAvailabilityZone: FlowAvailabilityZone,
      },
    },
    withSourceFailoverConfig(SourceFailoverConfig): {
      assert std.isObject(SourceFailoverConfig) : 'SourceFailoverConfig must be a object',
      Properties+::: {
        SourceFailoverConfig: SourceFailoverConfig,
      },
    },
    withVpcInterfaces(VpcInterfaces): {
      Properties+::: {
        VpcInterfaces: (if std.isArray(VpcInterfaces) then VpcInterfaces else [VpcInterfaces]),
      },
    },
    withVpcInterfacesMixin(VpcInterfaces): {
      Properties+::: {
        VpcInterfaces+: (if std.isArray(VpcInterfaces) then VpcInterfaces else [VpcInterfaces]),
      },
    },
    withMediaStreams(MediaStreams): {
      Properties+::: {
        MediaStreams: (if std.isArray(MediaStreams) then MediaStreams else [MediaStreams]),
      },
    },
    withMediaStreamsMixin(MediaStreams): {
      Properties+::: {
        MediaStreams+: (if std.isArray(MediaStreams) then MediaStreams else [MediaStreams]),
      },
    },
    withMaintenance(Maintenance): {
      assert std.isObject(Maintenance) : 'Maintenance must be a object',
      Properties+::: {
        Maintenance: Maintenance,
      },
    },
    withSourceMonitoringConfig(SourceMonitoringConfig): {
      assert std.isObject(SourceMonitoringConfig) : 'SourceMonitoringConfig must be a object',
      Properties+::: {
        SourceMonitoringConfig: SourceMonitoringConfig,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
