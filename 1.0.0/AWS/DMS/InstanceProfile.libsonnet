{
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
    Type: 'AWS::DMS::InstanceProfile',
  },
  withInstanceProfileArn(InstanceProfileArn): {
    assert std.isString(InstanceProfileArn) : 'InstanceProfileArn must be a string',
    Properties+::: {
      InstanceProfileArn: InstanceProfileArn,
    },
  },
  withInstanceProfileIdentifier(InstanceProfileIdentifier): {
    assert std.isString(InstanceProfileIdentifier) : 'InstanceProfileIdentifier must be a string',
    Properties+::: {
      InstanceProfileIdentifier: InstanceProfileIdentifier,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withKmsKeyArn(KmsKeyArn): {
    assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
    Properties+::: {
      KmsKeyArn: KmsKeyArn,
    },
  },
  withPubliclyAccessible(PubliclyAccessible): {
    assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
    Properties+::: {
      PubliclyAccessible: PubliclyAccessible,
    },
  },
  withNetworkType(NetworkType): {
    assert std.isString(NetworkType) : 'NetworkType must be a string',
    Properties+::: {
      NetworkType: NetworkType,
    },
  },
  withInstanceProfileName(InstanceProfileName): {
    assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
    Properties+::: {
      InstanceProfileName: InstanceProfileName,
    },
  },
  withInstanceProfileCreationTime(InstanceProfileCreationTime): {
    assert std.isString(InstanceProfileCreationTime) : 'InstanceProfileCreationTime must be a string',
    Properties+::: {
      InstanceProfileCreationTime: InstanceProfileCreationTime,
    },
  },
  withSubnetGroupIdentifier(SubnetGroupIdentifier): {
    assert std.isString(SubnetGroupIdentifier) : 'SubnetGroupIdentifier must be a string',
    Properties+::: {
      SubnetGroupIdentifier: SubnetGroupIdentifier,
    },
  },
  withVpcSecurityGroups(VpcSecurityGroups): {
    Properties+::: {
      VpcSecurityGroups: (if std.isArray(VpcSecurityGroups) then VpcSecurityGroups else [VpcSecurityGroups]),
    },
  },
  withVpcSecurityGroupsMixin(VpcSecurityGroups): {
    Properties+::: {
      VpcSecurityGroups+: (if std.isArray(VpcSecurityGroups) then VpcSecurityGroups else [VpcSecurityGroups]),
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
