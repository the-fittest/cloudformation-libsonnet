{
  new(
    TransitGatewayMulticastDomainId,
    TransitGatewayAttachmentId,
    SubnetId,
  ): {
    local base = self,
    Properties: {
      TransitGatewayMulticastDomainId:
        if !std.isString(TransitGatewayMulticastDomainId) then (error 'TransitGatewayMulticastDomainId must be a string')
        else if std.isEmpty(TransitGatewayMulticastDomainId) then (error 'TransitGatewayMulticastDomainId must be not empty')
        else TransitGatewayMulticastDomainId,
      TransitGatewayAttachmentId:
        if !std.isString(TransitGatewayAttachmentId) then (error 'TransitGatewayAttachmentId must be a string')
        else if std.isEmpty(TransitGatewayAttachmentId) then (error 'TransitGatewayAttachmentId must be not empty')
        else TransitGatewayAttachmentId,
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGatewayMulticastDomainAssociation',
  },
  setResourceId(ResourceId): {
    Properties+::: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else ResourceId,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else ResourceType,
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
