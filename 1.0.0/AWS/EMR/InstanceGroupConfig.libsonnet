{
  new(
    JobFlowId,
    InstanceCount,
    InstanceRole,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(JobFlowId) : 'JobFlowId must be a string',
      JobFlowId: JobFlowId,
      assert std.isNumber(InstanceCount) : 'InstanceCount must be a number',
      InstanceCount: InstanceCount,
      assert std.isString(InstanceRole) : 'InstanceRole must be a string',
      InstanceRole: InstanceRole,
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      InstanceType: InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::InstanceGroupConfig',
  },
  withAutoScalingPolicy(AutoScalingPolicy): {
    assert std.isObject(AutoScalingPolicy) : 'AutoScalingPolicy must be a object',
    Properties+::: {
      AutoScalingPolicy: AutoScalingPolicy,
    },
  },
  withBidPrice(BidPrice): {
    assert std.isString(BidPrice) : 'BidPrice must be a string',
    Properties+::: {
      BidPrice: BidPrice,
    },
  },
  withEbsConfiguration(EbsConfiguration): {
    assert std.isObject(EbsConfiguration) : 'EbsConfiguration must be a object',
    Properties+::: {
      EbsConfiguration: EbsConfiguration,
    },
  },
  withCustomAmiId(CustomAmiId): {
    assert std.isString(CustomAmiId) : 'CustomAmiId must be a string',
    Properties+::: {
      CustomAmiId: CustomAmiId,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withConfigurations(Configurations): {
    Properties+::: {
      Configurations: (if std.isArray(Configurations) then Configurations else [Configurations]),
    },
  },
  withConfigurationsMixin(Configurations): {
    Properties+::: {
      Configurations+: (if std.isArray(Configurations) then Configurations else [Configurations]),
    },
  },
  withMarket(Market): {
    assert std.isString(Market) : 'Market must be a string',
    Properties+::: {
      Market: Market,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
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
