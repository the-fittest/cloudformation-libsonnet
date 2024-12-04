{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGateway',
  },
  withDefaultRouteTablePropagation(DefaultRouteTablePropagation): {
    assert std.isString(DefaultRouteTablePropagation) : 'DefaultRouteTablePropagation must be a string',
    Properties+::: {
      DefaultRouteTablePropagation: DefaultRouteTablePropagation,
    },
  },
  withTransitGatewayArn(TransitGatewayArn): {
    assert std.isString(TransitGatewayArn) : 'TransitGatewayArn must be a string',
    Properties+::: {
      TransitGatewayArn: TransitGatewayArn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withAutoAcceptSharedAttachments(AutoAcceptSharedAttachments): {
    assert std.isString(AutoAcceptSharedAttachments) : 'AutoAcceptSharedAttachments must be a string',
    Properties+::: {
      AutoAcceptSharedAttachments: AutoAcceptSharedAttachments,
    },
  },
  withDefaultRouteTableAssociation(DefaultRouteTableAssociation): {
    assert std.isString(DefaultRouteTableAssociation) : 'DefaultRouteTableAssociation must be a string',
    Properties+::: {
      DefaultRouteTableAssociation: DefaultRouteTableAssociation,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withVpnEcmpSupport(VpnEcmpSupport): {
    assert std.isString(VpnEcmpSupport) : 'VpnEcmpSupport must be a string',
    Properties+::: {
      VpnEcmpSupport: VpnEcmpSupport,
    },
  },
  withDnsSupport(DnsSupport): {
    assert std.isString(DnsSupport) : 'DnsSupport must be a string',
    Properties+::: {
      DnsSupport: DnsSupport,
    },
  },
  withSecurityGroupReferencingSupport(SecurityGroupReferencingSupport): {
    assert std.isString(SecurityGroupReferencingSupport) : 'SecurityGroupReferencingSupport must be a string',
    Properties+::: {
      SecurityGroupReferencingSupport: SecurityGroupReferencingSupport,
    },
  },
  withMulticastSupport(MulticastSupport): {
    assert std.isString(MulticastSupport) : 'MulticastSupport must be a string',
    Properties+::: {
      MulticastSupport: MulticastSupport,
    },
  },
  withAmazonSideAsn(AmazonSideAsn): {
    assert std.isNumber(AmazonSideAsn) : 'AmazonSideAsn must be a number',
    Properties+::: {
      AmazonSideAsn: AmazonSideAsn,
    },
  },
  withTransitGatewayCidrBlocks(TransitGatewayCidrBlocks): {
    Properties+::: {
      TransitGatewayCidrBlocks: (if std.isArray(TransitGatewayCidrBlocks) then TransitGatewayCidrBlocks else [TransitGatewayCidrBlocks]),
    },
  },
  withTransitGatewayCidrBlocksMixin(TransitGatewayCidrBlocks): {
    Properties+::: {
      TransitGatewayCidrBlocks+: (if std.isArray(TransitGatewayCidrBlocks) then TransitGatewayCidrBlocks else [TransitGatewayCidrBlocks]),
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
  withAssociationDefaultRouteTableId(AssociationDefaultRouteTableId): {
    assert std.isString(AssociationDefaultRouteTableId) : 'AssociationDefaultRouteTableId must be a string',
    Properties+::: {
      AssociationDefaultRouteTableId: AssociationDefaultRouteTableId,
    },
  },
  withPropagationDefaultRouteTableId(PropagationDefaultRouteTableId): {
    assert std.isString(PropagationDefaultRouteTableId) : 'PropagationDefaultRouteTableId must be a string',
    Properties+::: {
      PropagationDefaultRouteTableId: PropagationDefaultRouteTableId,
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
