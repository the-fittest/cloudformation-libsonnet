{
  new(
    PolicyName,
    Tier,
    Policy,
  ): {
    local base = self,
    Properties: {
      assert std.isString(PolicyName) : 'PolicyName must be a string',
      PolicyName: PolicyName,
      assert std.isString(Tier) : 'Tier must be a string',
      assert Tier == 'MissionCritical' || Tier == 'Critical' || Tier == 'Important' || Tier == 'CoreServices' || Tier == 'NonCritical' : "Tier should be 'MissionCritical' or 'Critical' or 'Important' or 'CoreServices' or 'NonCritical'",
      Tier: Tier,
      assert std.isObject(Policy) : 'Policy must be an object',
      Policy: Policy,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ResilienceHub::ResiliencyPolicy',
  },
  withPolicyDescription(PolicyDescription): {
    assert std.isString(PolicyDescription) : 'PolicyDescription must be a string',
    Properties+::: {
      PolicyDescription: PolicyDescription,
    },
  },
  withDataLocationConstraint(DataLocationConstraint): {
    assert std.isString(DataLocationConstraint) : 'DataLocationConstraint must be a string',
    assert DataLocationConstraint == 'AnyLocation' || DataLocationConstraint == 'SameContinent' || DataLocationConstraint == 'SameCountry' : "DataLocationConstraint should be 'AnyLocation' or 'SameContinent' or 'SameCountry'",
    Properties+::: {
      DataLocationConstraint: DataLocationConstraint,
    },
  },
  withPolicyArn(PolicyArn): {
    assert std.isString(PolicyArn) : 'PolicyArn must be a string',
    Properties+::: {
      PolicyArn: PolicyArn,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
