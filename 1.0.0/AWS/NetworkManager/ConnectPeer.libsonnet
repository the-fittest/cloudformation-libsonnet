{
  new(
    ConnectAttachmentId,
    PeerAddress,
  ): {
    local base = self,
    Properties: {
      ConnectAttachmentId:
        if !std.isString(ConnectAttachmentId) then (error 'ConnectAttachmentId must be a string')
        else if std.isEmpty(ConnectAttachmentId) then (error 'ConnectAttachmentId must be not empty')
        else ConnectAttachmentId,
      PeerAddress:
        if !std.isString(PeerAddress) then (error 'PeerAddress must be a string')
        else if std.isEmpty(PeerAddress) then (error 'PeerAddress must be not empty')
        else PeerAddress,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::ConnectPeer',
  },
  setCoreNetworkAddress(CoreNetworkAddress): {
    Properties+::: {
      CoreNetworkAddress:
        if !std.isString(CoreNetworkAddress) then (error 'CoreNetworkAddress must be a string')
        else if std.isEmpty(CoreNetworkAddress) then (error 'CoreNetworkAddress must be not empty')
        else CoreNetworkAddress,
    },
  },
  setBgpOptions(BgpOptions): {
    Properties+::: {
      BgpOptions:
        if !std.isObject(BgpOptions) then (error 'BgpOptions must be an object')
        else BgpOptions,
    },
  },
  setInsideCidrBlocks(InsideCidrBlocks): {
    Properties+::: {
      InsideCidrBlocks:
        if !std.isArray(InsideCidrBlocks) then (error 'InsideCidrBlocks must be an array')
        else InsideCidrBlocks,
    },
  },
  pushInsideCidrBlocks(InsideCidrBlocks): {
    Properties+::: {
      InsideCidrBlocks+: InsideCidrBlocks,
    },
  },
  setCoreNetworkId(CoreNetworkId): {
    Properties+::: {
      CoreNetworkId:
        if !std.isString(CoreNetworkId) then (error 'CoreNetworkId must be a string')
        else if std.isEmpty(CoreNetworkId) then (error 'CoreNetworkId must be not empty')
        else CoreNetworkId,
    },
  },
  setConnectPeerId(ConnectPeerId): {
    Properties+::: {
      ConnectPeerId:
        if !std.isString(ConnectPeerId) then (error 'ConnectPeerId must be a string')
        else if std.isEmpty(ConnectPeerId) then (error 'ConnectPeerId must be not empty')
        else ConnectPeerId,
    },
  },
  setEdgeLocation(EdgeLocation): {
    Properties+::: {
      EdgeLocation:
        if !std.isString(EdgeLocation) then (error 'EdgeLocation must be a string')
        else if std.isEmpty(EdgeLocation) then (error 'EdgeLocation must be not empty')
        else EdgeLocation,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration:
        if !std.isObject(Configuration) then (error 'Configuration must be an object')
        else Configuration,
    },
  },
  setSubnetArn(SubnetArn): {
    Properties+::: {
      SubnetArn:
        if !std.isString(SubnetArn) then (error 'SubnetArn must be a string')
        else if std.isEmpty(SubnetArn) then (error 'SubnetArn must be not empty')
        else SubnetArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
