{
  // AWS QuickSight VPCConnection
  VPCConnection: {
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
      Type: 'AWS::QuickSight::VPCConnection',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withAvailabilityStatus(AvailabilityStatus): {
      assert std.isString(AvailabilityStatus) : 'AvailabilityStatus must be a string',
      Properties+::: {
        AvailabilityStatus: AvailabilityStatus,
      },
    },
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: {
        AwsAccountId: AwsAccountId,
      },
    },
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: {
        CreatedTime: CreatedTime,
      },
    },
    withDnsResolvers(DnsResolvers): {
      Properties+::: {
        DnsResolvers: (if std.isArray(DnsResolvers) then DnsResolvers else [DnsResolvers]),
      },
    },
    withDnsResolversMixin(DnsResolvers): {
      Properties+::: {
        DnsResolvers+: (if std.isArray(DnsResolvers) then DnsResolvers else [DnsResolvers]),
      },
    },
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: {
        LastUpdatedTime: LastUpdatedTime,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
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
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: {
        RoleArn: RoleArn,
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withSubnetIds(SubnetIds): {
      Properties+::: {
        SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
      },
    },
    withSubnetIdsMixin(SubnetIds): {
      Properties+::: {
        SubnetIds+: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
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
    withVPCConnectionId(VPCConnectionId): {
      assert std.isString(VPCConnectionId) : 'VPCConnectionId must be a string',
      Properties+::: {
        VPCConnectionId: VPCConnectionId,
      },
    },
    withVPCId(VPCId): {
      assert std.isString(VPCId) : 'VPCId must be a string',
      Properties+::: {
        VPCId: VPCId,
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
