{
  new(
    LocalGatewayRouteTableId,
    LocalGatewayVirtualInterfaceGroupId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(LocalGatewayRouteTableId) : 'LocalGatewayRouteTableId must be a string',
      LocalGatewayRouteTableId: LocalGatewayRouteTableId,
      assert std.isString(LocalGatewayVirtualInterfaceGroupId) : 'LocalGatewayVirtualInterfaceGroupId must be a string',
      LocalGatewayVirtualInterfaceGroupId: LocalGatewayVirtualInterfaceGroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
  },
  withLocalGatewayRouteTableVirtualInterfaceGroupAssociationId(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId): {
    assert std.isString(LocalGatewayRouteTableVirtualInterfaceGroupAssociationId) : 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId must be a string',
    Properties+::: {
      LocalGatewayRouteTableVirtualInterfaceGroupAssociationId: LocalGatewayRouteTableVirtualInterfaceGroupAssociationId,
    },
  },
  withLocalGatewayId(LocalGatewayId): {
    assert std.isString(LocalGatewayId) : 'LocalGatewayId must be a string',
    Properties+::: {
      LocalGatewayId: LocalGatewayId,
    },
  },
  withLocalGatewayRouteTableArn(LocalGatewayRouteTableArn): {
    assert std.isString(LocalGatewayRouteTableArn) : 'LocalGatewayRouteTableArn must be a string',
    Properties+::: {
      LocalGatewayRouteTableArn: LocalGatewayRouteTableArn,
    },
  },
  withOwnerId(OwnerId): {
    assert std.isString(OwnerId) : 'OwnerId must be a string',
    Properties+::: {
      OwnerId: OwnerId,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
