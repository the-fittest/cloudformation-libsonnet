{
  // AWS SageMaker MonitoringSchedule
  MonitoringSchedule: {
    new(
      MonitoringScheduleConfig,
      MonitoringScheduleName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(MonitoringScheduleConfig) : 'MonitoringScheduleConfig must be an object',
        MonitoringScheduleConfig: MonitoringScheduleConfig,
        assert std.isString(MonitoringScheduleName) : 'MonitoringScheduleName must be a string',
        MonitoringScheduleName: MonitoringScheduleName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::MonitoringSchedule',
    },
    withMonitoringScheduleArn(MonitoringScheduleArn): {
      assert std.isString(MonitoringScheduleArn) : 'MonitoringScheduleArn must be a string',
      Properties+::: {
        MonitoringScheduleArn: MonitoringScheduleArn,
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
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: {
        EndpointName: EndpointName,
      },
    },
    withFailureReason(FailureReason): {
      assert std.isString(FailureReason) : 'FailureReason must be a string',
      Properties+::: {
        FailureReason: FailureReason,
      },
    },
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: {
        LastModifiedTime: LastModifiedTime,
      },
    },
    withLastMonitoringExecutionSummary(LastMonitoringExecutionSummary): {
      assert std.isObject(LastMonitoringExecutionSummary) : 'LastMonitoringExecutionSummary must be a object',
      Properties+::: {
        LastMonitoringExecutionSummary: LastMonitoringExecutionSummary,
      },
    },
    withMonitoringScheduleStatus(MonitoringScheduleStatus): {
      assert std.isString(MonitoringScheduleStatus) : 'MonitoringScheduleStatus must be a string',
      Properties+::: {
        MonitoringScheduleStatus: MonitoringScheduleStatus,
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
