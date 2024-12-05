{
  new(
    GlobalNetworkId,
    CustomerGatewayArn,
    DeviceId,
  ): {
    local base = self,
    Properties: {
      GlobalNetworkId:
        if !std.isString(GlobalNetworkId) then (error 'GlobalNetworkId must be a string')
        else if std.isEmpty(GlobalNetworkId) then (error 'GlobalNetworkId must be not empty')
        else GlobalNetworkId,
      CustomerGatewayArn:
        if !std.isString(CustomerGatewayArn) then (error 'CustomerGatewayArn must be a string')
        else if std.isEmpty(CustomerGatewayArn) then (error 'CustomerGatewayArn must be not empty')
        else CustomerGatewayArn,
      DeviceId:
        if !std.isString(DeviceId) then (error 'DeviceId must be a string')
        else if std.isEmpty(DeviceId) then (error 'DeviceId must be not empty')
        else DeviceId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::CustomerGatewayAssociation',
  },
  setLinkId(LinkId): {
    Properties+::: {
      LinkId:
        if !std.isString(LinkId) then (error 'LinkId must be a string')
        else if std.isEmpty(LinkId) then (error 'LinkId must be not empty')
        else LinkId,
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
