{
  // AWS Backup ReportPlan
  ReportPlan: {
    new(
      ReportDeliveryChannel,
      ReportSetting,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ReportDeliveryChannel) : 'ReportDeliveryChannel must be an object',
        ReportDeliveryChannel: ReportDeliveryChannel,
        assert std.isObject(ReportSetting) : 'ReportSetting must be an object',
        ReportSetting: ReportSetting,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Backup::ReportPlan',
    },
    withReportPlanName(ReportPlanName): {
      assert std.isString(ReportPlanName) : 'ReportPlanName must be a string',
      Properties+::: {
        ReportPlanName: ReportPlanName,
      },
    },
    withReportPlanArn(ReportPlanArn): {
      assert std.isString(ReportPlanArn) : 'ReportPlanArn must be a string',
      Properties+::: {
        ReportPlanArn: ReportPlanArn,
      },
    },
    withReportPlanDescription(ReportPlanDescription): {
      assert std.isString(ReportPlanDescription) : 'ReportPlanDescription must be a string',
      Properties+::: {
        ReportPlanDescription: ReportPlanDescription,
      },
    },
    withReportPlanTags(ReportPlanTags): {
      Properties+::: {
        ReportPlanTags: (if std.isArray(ReportPlanTags) then ReportPlanTags else [ReportPlanTags]),
      },
    },
    withReportPlanTagsMixin(ReportPlanTags): {
      Properties+::: {
        ReportPlanTags+: (if std.isArray(ReportPlanTags) then ReportPlanTags else [ReportPlanTags]),
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
