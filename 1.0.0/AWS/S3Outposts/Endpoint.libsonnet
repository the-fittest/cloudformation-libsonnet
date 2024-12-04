{
  // AWS S3Outposts Endpoint
  Endpoint: {
    new(
      OutpostId,
      SecurityGroupId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(OutpostId) : 'OutpostId must be a string',
        OutpostId: OutpostId,
        assert std.isString(SecurityGroupId) : 'SecurityGroupId must be a string',
        SecurityGroupId: SecurityGroupId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::S3Outposts::Endpoint',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: {
        CidrBlock: CidrBlock,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withNetworkInterfaces(NetworkInterfaces): {
      Properties+::: {
        NetworkInterfaces: (if std.isArray(NetworkInterfaces) then NetworkInterfaces else [NetworkInterfaces]),
      },
    },
    withNetworkInterfacesMixin(NetworkInterfaces): {
      Properties+::: {
        NetworkInterfaces+: (if std.isArray(NetworkInterfaces) then NetworkInterfaces else [NetworkInterfaces]),
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withAccessType(AccessType): {
      assert std.isString(AccessType) : 'AccessType must be a string',
      Properties+::: {
        AccessType: AccessType,
      },
    },
    withCustomerOwnedIpv4Pool(CustomerOwnedIpv4Pool): {
      assert std.isString(CustomerOwnedIpv4Pool) : 'CustomerOwnedIpv4Pool must be a string',
      Properties+::: {
        CustomerOwnedIpv4Pool: CustomerOwnedIpv4Pool,
      },
    },
    withFailedReason(FailedReason): {
      assert std.isObject(FailedReason) : 'FailedReason must be a object',
      Properties+::: {
        FailedReason: FailedReason,
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
