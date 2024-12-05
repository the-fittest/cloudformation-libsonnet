{
  new(
    SubnetIds,
    VpcId,
    TransitGatewayId,
  ): {
    local base = self,
    Properties: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else SubnetIds,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
      TransitGatewayId:
        if !std.isString(TransitGatewayId) then (error 'TransitGatewayId must be a string')
        else if std.isEmpty(TransitGatewayId) then (error 'TransitGatewayId must be not empty')
        else TransitGatewayId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TransitGatewayVpcAttachment',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAddSubnetIds(AddSubnetIds): {
    Properties+::: {
      AddSubnetIds:
        if !std.isArray(AddSubnetIds) then (error 'AddSubnetIds must be an array')
        else AddSubnetIds,
    },
  },
  setAddSubnetIdsMixin(AddSubnetIds): {
    Properties+::: {
      AddSubnetIds+: AddSubnetIds,
    },
  },
  setRemoveSubnetIds(RemoveSubnetIds): {
    Properties+::: {
      RemoveSubnetIds:
        if !std.isArray(RemoveSubnetIds) then (error 'RemoveSubnetIds must be an array')
        else RemoveSubnetIds,
    },
  },
  setRemoveSubnetIdsMixin(RemoveSubnetIds): {
    Properties+::: {
      RemoveSubnetIds+: RemoveSubnetIds,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setOptions(Options): {
    Properties+::: {
      Options:
        if !std.isObject(Options) then (error 'Options must be an object')
        else Options,
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
