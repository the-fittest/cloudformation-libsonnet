{
  // AWS DataSync Task
  Task: {
    new(
      DestinationLocationArn,
      SourceLocationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DestinationLocationArn) : 'DestinationLocationArn must be a string',
        DestinationLocationArn: DestinationLocationArn,
        assert std.isString(SourceLocationArn) : 'SourceLocationArn must be a string',
        SourceLocationArn: SourceLocationArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataSync::Task',
    },
    withExcludes(Excludes): {
      Properties+::: {
        Excludes: (if std.isArray(Excludes) then Excludes else [Excludes]),
      },
    },
    withExcludesMixin(Excludes): {
      Properties+::: {
        Excludes+: (if std.isArray(Excludes) then Excludes else [Excludes]),
      },
    },
    withIncludes(Includes): {
      Properties+::: {
        Includes: (if std.isArray(Includes) then Includes else [Includes]),
      },
    },
    withIncludesMixin(Includes): {
      Properties+::: {
        Includes+: (if std.isArray(Includes) then Includes else [Includes]),
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
    withCloudWatchLogGroupArn(CloudWatchLogGroupArn): {
      assert std.isString(CloudWatchLogGroupArn) : 'CloudWatchLogGroupArn must be a string',
      Properties+::: {
        CloudWatchLogGroupArn: CloudWatchLogGroupArn,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: {
        Options: Options,
      },
    },
    withTaskReportConfig(TaskReportConfig): {
      assert std.isObject(TaskReportConfig) : 'TaskReportConfig must be a object',
      Properties+::: {
        TaskReportConfig: TaskReportConfig,
      },
    },
    withManifestConfig(ManifestConfig): {
      assert std.isObject(ManifestConfig) : 'ManifestConfig must be a object',
      Properties+::: {
        ManifestConfig: ManifestConfig,
      },
    },
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: {
        Schedule: Schedule,
      },
    },
    withTaskArn(TaskArn): {
      assert std.isString(TaskArn) : 'TaskArn must be a string',
      Properties+::: {
        TaskArn: TaskArn,
      },
    },
    withTaskMode(TaskMode): {
      assert std.isString(TaskMode) : 'TaskMode must be a string',
      Properties+::: {
        TaskMode: TaskMode,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withSourceNetworkInterfaceArns(SourceNetworkInterfaceArns): {
      Properties+::: {
        SourceNetworkInterfaceArns: (if std.isArray(SourceNetworkInterfaceArns) then SourceNetworkInterfaceArns else [SourceNetworkInterfaceArns]),
      },
    },
    withSourceNetworkInterfaceArnsMixin(SourceNetworkInterfaceArns): {
      Properties+::: {
        SourceNetworkInterfaceArns+: (if std.isArray(SourceNetworkInterfaceArns) then SourceNetworkInterfaceArns else [SourceNetworkInterfaceArns]),
      },
    },
    withDestinationNetworkInterfaceArns(DestinationNetworkInterfaceArns): {
      Properties+::: {
        DestinationNetworkInterfaceArns: (if std.isArray(DestinationNetworkInterfaceArns) then DestinationNetworkInterfaceArns else [DestinationNetworkInterfaceArns]),
      },
    },
    withDestinationNetworkInterfaceArnsMixin(DestinationNetworkInterfaceArns): {
      Properties+::: {
        DestinationNetworkInterfaceArns+: (if std.isArray(DestinationNetworkInterfaceArns) then DestinationNetworkInterfaceArns else [DestinationNetworkInterfaceArns]),
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
