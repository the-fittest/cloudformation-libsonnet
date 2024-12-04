{
  // AWS CloudTrail Trail
  Trail: {
    new(
      S3BucketName,
      IsLogging,
    ): {
      local base = self,
      Properties: {
        assert std.isString(S3BucketName) : 'S3BucketName must be a string',
        S3BucketName: S3BucketName,
        assert std.isBoolean(IsLogging) : 'IsLogging must be a boolean',
        IsLogging: IsLogging,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CloudTrail::Trail',
    },
    withCloudWatchLogsLogGroupArn(CloudWatchLogsLogGroupArn): {
      assert std.isString(CloudWatchLogsLogGroupArn) : 'CloudWatchLogsLogGroupArn must be a string',
      Properties+::: {
        CloudWatchLogsLogGroupArn: CloudWatchLogsLogGroupArn,
      },
    },
    withCloudWatchLogsRoleArn(CloudWatchLogsRoleArn): {
      assert std.isString(CloudWatchLogsRoleArn) : 'CloudWatchLogsRoleArn must be a string',
      Properties+::: {
        CloudWatchLogsRoleArn: CloudWatchLogsRoleArn,
      },
    },
    withEnableLogFileValidation(EnableLogFileValidation): {
      assert std.isBoolean(EnableLogFileValidation) : 'EnableLogFileValidation must be a boolean',
      Properties+::: {
        EnableLogFileValidation: EnableLogFileValidation,
      },
    },
    withAdvancedEventSelectors(AdvancedEventSelectors): {
      Properties+::: {
        AdvancedEventSelectors: (if std.isArray(AdvancedEventSelectors) then AdvancedEventSelectors else [AdvancedEventSelectors]),
      },
    },
    withAdvancedEventSelectorsMixin(AdvancedEventSelectors): {
      Properties+::: {
        AdvancedEventSelectors+: (if std.isArray(AdvancedEventSelectors) then AdvancedEventSelectors else [AdvancedEventSelectors]),
      },
    },
    withEventSelectors(EventSelectors): {
      Properties+::: {
        EventSelectors: (if std.isArray(EventSelectors) then EventSelectors else [EventSelectors]),
      },
    },
    withEventSelectorsMixin(EventSelectors): {
      Properties+::: {
        EventSelectors+: (if std.isArray(EventSelectors) then EventSelectors else [EventSelectors]),
      },
    },
    withIncludeGlobalServiceEvents(IncludeGlobalServiceEvents): {
      assert std.isBoolean(IncludeGlobalServiceEvents) : 'IncludeGlobalServiceEvents must be a boolean',
      Properties+::: {
        IncludeGlobalServiceEvents: IncludeGlobalServiceEvents,
      },
    },
    withIsMultiRegionTrail(IsMultiRegionTrail): {
      assert std.isBoolean(IsMultiRegionTrail) : 'IsMultiRegionTrail must be a boolean',
      Properties+::: {
        IsMultiRegionTrail: IsMultiRegionTrail,
      },
    },
    withIsOrganizationTrail(IsOrganizationTrail): {
      assert std.isBoolean(IsOrganizationTrail) : 'IsOrganizationTrail must be a boolean',
      Properties+::: {
        IsOrganizationTrail: IsOrganizationTrail,
      },
    },
    withKMSKeyId(KMSKeyId): {
      assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
      Properties+::: {
        KMSKeyId: KMSKeyId,
      },
    },
    withS3KeyPrefix(S3KeyPrefix): {
      assert std.isString(S3KeyPrefix) : 'S3KeyPrefix must be a string',
      Properties+::: {
        S3KeyPrefix: S3KeyPrefix,
      },
    },
    withSnsTopicName(SnsTopicName): {
      assert std.isString(SnsTopicName) : 'SnsTopicName must be a string',
      Properties+::: {
        SnsTopicName: SnsTopicName,
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
    withTrailName(TrailName): {
      assert std.isString(TrailName) : 'TrailName must be a string',
      Properties+::: {
        TrailName: TrailName,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withSnsTopicArn(SnsTopicArn): {
      assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
      Properties+::: {
        SnsTopicArn: SnsTopicArn,
      },
    },
    withInsightSelectors(InsightSelectors): {
      Properties+::: {
        InsightSelectors: (if std.isArray(InsightSelectors) then InsightSelectors else [InsightSelectors]),
      },
    },
    withInsightSelectorsMixin(InsightSelectors): {
      Properties+::: {
        InsightSelectors+: (if std.isArray(InsightSelectors) then InsightSelectors else [InsightSelectors]),
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
