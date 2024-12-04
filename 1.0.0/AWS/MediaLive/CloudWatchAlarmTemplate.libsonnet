{
  new(
    ComparisonOperator,
    EvaluationPeriods,
    GroupIdentifier,
    MetricName,
    Name,
    Period,
    Statistic,
    TargetResourceType,
    Threshold,
    TreatMissingData,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ComparisonOperator) : 'ComparisonOperator must be a string',
      assert ComparisonOperator == 'GreaterThanOrEqualToThreshold' || ComparisonOperator == 'GreaterThanThreshold' || ComparisonOperator == 'LessThanThreshold' || ComparisonOperator == 'LessThanOrEqualToThreshold' : "ComparisonOperator should be 'GreaterThanOrEqualToThreshold' or 'GreaterThanThreshold' or 'LessThanThreshold' or 'LessThanOrEqualToThreshold'",
      ComparisonOperator: ComparisonOperator,
      assert std.isNumber(EvaluationPeriods) : 'EvaluationPeriods must be a number',
      EvaluationPeriods: EvaluationPeriods,
      assert std.isString(GroupIdentifier) : 'GroupIdentifier must be a string',
      GroupIdentifier: GroupIdentifier,
      assert std.isString(MetricName) : 'MetricName must be a string',
      MetricName: MetricName,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isNumber(Period) : 'Period must be a number',
      Period: Period,
      assert std.isString(Statistic) : 'Statistic must be a string',
      assert Statistic == 'SampleCount' || Statistic == 'Average' || Statistic == 'Sum' || Statistic == 'Minimum' || Statistic == 'Maximum' : "Statistic should be 'SampleCount' or 'Average' or 'Sum' or 'Minimum' or 'Maximum'",
      Statistic: Statistic,
      assert std.isString(TargetResourceType) : 'TargetResourceType must be a string',
      assert TargetResourceType == 'CLOUDFRONT_DISTRIBUTION' || TargetResourceType == 'MEDIALIVE_MULTIPLEX' || TargetResourceType == 'MEDIALIVE_CHANNEL' || TargetResourceType == 'MEDIALIVE_INPUT_DEVICE' || TargetResourceType == 'MEDIAPACKAGE_CHANNEL' || TargetResourceType == 'MEDIAPACKAGE_ORIGIN_ENDPOINT' || TargetResourceType == 'MEDIACONNECT_FLOW' || TargetResourceType == 'S3_BUCKET' : "TargetResourceType should be 'CLOUDFRONT_DISTRIBUTION' or 'MEDIALIVE_MULTIPLEX' or 'MEDIALIVE_CHANNEL' or 'MEDIALIVE_INPUT_DEVICE' or 'MEDIAPACKAGE_CHANNEL' or 'MEDIAPACKAGE_ORIGIN_ENDPOINT' or 'MEDIACONNECT_FLOW' or 'S3_BUCKET'",
      TargetResourceType: TargetResourceType,
      assert std.isNumber(Threshold) : 'Threshold must be a number',
      Threshold: Threshold,
      assert std.isString(TreatMissingData) : 'TreatMissingData must be a string',
      assert TreatMissingData == 'notBreaching' || TreatMissingData == 'breaching' || TreatMissingData == 'ignore' || TreatMissingData == 'missing' : "TreatMissingData should be 'notBreaching' or 'breaching' or 'ignore' or 'missing'",
      TreatMissingData: TreatMissingData,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::CloudWatchAlarmTemplate',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDatapointsToAlarm(DatapointsToAlarm): {
    assert std.isNumber(DatapointsToAlarm) : 'DatapointsToAlarm must be a number',
    Properties+::: {
      DatapointsToAlarm: DatapointsToAlarm,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withGroupId(GroupId): {
    assert std.isString(GroupId) : 'GroupId must be a string',
    Properties+::: {
      GroupId: GroupId,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIdentifier(Identifier): {
    assert std.isString(Identifier) : 'Identifier must be a string',
    Properties+::: {
      Identifier: Identifier,
    },
  },
  withModifiedAt(ModifiedAt): {
    assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
    Properties+::: {
      ModifiedAt: ModifiedAt,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
