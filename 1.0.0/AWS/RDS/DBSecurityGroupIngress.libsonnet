{
  // AWS RDS DBSecurityGroupIngress
  DBSecurityGroupIngress: {
    new(
      DBSecurityGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBSecurityGroupName) : 'DBSecurityGroupName must be a string',
        DBSecurityGroupName: DBSecurityGroupName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RDS::DBSecurityGroupIngress',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withCIDRIP(CIDRIP): {
      assert std.isString(CIDRIP) : 'CIDRIP must be a string',
      Properties+::: {
        CIDRIP: CIDRIP,
      },
    },
    withEC2SecurityGroupId(EC2SecurityGroupId): {
      assert std.isString(EC2SecurityGroupId) : 'EC2SecurityGroupId must be a string',
      Properties+::: {
        EC2SecurityGroupId: EC2SecurityGroupId,
      },
    },
    withEC2SecurityGroupName(EC2SecurityGroupName): {
      assert std.isString(EC2SecurityGroupName) : 'EC2SecurityGroupName must be a string',
      Properties+::: {
        EC2SecurityGroupName: EC2SecurityGroupName,
      },
    },
    withEC2SecurityGroupOwnerId(EC2SecurityGroupOwnerId): {
      assert std.isString(EC2SecurityGroupOwnerId) : 'EC2SecurityGroupOwnerId must be a string',
      Properties+::: {
        EC2SecurityGroupOwnerId: EC2SecurityGroupOwnerId,
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
