{
  new(
    QueryString,
    ScheduleConfiguration,
    NotificationConfiguration,
    ScheduledQueryExecutionRoleArn,
    ErrorReportConfiguration,
  ): {
    local base = self,
    Properties: {
      assert std.isString(QueryString) : 'QueryString must be a string',
      QueryString: QueryString,
      assert std.isObject(ScheduleConfiguration) : 'ScheduleConfiguration must be an object',
      ScheduleConfiguration: ScheduleConfiguration,
      assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be an object',
      NotificationConfiguration: NotificationConfiguration,
      assert std.isString(ScheduledQueryExecutionRoleArn) : 'ScheduledQueryExecutionRoleArn must be a string',
      ScheduledQueryExecutionRoleArn: ScheduledQueryExecutionRoleArn,
      assert std.isObject(ErrorReportConfiguration) : 'ErrorReportConfiguration must be an object',
      ErrorReportConfiguration: ErrorReportConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Timestream::ScheduledQuery',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withScheduledQueryName(ScheduledQueryName): {
    assert std.isString(ScheduledQueryName) : 'ScheduledQueryName must be a string',
    Properties+::: {
      ScheduledQueryName: ScheduledQueryName,
    },
  },
  withClientToken(ClientToken): {
    assert std.isString(ClientToken) : 'ClientToken must be a string',
    Properties+::: {
      ClientToken: ClientToken,
    },
  },
  withTargetConfiguration(TargetConfiguration): {
    assert std.isObject(TargetConfiguration) : 'TargetConfiguration must be a object',
    Properties+::: {
      TargetConfiguration: TargetConfiguration,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withSQName(SQName): {
    assert std.isString(SQName) : 'SQName must be a string',
    Properties+::: {
      SQName: SQName,
    },
  },
  withSQQueryString(SQQueryString): {
    assert std.isString(SQQueryString) : 'SQQueryString must be a string',
    Properties+::: {
      SQQueryString: SQQueryString,
    },
  },
  withSQScheduleConfiguration(SQScheduleConfiguration): {
    assert std.isString(SQScheduleConfiguration) : 'SQScheduleConfiguration must be a string',
    Properties+::: {
      SQScheduleConfiguration: SQScheduleConfiguration,
    },
  },
  withSQNotificationConfiguration(SQNotificationConfiguration): {
    assert std.isString(SQNotificationConfiguration) : 'SQNotificationConfiguration must be a string',
    Properties+::: {
      SQNotificationConfiguration: SQNotificationConfiguration,
    },
  },
  withSQScheduledQueryExecutionRoleArn(SQScheduledQueryExecutionRoleArn): {
    assert std.isString(SQScheduledQueryExecutionRoleArn) : 'SQScheduledQueryExecutionRoleArn must be a string',
    Properties+::: {
      SQScheduledQueryExecutionRoleArn: SQScheduledQueryExecutionRoleArn,
    },
  },
  withSQTargetConfiguration(SQTargetConfiguration): {
    assert std.isString(SQTargetConfiguration) : 'SQTargetConfiguration must be a string',
    Properties+::: {
      SQTargetConfiguration: SQTargetConfiguration,
    },
  },
  withSQErrorReportConfiguration(SQErrorReportConfiguration): {
    assert std.isString(SQErrorReportConfiguration) : 'SQErrorReportConfiguration must be a string',
    Properties+::: {
      SQErrorReportConfiguration: SQErrorReportConfiguration,
    },
  },
  withSQKmsKeyId(SQKmsKeyId): {
    assert std.isString(SQKmsKeyId) : 'SQKmsKeyId must be a string',
    Properties+::: {
      SQKmsKeyId: SQKmsKeyId,
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
}
