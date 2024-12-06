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
      ComparisonOperator:
        if !std.isString(ComparisonOperator) then (error 'ComparisonOperator must be a string')
        else if std.isEmpty(ComparisonOperator) then (error 'ComparisonOperator must be not empty')
        else if ComparisonOperator != 'GreaterThanOrEqualToThreshold' && ComparisonOperator != 'GreaterThanThreshold' && ComparisonOperator != 'LessThanThreshold' && ComparisonOperator != 'LessThanOrEqualToThreshold' then (error "ComparisonOperator should be 'GreaterThanOrEqualToThreshold' or 'GreaterThanThreshold' or 'LessThanThreshold' or 'LessThanOrEqualToThreshold'")
        else ComparisonOperator,
      EvaluationPeriods:
        if !std.isNumber(EvaluationPeriods) then (error 'EvaluationPeriods must be an number')
        else if EvaluationPeriods < 1 then error ('EvaluationPeriods should be at least 1')
        else EvaluationPeriods,
      GroupIdentifier:
        if !std.isString(GroupIdentifier) then (error 'GroupIdentifier must be a string')
        else if std.isEmpty(GroupIdentifier) then (error 'GroupIdentifier must be not empty')
        else GroupIdentifier,
      MetricName:
        if !std.isString(MetricName) then (error 'MetricName must be a string')
        else if std.isEmpty(MetricName) then (error 'MetricName must be not empty')
        else if std.length(MetricName) > 64 then error ('MetricName should have not more than 64 characters')
        else MetricName,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      Period:
        if !std.isNumber(Period) then (error 'Period must be an number')
        else if Period < 10 then error ('Period should be at least 10')
        else if Period > 86400 then error ('Period should be not more than 86400')
        else Period,
      Statistic:
        if !std.isString(Statistic) then (error 'Statistic must be a string')
        else if std.isEmpty(Statistic) then (error 'Statistic must be not empty')
        else if Statistic != 'SampleCount' && Statistic != 'Average' && Statistic != 'Sum' && Statistic != 'Minimum' && Statistic != 'Maximum' then (error "Statistic should be 'SampleCount' or 'Average' or 'Sum' or 'Minimum' or 'Maximum'")
        else Statistic,
      TargetResourceType:
        if !std.isString(TargetResourceType) then (error 'TargetResourceType must be a string')
        else if std.isEmpty(TargetResourceType) then (error 'TargetResourceType must be not empty')
        else if TargetResourceType != 'CLOUDFRONT_DISTRIBUTION' && TargetResourceType != 'MEDIALIVE_MULTIPLEX' && TargetResourceType != 'MEDIALIVE_CHANNEL' && TargetResourceType != 'MEDIALIVE_INPUT_DEVICE' && TargetResourceType != 'MEDIAPACKAGE_CHANNEL' && TargetResourceType != 'MEDIAPACKAGE_ORIGIN_ENDPOINT' && TargetResourceType != 'MEDIACONNECT_FLOW' && TargetResourceType != 'S3_BUCKET' then (error "TargetResourceType should be 'CLOUDFRONT_DISTRIBUTION' or 'MEDIALIVE_MULTIPLEX' or 'MEDIALIVE_CHANNEL' or 'MEDIALIVE_INPUT_DEVICE' or 'MEDIAPACKAGE_CHANNEL' or 'MEDIAPACKAGE_ORIGIN_ENDPOINT' or 'MEDIACONNECT_FLOW' or 'S3_BUCKET'")
        else TargetResourceType,
      Threshold:
        if !std.isNumber(Threshold) then (error 'Threshold must be an number')
        else Threshold,
      TreatMissingData:
        if !std.isString(TreatMissingData) then (error 'TreatMissingData must be a string')
        else if std.isEmpty(TreatMissingData) then (error 'TreatMissingData must be not empty')
        else if TreatMissingData != 'notBreaching' && TreatMissingData != 'breaching' && TreatMissingData != 'ignore' && TreatMissingData != 'missing' then (error "TreatMissingData should be 'notBreaching' or 'breaching' or 'ignore' or 'missing'")
        else TreatMissingData,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::CloudWatchAlarmTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDatapointsToAlarm(DatapointsToAlarm): {
    Properties+::: {
      DatapointsToAlarm:
        if !std.isNumber(DatapointsToAlarm) then (error 'DatapointsToAlarm must be an number')
        else if DatapointsToAlarm < 1 then error ('DatapointsToAlarm should be at least 1')
        else DatapointsToAlarm,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setGroupId(GroupId): {
    Properties+::: {
      GroupId:
        if !std.isString(GroupId) then (error 'GroupId must be a string')
        else if std.isEmpty(GroupId) then (error 'GroupId must be not empty')
        else if std.length(GroupId) < 7 then error ('GroupId should have at least 7 characters')
        else if std.length(GroupId) > 11 then error ('GroupId should have not more than 11 characters')
        else GroupId,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 7 then error ('Id should have at least 7 characters')
        else if std.length(Id) > 11 then error ('Id should have not more than 11 characters')
        else Id,
    },
  },
  setIdentifier(Identifier): {
    Properties+::: {
      Identifier:
        if !std.isString(Identifier) then (error 'Identifier must be a string')
        else if std.isEmpty(Identifier) then (error 'Identifier must be not empty')
        else Identifier,
    },
  },
  setModifiedAt(ModifiedAt): {
    Properties+::: {
      ModifiedAt:
        if !std.isString(ModifiedAt) then (error 'ModifiedAt must be a string')
        else if std.isEmpty(ModifiedAt) then (error 'ModifiedAt must be not empty')
        else ModifiedAt,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
