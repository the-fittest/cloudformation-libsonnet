{
  new(
    LaunchTemplateData,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(LaunchTemplateData) : 'LaunchTemplateData must be an object',
      LaunchTemplateData: LaunchTemplateData,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::LaunchTemplate',
  },
  withLaunchTemplateName(LaunchTemplateName): {
    assert std.isString(LaunchTemplateName) : 'LaunchTemplateName must be a string',
    Properties+::: {
      LaunchTemplateName: LaunchTemplateName,
    },
  },
  withVersionDescription(VersionDescription): {
    assert std.isString(VersionDescription) : 'VersionDescription must be a string',
    Properties+::: {
      VersionDescription: VersionDescription,
    },
  },
  withTagSpecifications(TagSpecifications): {
    Properties+::: {
      TagSpecifications: (if std.isArray(TagSpecifications) then TagSpecifications else [TagSpecifications]),
    },
  },
  withTagSpecificationsMixin(TagSpecifications): {
    Properties+::: {
      TagSpecifications+: (if std.isArray(TagSpecifications) then TagSpecifications else [TagSpecifications]),
    },
  },
  withLatestVersionNumber(LatestVersionNumber): {
    assert std.isString(LatestVersionNumber) : 'LatestVersionNumber must be a string',
    Properties+::: {
      LatestVersionNumber: LatestVersionNumber,
    },
  },
  withLaunchTemplateId(LaunchTemplateId): {
    assert std.isString(LaunchTemplateId) : 'LaunchTemplateId must be a string',
    Properties+::: {
      LaunchTemplateId: LaunchTemplateId,
    },
  },
  withDefaultVersionNumber(DefaultVersionNumber): {
    assert std.isString(DefaultVersionNumber) : 'DefaultVersionNumber must be a string',
    Properties+::: {
      DefaultVersionNumber: DefaultVersionNumber,
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
