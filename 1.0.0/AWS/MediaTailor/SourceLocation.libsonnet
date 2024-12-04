{
  // AWS MediaTailor SourceLocation
  SourceLocation: {
    new(
      HttpConfiguration,
      SourceLocationName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(HttpConfiguration) : 'HttpConfiguration must be an object',
        HttpConfiguration: HttpConfiguration,
        assert std.isString(SourceLocationName) : 'SourceLocationName must be a string',
        SourceLocationName: SourceLocationName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::MediaTailor::SourceLocation',
    },
    withAccessConfiguration(AccessConfiguration): {
      assert std.isObject(AccessConfiguration) : 'AccessConfiguration must be a object',
      Properties+::: {
        AccessConfiguration: AccessConfiguration,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDefaultSegmentDeliveryConfiguration(DefaultSegmentDeliveryConfiguration): {
      assert std.isObject(DefaultSegmentDeliveryConfiguration) : 'DefaultSegmentDeliveryConfiguration must be a object',
      Properties+::: {
        DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration,
      },
    },
    withSegmentDeliveryConfigurations(SegmentDeliveryConfigurations): {
      Properties+::: {
        SegmentDeliveryConfigurations: (if std.isArray(SegmentDeliveryConfigurations) then SegmentDeliveryConfigurations else [SegmentDeliveryConfigurations]),
      },
    },
    withSegmentDeliveryConfigurationsMixin(SegmentDeliveryConfigurations): {
      Properties+::: {
        SegmentDeliveryConfigurations+: (if std.isArray(SegmentDeliveryConfigurations) then SegmentDeliveryConfigurations else [SegmentDeliveryConfigurations]),
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
  },
}
