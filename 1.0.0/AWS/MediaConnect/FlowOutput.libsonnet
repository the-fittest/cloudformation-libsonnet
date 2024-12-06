{
  new(
    FlowArn,
    Protocol,
  ): {
    local base = self,
    Properties: {
      FlowArn:
        if !std.isString(FlowArn) then (error 'FlowArn must be a string')
        else if std.isEmpty(FlowArn) then (error 'FlowArn must be not empty')
        else FlowArn,
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else if Protocol != 'zixi-push' && Protocol != 'rtp-fec' && Protocol != 'rtp' && Protocol != 'zixi-pull' && Protocol != 'rist' && Protocol != 'fujitsu-qos' && Protocol != 'srt-listener' && Protocol != 'srt-caller' && Protocol != 'st2110-jpegxs' && Protocol != 'cdi' then (error "Protocol should be 'zixi-push' or 'rtp-fec' or 'rtp' or 'zixi-pull' or 'rist' or 'fujitsu-qos' or 'srt-listener' or 'srt-caller' or 'st2110-jpegxs' or 'cdi'")
        else Protocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::FlowOutput',
  },
  setOutputArn(OutputArn): {
    Properties+::: {
      OutputArn:
        if !std.isString(OutputArn) then (error 'OutputArn must be a string')
        else if std.isEmpty(OutputArn) then (error 'OutputArn must be not empty')
        else OutputArn,
    },
  },
  setCidrAllowList(CidrAllowList): {
    Properties+::: {
      CidrAllowList:
        if !std.isArray(CidrAllowList) then (error 'CidrAllowList must be an array')
        else CidrAllowList,
    },
  },
  pushCidrAllowList(CidrAllowList): {
    Properties+::: {
      CidrAllowList+: CidrAllowList,
    },
  },
  setEncryption(Encryption): {
    Properties+::: {
      Encryption:
        if !std.isObject(Encryption) then (error 'Encryption must be an object')
        else if !std.objectHas(Encryption, 'RoleArn') then (error ' have attribute RoleArn')
        else if !std.objectHas(Encryption, 'SecretArn') then (error ' have attribute SecretArn')
        else Encryption,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setDestination(Destination): {
    Properties+::: {
      Destination:
        if !std.isString(Destination) then (error 'Destination must be a string')
        else if std.isEmpty(Destination) then (error 'Destination must be not empty')
        else Destination,
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
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setRemoteId(RemoteId): {
    Properties+::: {
      RemoteId:
        if !std.isString(RemoteId) then (error 'RemoteId must be a string')
        else if std.isEmpty(RemoteId) then (error 'RemoteId must be not empty')
        else RemoteId,
    },
  },
  setSmoothingLatency(SmoothingLatency): {
    Properties+::: {
      SmoothingLatency:
        if !std.isNumber(SmoothingLatency) then (error 'SmoothingLatency must be an number')
        else SmoothingLatency,
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
  setVpcInterfaceAttachment(VpcInterfaceAttachment): {
    Properties+::: {
      VpcInterfaceAttachment:
        if !std.isObject(VpcInterfaceAttachment) then (error 'VpcInterfaceAttachment must be an object')
        else VpcInterfaceAttachment,
    },
  },
  setMediaStreamOutputConfigurations(MediaStreamOutputConfigurations): {
    Properties+::: {
      MediaStreamOutputConfigurations:
        if !std.isArray(MediaStreamOutputConfigurations) then (error 'MediaStreamOutputConfigurations must be an array')
        else MediaStreamOutputConfigurations,
    },
  },
  pushMediaStreamOutputConfigurations(MediaStreamOutputConfigurations): {
    Properties+::: {
      MediaStreamOutputConfigurations+: MediaStreamOutputConfigurations,
    },
  },
  setOutputStatus(OutputStatus): {
    Properties+::: {
      OutputStatus:
        if !std.isString(OutputStatus) then (error 'OutputStatus must be a string')
        else if std.isEmpty(OutputStatus) then (error 'OutputStatus must be not empty')
        else if OutputStatus != 'ENABLED' && OutputStatus != 'DISABLED' then (error "OutputStatus should be 'ENABLED' or 'DISABLED'")
        else OutputStatus,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
