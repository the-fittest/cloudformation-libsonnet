{
  new(
    S3BucketName,
    IsLogging,
  ): {
    local base = self,
    Properties: {
      S3BucketName:
        if !std.isString(S3BucketName) then (error 'S3BucketName must be a string')
        else if std.isEmpty(S3BucketName) then (error 'S3BucketName must be not empty')
        else S3BucketName,
      IsLogging:
        if !std.isBoolean(IsLogging) then (error 'IsLogging must be a boolean') else IsLogging,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudTrail::Trail',
  },
  setCloudWatchLogsLogGroupArn(CloudWatchLogsLogGroupArn): {
    Properties+::: {
      CloudWatchLogsLogGroupArn:
        if !std.isString(CloudWatchLogsLogGroupArn) then (error 'CloudWatchLogsLogGroupArn must be a string')
        else if std.isEmpty(CloudWatchLogsLogGroupArn) then (error 'CloudWatchLogsLogGroupArn must be not empty')
        else CloudWatchLogsLogGroupArn,
    },
  },
  setCloudWatchLogsRoleArn(CloudWatchLogsRoleArn): {
    Properties+::: {
      CloudWatchLogsRoleArn:
        if !std.isString(CloudWatchLogsRoleArn) then (error 'CloudWatchLogsRoleArn must be a string')
        else if std.isEmpty(CloudWatchLogsRoleArn) then (error 'CloudWatchLogsRoleArn must be not empty')
        else CloudWatchLogsRoleArn,
    },
  },
  setEnableLogFileValidation(EnableLogFileValidation): {
    Properties+::: {
      EnableLogFileValidation:
        if !std.isBoolean(EnableLogFileValidation) then (error 'EnableLogFileValidation must be a boolean') else EnableLogFileValidation,
    },
  },
  setAdvancedEventSelectors(AdvancedEventSelectors): {
    Properties+::: {
      AdvancedEventSelectors:
        if !std.isArray(AdvancedEventSelectors) then (error 'AdvancedEventSelectors must be an array')
        else AdvancedEventSelectors,
    },
  },
  pushAdvancedEventSelectors(AdvancedEventSelectors): {
    Properties+::: {
      AdvancedEventSelectors+: AdvancedEventSelectors,
    },
  },
  setEventSelectors(EventSelectors): {
    Properties+::: {
      EventSelectors:
        if !std.isArray(EventSelectors) then (error 'EventSelectors must be an array')
        else if std.length(EventSelectors) > 5 then error ('EventSelectors cannot have more than 5 items')
        else EventSelectors,
    },
  },
  pushEventSelectors(EventSelectors): {
    Properties+::: {
      EventSelectors+: EventSelectors,
    },
  },
  setIncludeGlobalServiceEvents(IncludeGlobalServiceEvents): {
    Properties+::: {
      IncludeGlobalServiceEvents:
        if !std.isBoolean(IncludeGlobalServiceEvents) then (error 'IncludeGlobalServiceEvents must be a boolean') else IncludeGlobalServiceEvents,
    },
  },
  setIsMultiRegionTrail(IsMultiRegionTrail): {
    Properties+::: {
      IsMultiRegionTrail:
        if !std.isBoolean(IsMultiRegionTrail) then (error 'IsMultiRegionTrail must be a boolean') else IsMultiRegionTrail,
    },
  },
  setIsOrganizationTrail(IsOrganizationTrail): {
    Properties+::: {
      IsOrganizationTrail:
        if !std.isBoolean(IsOrganizationTrail) then (error 'IsOrganizationTrail must be a boolean') else IsOrganizationTrail,
    },
  },
  setKMSKeyId(KMSKeyId): {
    Properties+::: {
      KMSKeyId:
        if !std.isString(KMSKeyId) then (error 'KMSKeyId must be a string')
        else if std.isEmpty(KMSKeyId) then (error 'KMSKeyId must be not empty')
        else KMSKeyId,
    },
  },
  setS3KeyPrefix(S3KeyPrefix): {
    Properties+::: {
      S3KeyPrefix:
        if !std.isString(S3KeyPrefix) then (error 'S3KeyPrefix must be a string')
        else if std.isEmpty(S3KeyPrefix) then (error 'S3KeyPrefix must be not empty')
        else if std.length(S3KeyPrefix) > 200 then error ('S3KeyPrefix should have not more than 200 characters')
        else S3KeyPrefix,
    },
  },
  setSnsTopicName(SnsTopicName): {
    Properties+::: {
      SnsTopicName:
        if !std.isString(SnsTopicName) then (error 'SnsTopicName must be a string')
        else if std.isEmpty(SnsTopicName) then (error 'SnsTopicName must be not empty')
        else if std.length(SnsTopicName) > 256 then error ('SnsTopicName should have not more than 256 characters')
        else SnsTopicName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTrailName(TrailName): {
    Properties+::: {
      TrailName:
        if !std.isString(TrailName) then (error 'TrailName must be a string')
        else if std.isEmpty(TrailName) then (error 'TrailName must be not empty')
        else if std.length(TrailName) < 3 then error ('TrailName should have at least 3 characters')
        else if std.length(TrailName) > 128 then error ('TrailName should have not more than 128 characters')
        else TrailName,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setSnsTopicArn(SnsTopicArn): {
    Properties+::: {
      SnsTopicArn:
        if !std.isString(SnsTopicArn) then (error 'SnsTopicArn must be a string')
        else if std.isEmpty(SnsTopicArn) then (error 'SnsTopicArn must be not empty')
        else SnsTopicArn,
    },
  },
  setInsightSelectors(InsightSelectors): {
    Properties+::: {
      InsightSelectors:
        if !std.isArray(InsightSelectors) then (error 'InsightSelectors must be an array')
        else InsightSelectors,
    },
  },
  pushInsightSelectors(InsightSelectors): {
    Properties+::: {
      InsightSelectors+: InsightSelectors,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
