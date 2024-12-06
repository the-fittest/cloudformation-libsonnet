{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGateway',
  },
  setDefaultRouteTablePropagation(DefaultRouteTablePropagation): {
    Properties+::: {
      DefaultRouteTablePropagation:
        if !std.isString(DefaultRouteTablePropagation) then (error 'DefaultRouteTablePropagation must be a string')
        else if std.isEmpty(DefaultRouteTablePropagation) then (error 'DefaultRouteTablePropagation must be not empty')
        else DefaultRouteTablePropagation,
    },
  },
  setTransitGatewayArn(TransitGatewayArn): {
    Properties+::: {
      TransitGatewayArn:
        if !std.isString(TransitGatewayArn) then (error 'TransitGatewayArn must be a string')
        else if std.isEmpty(TransitGatewayArn) then (error 'TransitGatewayArn must be not empty')
        else TransitGatewayArn,
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
  setAutoAcceptSharedAttachments(AutoAcceptSharedAttachments): {
    Properties+::: {
      AutoAcceptSharedAttachments:
        if !std.isString(AutoAcceptSharedAttachments) then (error 'AutoAcceptSharedAttachments must be a string')
        else if std.isEmpty(AutoAcceptSharedAttachments) then (error 'AutoAcceptSharedAttachments must be not empty')
        else AutoAcceptSharedAttachments,
    },
  },
  setDefaultRouteTableAssociation(DefaultRouteTableAssociation): {
    Properties+::: {
      DefaultRouteTableAssociation:
        if !std.isString(DefaultRouteTableAssociation) then (error 'DefaultRouteTableAssociation must be a string')
        else if std.isEmpty(DefaultRouteTableAssociation) then (error 'DefaultRouteTableAssociation must be not empty')
        else DefaultRouteTableAssociation,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setVpnEcmpSupport(VpnEcmpSupport): {
    Properties+::: {
      VpnEcmpSupport:
        if !std.isString(VpnEcmpSupport) then (error 'VpnEcmpSupport must be a string')
        else if std.isEmpty(VpnEcmpSupport) then (error 'VpnEcmpSupport must be not empty')
        else VpnEcmpSupport,
    },
  },
  setDnsSupport(DnsSupport): {
    Properties+::: {
      DnsSupport:
        if !std.isString(DnsSupport) then (error 'DnsSupport must be a string')
        else if std.isEmpty(DnsSupport) then (error 'DnsSupport must be not empty')
        else DnsSupport,
    },
  },
  setSecurityGroupReferencingSupport(SecurityGroupReferencingSupport): {
    Properties+::: {
      SecurityGroupReferencingSupport:
        if !std.isString(SecurityGroupReferencingSupport) then (error 'SecurityGroupReferencingSupport must be a string')
        else if std.isEmpty(SecurityGroupReferencingSupport) then (error 'SecurityGroupReferencingSupport must be not empty')
        else SecurityGroupReferencingSupport,
    },
  },
  setMulticastSupport(MulticastSupport): {
    Properties+::: {
      MulticastSupport:
        if !std.isString(MulticastSupport) then (error 'MulticastSupport must be a string')
        else if std.isEmpty(MulticastSupport) then (error 'MulticastSupport must be not empty')
        else MulticastSupport,
    },
  },
  setAmazonSideAsn(AmazonSideAsn): {
    Properties+::: {
      AmazonSideAsn:
        if !std.isNumber(AmazonSideAsn) then (error 'AmazonSideAsn must be an number')
        else AmazonSideAsn,
    },
  },
  setTransitGatewayCidrBlocks(TransitGatewayCidrBlocks): {
    Properties+::: {
      TransitGatewayCidrBlocks:
        if !std.isArray(TransitGatewayCidrBlocks) then (error 'TransitGatewayCidrBlocks must be an array')
        else TransitGatewayCidrBlocks,
    },
  },
  pushTransitGatewayCidrBlocks(TransitGatewayCidrBlocks): {
    Properties+::: {
      TransitGatewayCidrBlocks+: TransitGatewayCidrBlocks,
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
  setAssociationDefaultRouteTableId(AssociationDefaultRouteTableId): {
    Properties+::: {
      AssociationDefaultRouteTableId:
        if !std.isString(AssociationDefaultRouteTableId) then (error 'AssociationDefaultRouteTableId must be a string')
        else if std.isEmpty(AssociationDefaultRouteTableId) then (error 'AssociationDefaultRouteTableId must be not empty')
        else AssociationDefaultRouteTableId,
    },
  },
  setPropagationDefaultRouteTableId(PropagationDefaultRouteTableId): {
    Properties+::: {
      PropagationDefaultRouteTableId:
        if !std.isString(PropagationDefaultRouteTableId) then (error 'PropagationDefaultRouteTableId must be a string')
        else if std.isEmpty(PropagationDefaultRouteTableId) then (error 'PropagationDefaultRouteTableId must be not empty')
        else PropagationDefaultRouteTableId,
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
