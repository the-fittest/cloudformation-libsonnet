{
  // AWS CloudTrail Dashboard
  Dashboard: {
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
      Type: 'AWS::CloudTrail::Dashboard',
    },
    withWidgets(Widgets): {
      Properties+::: {
        Widgets: (if std.isArray(Widgets) then Widgets else [Widgets]),
      },
    },
    withWidgetsMixin(Widgets): {
      Properties+::: {
        Widgets+: (if std.isArray(Widgets) then Widgets else [Widgets]),
      },
    },
    withCreatedTimestamp(CreatedTimestamp): {
      assert std.isString(CreatedTimestamp) : 'CreatedTimestamp must be a string',
      Properties+::: {
        CreatedTimestamp: CreatedTimestamp,
      },
    },
    withDashboardArn(DashboardArn): {
      assert std.isString(DashboardArn) : 'DashboardArn must be a string',
      Properties+::: {
        DashboardArn: DashboardArn,
      },
    },
    withRefreshSchedule(RefreshSchedule): {
      assert std.isObject(RefreshSchedule) : 'RefreshSchedule must be a object',
      Properties+::: {
        RefreshSchedule: RefreshSchedule,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withTerminationProtectionEnabled(TerminationProtectionEnabled): {
      assert std.isBoolean(TerminationProtectionEnabled) : 'TerminationProtectionEnabled must be a boolean',
      Properties+::: {
        TerminationProtectionEnabled: TerminationProtectionEnabled,
      },
    },
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: {
        Type: Type,
      },
    },
    withUpdatedTimestamp(UpdatedTimestamp): {
      assert std.isString(UpdatedTimestamp) : 'UpdatedTimestamp must be a string',
      Properties+::: {
        UpdatedTimestamp: UpdatedTimestamp,
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
