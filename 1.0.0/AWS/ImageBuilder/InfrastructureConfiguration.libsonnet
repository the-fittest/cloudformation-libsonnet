{
  new(
    Name,
    InstanceProfileName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
      InstanceProfileName: InstanceProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ImageBuilder::InfrastructureConfiguration',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withInstanceTypes(InstanceTypes): {
    Properties+::: {
      InstanceTypes: (if std.isArray(InstanceTypes) then InstanceTypes else [InstanceTypes]),
    },
  },
  withInstanceTypesMixin(InstanceTypes): {
    Properties+::: {
      InstanceTypes+: (if std.isArray(InstanceTypes) then InstanceTypes else [InstanceTypes]),
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
  withLogging(Logging): {
    assert std.isObject(Logging) : 'Logging must be a object',
    Properties+::: {
      Logging: Logging,
    },
  },
  withSubnetId(SubnetId): {
    assert std.isString(SubnetId) : 'SubnetId must be a string',
    Properties+::: {
      SubnetId: SubnetId,
    },
  },
  withKeyPair(KeyPair): {
    assert std.isString(KeyPair) : 'KeyPair must be a string',
    Properties+::: {
      KeyPair: KeyPair,
    },
  },
  withTerminateInstanceOnFailure(TerminateInstanceOnFailure): {
    assert std.isBoolean(TerminateInstanceOnFailure) : 'TerminateInstanceOnFailure must be a boolean',
    Properties+::: {
      TerminateInstanceOnFailure: TerminateInstanceOnFailure,
    },
  },
  withInstanceMetadataOptions(InstanceMetadataOptions): {
    assert std.isObject(InstanceMetadataOptions) : 'InstanceMetadataOptions must be a object',
    Properties+::: {
      InstanceMetadataOptions: InstanceMetadataOptions,
    },
  },
  withSnsTopicArn(SnsTopicArn): {
    assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
    Properties+::: {
      SnsTopicArn: SnsTopicArn,
    },
  },
  withResourceTags(ResourceTags): {
    assert std.isObject(ResourceTags) : 'ResourceTags must be a object',
    Properties+::: {
      ResourceTags: ResourceTags,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withPlacement(Placement): {
    assert std.isObject(Placement) : 'Placement must be a object',
    Properties+::: {
      Placement: Placement,
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
