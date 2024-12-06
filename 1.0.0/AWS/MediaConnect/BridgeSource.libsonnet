{
  new(
    Name,
    BridgeArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      BridgeArn:
        if !std.isString(BridgeArn) then (error 'BridgeArn must be a string')
        else if std.isEmpty(BridgeArn) then (error 'BridgeArn must be not empty')
        else BridgeArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::BridgeSource',
  },
  setFlowSource(FlowSource): {
    Properties+::: {
      FlowSource:
        if !std.isObject(FlowSource) then (error 'FlowSource must be an object')
        else if !std.objectHas(FlowSource, 'FlowArn') then (error ' have attribute FlowArn')
        else FlowSource,
    },
  },
  setNetworkSource(NetworkSource): {
    Properties+::: {
      NetworkSource:
        if !std.isObject(NetworkSource) then (error 'NetworkSource must be an object')
        else if !std.objectHas(NetworkSource, 'Protocol') then (error ' have attribute Protocol')
        else if !std.objectHas(NetworkSource, 'MulticastIp') then (error ' have attribute MulticastIp')
        else if !std.objectHas(NetworkSource, 'Port') then (error ' have attribute Port')
        else if !std.objectHas(NetworkSource, 'NetworkName') then (error ' have attribute NetworkName')
        else NetworkSource,
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
