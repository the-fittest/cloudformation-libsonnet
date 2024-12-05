{
  new(
    Name,
    PlacementArn,
    Sources,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      PlacementArn:
        if !std.isString(PlacementArn) then (error 'PlacementArn must be a string')
        else if std.isEmpty(PlacementArn) then (error 'PlacementArn must be not empty')
        else PlacementArn,
      Sources:
        if !std.isArray(Sources) then (error 'Sources must be an array')
        else if std.length(Sources) > 2 then error ('Sources cannot have more than 2 items')
        else Sources,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::Bridge',
  },
  setBridgeArn(BridgeArn): {
    Properties+::: {
      BridgeArn:
        if !std.isString(BridgeArn) then (error 'BridgeArn must be a string')
        else if std.isEmpty(BridgeArn) then (error 'BridgeArn must be not empty')
        else BridgeArn,
    },
  },
  setBridgeState(BridgeState): {
    Properties+::: {
      BridgeState:
        if !std.isString(BridgeState) then (error 'BridgeState must be a string')
        else if std.isEmpty(BridgeState) then (error 'BridgeState must be not empty')
        else if BridgeState != 'CREATING' && BridgeState != 'STANDBY' && BridgeState != 'STARTING' && BridgeState != 'DEPLOYING' && BridgeState != 'ACTIVE' && BridgeState != 'STOPPING' && BridgeState != 'DELETING' && BridgeState != 'DELETED' && BridgeState != 'START_FAILED' && BridgeState != 'START_PENDING' && BridgeState != 'UPDATING' then (error "BridgeState should be 'CREATING' or 'STANDBY' or 'STARTING' or 'DEPLOYING' or 'ACTIVE' or 'STOPPING' or 'DELETING' or 'DELETED' or 'START_FAILED' or 'START_PENDING' or 'UPDATING'")
        else BridgeState,
    },
  },
  setSourceFailoverConfig(SourceFailoverConfig): {
    Properties+::: {
      SourceFailoverConfig:
        if !std.isObject(SourceFailoverConfig) then (error 'SourceFailoverConfig must be an object')
        else if !std.objectHas(SourceFailoverConfig, 'FailoverMode') then (error ' have attribute FailoverMode')
        else SourceFailoverConfig,
    },
  },
  setOutputs(Outputs): {
    Properties+::: {
      Outputs:
        if !std.isArray(Outputs) then (error 'Outputs must be an array')
        else if std.length(Outputs) > 2 then error ('Outputs cannot have more than 2 items')
        else Outputs,
    },
  },
  setOutputsMixin(Outputs): {
    Properties+::: {
      Outputs+: Outputs,
    },
  },
  setIngressGatewayBridge(IngressGatewayBridge): {
    Properties+::: {
      IngressGatewayBridge:
        if !std.isObject(IngressGatewayBridge) then (error 'IngressGatewayBridge must be an object')
        else if !std.objectHas(IngressGatewayBridge, 'MaxBitrate') then (error ' have attribute MaxBitrate')
        else if !std.objectHas(IngressGatewayBridge, 'MaxOutputs') then (error ' have attribute MaxOutputs')
        else IngressGatewayBridge,
    },
  },
  setEgressGatewayBridge(EgressGatewayBridge): {
    Properties+::: {
      EgressGatewayBridge:
        if !std.isObject(EgressGatewayBridge) then (error 'EgressGatewayBridge must be an object')
        else if !std.objectHas(EgressGatewayBridge, 'MaxBitrate') then (error ' have attribute MaxBitrate')
        else EgressGatewayBridge,
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
