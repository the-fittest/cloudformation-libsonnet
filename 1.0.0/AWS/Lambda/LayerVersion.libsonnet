{
  // AWS Lambda LayerVersion
  LayerVersion: {
    new(
      Content,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Content) : 'Content must be an object',
        Content: Content,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Lambda::LayerVersion',
    },
    withCompatibleRuntimes(CompatibleRuntimes): {
      Properties+::: {
        CompatibleRuntimes: (if std.isArray(CompatibleRuntimes) then CompatibleRuntimes else [CompatibleRuntimes]),
      },
    },
    withCompatibleRuntimesMixin(CompatibleRuntimes): {
      Properties+::: {
        CompatibleRuntimes+: (if std.isArray(CompatibleRuntimes) then CompatibleRuntimes else [CompatibleRuntimes]),
      },
    },
    withLicenseInfo(LicenseInfo): {
      assert std.isString(LicenseInfo) : 'LicenseInfo must be a string',
      Properties+::: {
        LicenseInfo: LicenseInfo,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withLayerName(LayerName): {
      assert std.isString(LayerName) : 'LayerName must be a string',
      Properties+::: {
        LayerName: LayerName,
      },
    },
    withLayerVersionArn(LayerVersionArn): {
      assert std.isString(LayerVersionArn) : 'LayerVersionArn must be a string',
      Properties+::: {
        LayerVersionArn: LayerVersionArn,
      },
    },
    withCompatibleArchitectures(CompatibleArchitectures): {
      Properties+::: {
        CompatibleArchitectures: (if std.isArray(CompatibleArchitectures) then CompatibleArchitectures else [CompatibleArchitectures]),
      },
    },
    withCompatibleArchitecturesMixin(CompatibleArchitectures): {
      Properties+::: {
        CompatibleArchitectures+: (if std.isArray(CompatibleArchitectures) then CompatibleArchitectures else [CompatibleArchitectures]),
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
