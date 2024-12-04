{
  new(
    Name,
    Description,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Description) : 'Description must be a string',
      Description: Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::FlowSource',
  },
  withFlowArn(FlowArn): {
    assert std.isString(FlowArn) : 'FlowArn must be a string',
    Properties+::: {
      FlowArn: FlowArn,
    },
  },
  withSourceArn(SourceArn): {
    assert std.isString(SourceArn) : 'SourceArn must be a string',
    Properties+::: {
      SourceArn: SourceArn,
    },
  },
  withDecryption(Decryption): {
    assert std.isObject(Decryption) : 'Decryption must be a object',
    Properties+::: {
      Decryption: Decryption,
    },
  },
  withEntitlementArn(EntitlementArn): {
    assert std.isString(EntitlementArn) : 'EntitlementArn must be a string',
    Properties+::: {
      EntitlementArn: EntitlementArn,
    },
  },
  withGatewayBridgeSource(GatewayBridgeSource): {
    assert std.isObject(GatewayBridgeSource) : 'GatewayBridgeSource must be a object',
    Properties+::: {
      GatewayBridgeSource: GatewayBridgeSource,
    },
  },
  withIngestIp(IngestIp): {
    assert std.isString(IngestIp) : 'IngestIp must be a string',
    Properties+::: {
      IngestIp: IngestIp,
    },
  },
  withIngestPort(IngestPort): {
    assert std.isNumber(IngestPort) : 'IngestPort must be a number',
    Properties+::: {
      IngestPort: IngestPort,
    },
  },
  withMaxBitrate(MaxBitrate): {
    assert std.isNumber(MaxBitrate) : 'MaxBitrate must be a number',
    Properties+::: {
      MaxBitrate: MaxBitrate,
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
  withProtocol(Protocol): {
    assert std.isString(Protocol) : 'Protocol must be a string',
    assert Protocol == 'zixi-push' || Protocol == 'rtp-fec' || Protocol == 'rtp' || Protocol == 'rist' || Protocol == 'srt-listener' || Protocol == 'srt-caller' : "Protocol should be 'zixi-push' or 'rtp-fec' or 'rtp' or 'rist' or 'srt-listener' or 'srt-caller'",
    Properties+::: {
      Protocol: Protocol,
    },
  },
  withSenderIpAddress(SenderIpAddress): {
    assert std.isString(SenderIpAddress) : 'SenderIpAddress must be a string',
    Properties+::: {
      SenderIpAddress: SenderIpAddress,
    },
  },
  withSenderControlPort(SenderControlPort): {
    assert std.isNumber(SenderControlPort) : 'SenderControlPort must be a number',
    Properties+::: {
      SenderControlPort: SenderControlPort,
    },
  },
  withStreamId(StreamId): {
    assert std.isString(StreamId) : 'StreamId must be a string',
    Properties+::: {
      StreamId: StreamId,
    },
  },
  withSourceIngestPort(SourceIngestPort): {
    assert std.isString(SourceIngestPort) : 'SourceIngestPort must be a string',
    Properties+::: {
      SourceIngestPort: SourceIngestPort,
    },
  },
  withSourceListenerAddress(SourceListenerAddress): {
    assert std.isString(SourceListenerAddress) : 'SourceListenerAddress must be a string',
    Properties+::: {
      SourceListenerAddress: SourceListenerAddress,
    },
  },
  withSourceListenerPort(SourceListenerPort): {
    assert std.isNumber(SourceListenerPort) : 'SourceListenerPort must be a number',
    Properties+::: {
      SourceListenerPort: SourceListenerPort,
    },
  },
  withVpcInterfaceName(VpcInterfaceName): {
    assert std.isString(VpcInterfaceName) : 'VpcInterfaceName must be a string',
    Properties+::: {
      VpcInterfaceName: VpcInterfaceName,
    },
  },
  withWhitelistCidr(WhitelistCidr): {
    assert std.isString(WhitelistCidr) : 'WhitelistCidr must be a string',
    Properties+::: {
      WhitelistCidr: WhitelistCidr,
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
}
