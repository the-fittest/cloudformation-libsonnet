{
  new(
    Name,
    Description,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::FlowSource',
  },
  setFlowArn(FlowArn): {
    Properties+::: {
      FlowArn:
        if !std.isString(FlowArn) then (error 'FlowArn must be a string')
        else if std.isEmpty(FlowArn) then (error 'FlowArn must be not empty')
        else FlowArn,
    },
  },
  setSourceArn(SourceArn): {
    Properties+::: {
      SourceArn:
        if !std.isString(SourceArn) then (error 'SourceArn must be a string')
        else if std.isEmpty(SourceArn) then (error 'SourceArn must be not empty')
        else SourceArn,
    },
  },
  setDecryption(Decryption): {
    Properties+::: {
      Decryption:
        if !std.isObject(Decryption) then (error 'Decryption must be an object')
        else if !std.objectHas(Decryption, 'RoleArn') then (error ' have attribute RoleArn')
        else Decryption,
    },
  },
  setEntitlementArn(EntitlementArn): {
    Properties+::: {
      EntitlementArn:
        if !std.isString(EntitlementArn) then (error 'EntitlementArn must be a string')
        else if std.isEmpty(EntitlementArn) then (error 'EntitlementArn must be not empty')
        else EntitlementArn,
    },
  },
  setGatewayBridgeSource(GatewayBridgeSource): {
    Properties+::: {
      GatewayBridgeSource:
        if !std.isObject(GatewayBridgeSource) then (error 'GatewayBridgeSource must be an object')
        else if !std.objectHas(GatewayBridgeSource, 'BridgeArn') then (error ' have attribute BridgeArn')
        else GatewayBridgeSource,
    },
  },
  setIngestIp(IngestIp): {
    Properties+::: {
      IngestIp:
        if !std.isString(IngestIp) then (error 'IngestIp must be a string')
        else if std.isEmpty(IngestIp) then (error 'IngestIp must be not empty')
        else IngestIp,
    },
  },
  setIngestPort(IngestPort): {
    Properties+::: {
      IngestPort:
        if !std.isNumber(IngestPort) then (error 'IngestPort must be an number')
        else IngestPort,
    },
  },
  setMaxBitrate(MaxBitrate): {
    Properties+::: {
      MaxBitrate:
        if !std.isNumber(MaxBitrate) then (error 'MaxBitrate must be an number')
        else MaxBitrate,
    },
  },
  setMaxLatency(MaxLatency): {
    Properties+::: {
      MaxLatency:
        if !std.isNumber(MaxLatency) then (error 'MaxLatency must be an number')
        else MaxLatency,
    },
  },
  setMinLatency(MinLatency): {
    Properties+::: {
      MinLatency:
        if !std.isNumber(MinLatency) then (error 'MinLatency must be an number')
        else MinLatency,
    },
  },
  setProtocol(Protocol): {
    Properties+::: {
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else if Protocol != 'zixi-push' && Protocol != 'rtp-fec' && Protocol != 'rtp' && Protocol != 'rist' && Protocol != 'srt-listener' && Protocol != 'srt-caller' then (error "Protocol should be 'zixi-push' or 'rtp-fec' or 'rtp' or 'rist' or 'srt-listener' or 'srt-caller'")
        else Protocol,
    },
  },
  setSenderIpAddress(SenderIpAddress): {
    Properties+::: {
      SenderIpAddress:
        if !std.isString(SenderIpAddress) then (error 'SenderIpAddress must be a string')
        else if std.isEmpty(SenderIpAddress) then (error 'SenderIpAddress must be not empty')
        else SenderIpAddress,
    },
  },
  setSenderControlPort(SenderControlPort): {
    Properties+::: {
      SenderControlPort:
        if !std.isNumber(SenderControlPort) then (error 'SenderControlPort must be an number')
        else SenderControlPort,
    },
  },
  setStreamId(StreamId): {
    Properties+::: {
      StreamId:
        if !std.isString(StreamId) then (error 'StreamId must be a string')
        else if std.isEmpty(StreamId) then (error 'StreamId must be not empty')
        else StreamId,
    },
  },
  setSourceIngestPort(SourceIngestPort): {
    Properties+::: {
      SourceIngestPort:
        if !std.isString(SourceIngestPort) then (error 'SourceIngestPort must be a string')
        else if std.isEmpty(SourceIngestPort) then (error 'SourceIngestPort must be not empty')
        else SourceIngestPort,
    },
  },
  setSourceListenerAddress(SourceListenerAddress): {
    Properties+::: {
      SourceListenerAddress:
        if !std.isString(SourceListenerAddress) then (error 'SourceListenerAddress must be a string')
        else if std.isEmpty(SourceListenerAddress) then (error 'SourceListenerAddress must be not empty')
        else SourceListenerAddress,
    },
  },
  setSourceListenerPort(SourceListenerPort): {
    Properties+::: {
      SourceListenerPort:
        if !std.isNumber(SourceListenerPort) then (error 'SourceListenerPort must be an number')
        else SourceListenerPort,
    },
  },
  setVpcInterfaceName(VpcInterfaceName): {
    Properties+::: {
      VpcInterfaceName:
        if !std.isString(VpcInterfaceName) then (error 'VpcInterfaceName must be a string')
        else if std.isEmpty(VpcInterfaceName) then (error 'VpcInterfaceName must be not empty')
        else VpcInterfaceName,
    },
  },
  setWhitelistCidr(WhitelistCidr): {
    Properties+::: {
      WhitelistCidr:
        if !std.isString(WhitelistCidr) then (error 'WhitelistCidr must be a string')
        else if std.isEmpty(WhitelistCidr) then (error 'WhitelistCidr must be not empty')
        else WhitelistCidr,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
