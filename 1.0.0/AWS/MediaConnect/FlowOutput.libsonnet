{
  // AWS MediaConnect FlowOutput
  FlowOutput: {
    new(
      FlowArn,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowArn) : 'FlowArn must be a string',
        FlowArn: FlowArn,
        assert std.isString(Protocol) : 'Protocol must be a string',
        Protocol: Protocol,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::MediaConnect::FlowOutput',
    },
    withOutputArn(OutputArn): {
      assert std.isString(OutputArn) : 'OutputArn must be a string',
      Properties+::: {
        OutputArn: OutputArn,
      },
    },
    withCidrAllowList(CidrAllowList): {
      Properties+::: {
        CidrAllowList: (if std.isArray(CidrAllowList) then CidrAllowList else [CidrAllowList]),
      },
    },
    withCidrAllowListMixin(CidrAllowList): {
      Properties+::: {
        CidrAllowList+: (if std.isArray(CidrAllowList) then CidrAllowList else [CidrAllowList]),
      },
    },
    withEncryption(Encryption): {
      assert std.isObject(Encryption) : 'Encryption must be a object',
      Properties+::: {
        Encryption: Encryption,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withDestination(Destination): {
      assert std.isString(Destination) : 'Destination must be a string',
      Properties+::: {
        Destination: Destination,
      },
    },
    withMaxLatency(MaxLatency): {
      assert std.isNumber(MaxLatency) : 'MaxLatency must be a number',
      Properties+::: {
        MaxLatency: MaxLatency,
      },
    },
    withMinLatency(MinLatency): {
      assert std.isNumber(MinLatency) : 'MinLatency must be a number',
      Properties+::: {
        MinLatency: MinLatency,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
      },
    },
    withRemoteId(RemoteId): {
      assert std.isString(RemoteId) : 'RemoteId must be a string',
      Properties+::: {
        RemoteId: RemoteId,
      },
    },
    withSmoothingLatency(SmoothingLatency): {
      assert std.isNumber(SmoothingLatency) : 'SmoothingLatency must be a number',
      Properties+::: {
        SmoothingLatency: SmoothingLatency,
      },
    },
    withStreamId(StreamId): {
      assert std.isString(StreamId) : 'StreamId must be a string',
      Properties+::: {
        StreamId: StreamId,
      },
    },
    withVpcInterfaceAttachment(VpcInterfaceAttachment): {
      assert std.isObject(VpcInterfaceAttachment) : 'VpcInterfaceAttachment must be a object',
      Properties+::: {
        VpcInterfaceAttachment: VpcInterfaceAttachment,
      },
    },
    withMediaStreamOutputConfigurations(MediaStreamOutputConfigurations): {
      Properties+::: {
        MediaStreamOutputConfigurations: (if std.isArray(MediaStreamOutputConfigurations) then MediaStreamOutputConfigurations else [MediaStreamOutputConfigurations]),
      },
    },
    withMediaStreamOutputConfigurationsMixin(MediaStreamOutputConfigurations): {
      Properties+::: {
        MediaStreamOutputConfigurations+: (if std.isArray(MediaStreamOutputConfigurations) then MediaStreamOutputConfigurations else [MediaStreamOutputConfigurations]),
      },
    },
    withOutputStatus(OutputStatus): {
      assert std.isString(OutputStatus) : 'OutputStatus must be a string',
      Properties+::: {
        OutputStatus: OutputStatus,
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
