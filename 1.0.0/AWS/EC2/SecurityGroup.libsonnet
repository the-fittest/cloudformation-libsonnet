{
  new(
    GroupDescription,
  ): {
    local base = self,
    Properties: {
      assert std.isString(GroupDescription) : 'GroupDescription must be a string',
      GroupDescription: GroupDescription,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::SecurityGroup',
  },
  withGroupName(GroupName): {
    assert std.isString(GroupName) : 'GroupName must be a string',
    Properties+::: {
      GroupName: GroupName,
    },
  },
  withVpcId(VpcId): {
    assert std.isString(VpcId) : 'VpcId must be a string',
    Properties+::: {
      VpcId: VpcId,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withSecurityGroupIngress(SecurityGroupIngress): {
    Properties+::: {
      SecurityGroupIngress: (if std.isArray(SecurityGroupIngress) then SecurityGroupIngress else [SecurityGroupIngress]),
    },
  },
  withSecurityGroupIngressMixin(SecurityGroupIngress): {
    Properties+::: {
      SecurityGroupIngress+: (if std.isArray(SecurityGroupIngress) then SecurityGroupIngress else [SecurityGroupIngress]),
    },
  },
  withSecurityGroupEgress(SecurityGroupEgress): {
    Properties+::: {
      SecurityGroupEgress: (if std.isArray(SecurityGroupEgress) then SecurityGroupEgress else [SecurityGroupEgress]),
    },
  },
  withSecurityGroupEgressMixin(SecurityGroupEgress): {
    Properties+::: {
      SecurityGroupEgress+: (if std.isArray(SecurityGroupEgress) then SecurityGroupEgress else [SecurityGroupEgress]),
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
  withGroupId(GroupId): {
    assert std.isString(GroupId) : 'GroupId must be a string',
    Properties+::: {
      GroupId: GroupId,
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
