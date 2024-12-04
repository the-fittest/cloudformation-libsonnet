{
  // AWS EC2 TransitGatewayVpcAttachment
  TransitGatewayVpcAttachment: {
    new(
      SubnetIds,
      VpcId,
      TransitGatewayId,
    ): {
      local base = self,
      Properties: {
        SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isString(TransitGatewayId) : 'TransitGatewayId must be a string',
        TransitGatewayId: TransitGatewayId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::TransitGatewayVpcAttachment',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withAddSubnetIds(AddSubnetIds): {
      Properties+::: {
        AddSubnetIds: (if std.isArray(AddSubnetIds) then AddSubnetIds else [AddSubnetIds]),
      },
    },
    withAddSubnetIdsMixin(AddSubnetIds): {
      Properties+::: {
        AddSubnetIds+: (if std.isArray(AddSubnetIds) then AddSubnetIds else [AddSubnetIds]),
      },
    },
    withRemoveSubnetIds(RemoveSubnetIds): {
      Properties+::: {
        RemoveSubnetIds: (if std.isArray(RemoveSubnetIds) then RemoveSubnetIds else [RemoveSubnetIds]),
      },
    },
    withRemoveSubnetIdsMixin(RemoveSubnetIds): {
      Properties+::: {
        RemoveSubnetIds+: (if std.isArray(RemoveSubnetIds) then RemoveSubnetIds else [RemoveSubnetIds]),
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
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: {
        Options: Options,
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
  },
}
