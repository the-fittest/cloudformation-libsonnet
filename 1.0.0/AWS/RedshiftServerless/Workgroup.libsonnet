{
  // AWS RedshiftServerless Workgroup
  Workgroup: {
    new(
      WorkgroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkgroupName) : 'WorkgroupName must be a string',
        WorkgroupName: WorkgroupName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RedshiftServerless::Workgroup',
    },
    withNamespaceName(NamespaceName): {
      assert std.isString(NamespaceName) : 'NamespaceName must be a string',
      Properties+::: {
        NamespaceName: NamespaceName,
      },
    },
    withBaseCapacity(BaseCapacity): {
      assert std.isNumber(BaseCapacity) : 'BaseCapacity must be a number',
      Properties+::: {
        BaseCapacity: BaseCapacity,
      },
    },
    withMaxCapacity(MaxCapacity): {
      assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a number',
      Properties+::: {
        MaxCapacity: MaxCapacity,
      },
    },
    withEnhancedVpcRouting(EnhancedVpcRouting): {
      assert std.isBoolean(EnhancedVpcRouting) : 'EnhancedVpcRouting must be a boolean',
      Properties+::: {
        EnhancedVpcRouting: EnhancedVpcRouting,
      },
    },
    withConfigParameters(ConfigParameters): {
      Properties+::: {
        ConfigParameters: (if std.isArray(ConfigParameters) then ConfigParameters else [ConfigParameters]),
      },
    },
    withConfigParametersMixin(ConfigParameters): {
      Properties+::: {
        ConfigParameters+: (if std.isArray(ConfigParameters) then ConfigParameters else [ConfigParameters]),
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
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
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
    withWorkgroup(Workgroup): {
      assert std.isObject(Workgroup) : 'Workgroup must be a object',
      Properties+::: {
        Workgroup: Workgroup,
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
