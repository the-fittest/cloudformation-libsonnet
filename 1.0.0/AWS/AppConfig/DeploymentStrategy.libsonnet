{
  new(
    DeploymentDurationInMinutes,
    GrowthFactor,
    Name,
    ReplicateTo,
  ): {
    local base = self,
    Properties: {
      assert std.isNumber(DeploymentDurationInMinutes) : 'DeploymentDurationInMinutes must be a number',
      DeploymentDurationInMinutes: DeploymentDurationInMinutes,
      assert std.isNumber(GrowthFactor) : 'GrowthFactor must be a number',
      GrowthFactor: GrowthFactor,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(ReplicateTo) : 'ReplicateTo must be a string',
      assert ReplicateTo == 'NONE' || ReplicateTo == 'SSM_DOCUMENT' : "ReplicateTo should be 'NONE' or 'SSM_DOCUMENT'",
      ReplicateTo: ReplicateTo,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppConfig::DeploymentStrategy',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withFinalBakeTimeInMinutes(FinalBakeTimeInMinutes): {
    assert std.isNumber(FinalBakeTimeInMinutes) : 'FinalBakeTimeInMinutes must be a number',
    Properties+::: {
      FinalBakeTimeInMinutes: FinalBakeTimeInMinutes,
    },
  },
  withGrowthType(GrowthType): {
    assert std.isString(GrowthType) : 'GrowthType must be a string',
    assert GrowthType == 'EXPONENTIAL' || GrowthType == 'LINEAR' : "GrowthType should be 'EXPONENTIAL' or 'LINEAR'",
    Properties+::: {
      GrowthType: GrowthType,
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
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
