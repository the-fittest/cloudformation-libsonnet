{
  new(
    Name,
    PlacementArn,
    Sources,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(PlacementArn) : 'PlacementArn must be a string',
      PlacementArn: PlacementArn,
      Sources: (if std.isArray(Sources) then Sources else [Sources]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::Bridge',
  },
  withBridgeArn(BridgeArn): {
    assert std.isString(BridgeArn) : 'BridgeArn must be a string',
    Properties+::: {
      BridgeArn: BridgeArn,
    },
  },
  withBridgeState(BridgeState): {
    assert std.isString(BridgeState) : 'BridgeState must be a string',
    assert BridgeState == 'CREATING' || BridgeState == 'STANDBY' || BridgeState == 'STARTING' || BridgeState == 'DEPLOYING' || BridgeState == 'ACTIVE' || BridgeState == 'STOPPING' || BridgeState == 'DELETING' || BridgeState == 'DELETED' || BridgeState == 'START_FAILED' || BridgeState == 'START_PENDING' || BridgeState == 'UPDATING' : "BridgeState should be 'CREATING' or 'STANDBY' or 'STARTING' or 'DEPLOYING' or 'ACTIVE' or 'STOPPING' or 'DELETING' or 'DELETED' or 'START_FAILED' or 'START_PENDING' or 'UPDATING'",
    Properties+::: {
      BridgeState: BridgeState,
    },
  },
  withSourceFailoverConfig(SourceFailoverConfig): {
    assert std.isObject(SourceFailoverConfig) : 'SourceFailoverConfig must be a object',
    Properties+::: {
      SourceFailoverConfig: SourceFailoverConfig,
    },
  },
  withOutputs(Outputs): {
    Properties+::: {
      Outputs: (if std.isArray(Outputs) then Outputs else [Outputs]),
    },
  },
  withOutputsMixin(Outputs): {
    Properties+::: {
      Outputs+: (if std.isArray(Outputs) then Outputs else [Outputs]),
    },
  },
  withIngressGatewayBridge(IngressGatewayBridge): {
    assert std.isObject(IngressGatewayBridge) : 'IngressGatewayBridge must be a object',
    Properties+::: {
      IngressGatewayBridge: IngressGatewayBridge,
    },
  },
  withEgressGatewayBridge(EgressGatewayBridge): {
    assert std.isObject(EgressGatewayBridge) : 'EgressGatewayBridge must be a object',
    Properties+::: {
      EgressGatewayBridge: EgressGatewayBridge,
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
