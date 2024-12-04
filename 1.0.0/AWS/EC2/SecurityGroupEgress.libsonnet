{
  // AWS EC2 SecurityGroupEgress
  SecurityGroupEgress: {
    new(
      IpProtocol,
      GroupId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpProtocol) : 'IpProtocol must be a string',
        IpProtocol: IpProtocol,
        assert std.isString(GroupId) : 'GroupId must be a string',
        GroupId: GroupId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::SecurityGroupEgress',
    },
    withCidrIp(CidrIp): {
      assert std.isString(CidrIp) : 'CidrIp must be a string',
      Properties+::: {
        CidrIp: CidrIp,
      },
    },
    withCidrIpv6(CidrIpv6): {
      assert std.isString(CidrIpv6) : 'CidrIpv6 must be a string',
      Properties+::: {
        CidrIpv6: CidrIpv6,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withFromPort(FromPort): {
      assert std.isNumber(FromPort) : 'FromPort must be a number',
      Properties+::: {
        FromPort: FromPort,
      },
    },
    withToPort(ToPort): {
      assert std.isNumber(ToPort) : 'ToPort must be a number',
      Properties+::: {
        ToPort: ToPort,
      },
    },
    withDestinationSecurityGroupId(DestinationSecurityGroupId): {
      assert std.isString(DestinationSecurityGroupId) : 'DestinationSecurityGroupId must be a string',
      Properties+::: {
        DestinationSecurityGroupId: DestinationSecurityGroupId,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withDestinationPrefixListId(DestinationPrefixListId): {
      assert std.isString(DestinationPrefixListId) : 'DestinationPrefixListId must be a string',
      Properties+::: {
        DestinationPrefixListId: DestinationPrefixListId,
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
