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
      QueryString:
        if !std.isString(QueryString) then (error 'QueryString must be a string')
        else if std.isEmpty(QueryString) then (error 'QueryString must be not empty')
        else if std.length(QueryString) < 1 then error ('QueryString should have at least 1 characters')
        else if std.length(QueryString) > 262144 then error ('QueryString should have not more than 262144 characters')
        else QueryString,
      ScheduleConfiguration:
        if !std.isObject(ScheduleConfiguration) then (error 'ScheduleConfiguration must be an object')
        else if !std.objectHas(ScheduleConfiguration, 'ScheduleExpression') then (error ' have attribute ScheduleExpression')
        else ScheduleConfiguration,
      NotificationConfiguration:
        if !std.isObject(NotificationConfiguration) then (error 'NotificationConfiguration must be an object')
        else if !std.objectHas(NotificationConfiguration, 'SnsConfiguration') then (error ' have attribute SnsConfiguration')
        else NotificationConfiguration,
      ScheduledQueryExecutionRoleArn:
        if !std.isString(ScheduledQueryExecutionRoleArn) then (error 'ScheduledQueryExecutionRoleArn must be a string')
        else if std.isEmpty(ScheduledQueryExecutionRoleArn) then (error 'ScheduledQueryExecutionRoleArn must be not empty')
        else if std.length(ScheduledQueryExecutionRoleArn) < 1 then error ('ScheduledQueryExecutionRoleArn should have at least 1 characters')
        else if std.length(ScheduledQueryExecutionRoleArn) > 2048 then error ('ScheduledQueryExecutionRoleArn should have not more than 2048 characters')
        else ScheduledQueryExecutionRoleArn,
      ErrorReportConfiguration:
        if !std.isObject(ErrorReportConfiguration) then (error 'ErrorReportConfiguration must be an object')
        else if !std.objectHas(ErrorReportConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else ErrorReportConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Timestream::ScheduledQuery',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setScheduledQueryName(ScheduledQueryName): {
    Properties+::: {
      ScheduledQueryName:
        if !std.isString(ScheduledQueryName) then (error 'ScheduledQueryName must be a string')
        else if std.isEmpty(ScheduledQueryName) then (error 'ScheduledQueryName must be not empty')
        else if std.length(ScheduledQueryName) < 1 then error ('ScheduledQueryName should have at least 1 characters')
        else if std.length(ScheduledQueryName) > 64 then error ('ScheduledQueryName should have not more than 64 characters')
        else ScheduledQueryName,
    },
  },
  setClientToken(ClientToken): {
    Properties+::: {
      ClientToken:
        if !std.isString(ClientToken) then (error 'ClientToken must be a string')
        else if std.isEmpty(ClientToken) then (error 'ClientToken must be not empty')
        else if std.length(ClientToken) < 32 then error ('ClientToken should have at least 32 characters')
        else if std.length(ClientToken) > 128 then error ('ClientToken should have not more than 128 characters')
        else ClientToken,
    },
  },
  setTargetConfiguration(TargetConfiguration): {
    Properties+::: {
      TargetConfiguration:
        if !std.isObject(TargetConfiguration) then (error 'TargetConfiguration must be an object')
        else if !std.objectHas(TargetConfiguration, 'TimestreamConfiguration') then (error ' have attribute TimestreamConfiguration')
        else TargetConfiguration,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else if std.length(KmsKeyId) < 1 then error ('KmsKeyId should have at least 1 characters')
        else if std.length(KmsKeyId) > 2048 then error ('KmsKeyId should have not more than 2048 characters')
        else KmsKeyId,
    },
  },
  setSQName(SQName): {
    Properties+::: {
      SQName:
        if !std.isString(SQName) then (error 'SQName must be a string')
        else if std.isEmpty(SQName) then (error 'SQName must be not empty')
        else SQName,
    },
  },
  setSQQueryString(SQQueryString): {
    Properties+::: {
      SQQueryString:
        if !std.isString(SQQueryString) then (error 'SQQueryString must be a string')
        else if std.isEmpty(SQQueryString) then (error 'SQQueryString must be not empty')
        else SQQueryString,
    },
  },
  setSQScheduleConfiguration(SQScheduleConfiguration): {
    Properties+::: {
      SQScheduleConfiguration:
        if !std.isString(SQScheduleConfiguration) then (error 'SQScheduleConfiguration must be a string')
        else if std.isEmpty(SQScheduleConfiguration) then (error 'SQScheduleConfiguration must be not empty')
        else SQScheduleConfiguration,
    },
  },
  setSQNotificationConfiguration(SQNotificationConfiguration): {
    Properties+::: {
      SQNotificationConfiguration:
        if !std.isString(SQNotificationConfiguration) then (error 'SQNotificationConfiguration must be a string')
        else if std.isEmpty(SQNotificationConfiguration) then (error 'SQNotificationConfiguration must be not empty')
        else SQNotificationConfiguration,
    },
  },
  setSQScheduledQueryExecutionRoleArn(SQScheduledQueryExecutionRoleArn): {
    Properties+::: {
      SQScheduledQueryExecutionRoleArn:
        if !std.isString(SQScheduledQueryExecutionRoleArn) then (error 'SQScheduledQueryExecutionRoleArn must be a string')
        else if std.isEmpty(SQScheduledQueryExecutionRoleArn) then (error 'SQScheduledQueryExecutionRoleArn must be not empty')
        else SQScheduledQueryExecutionRoleArn,
    },
  },
  setSQTargetConfiguration(SQTargetConfiguration): {
    Properties+::: {
      SQTargetConfiguration:
        if !std.isString(SQTargetConfiguration) then (error 'SQTargetConfiguration must be a string')
        else if std.isEmpty(SQTargetConfiguration) then (error 'SQTargetConfiguration must be not empty')
        else SQTargetConfiguration,
    },
  },
  setSQErrorReportConfiguration(SQErrorReportConfiguration): {
    Properties+::: {
      SQErrorReportConfiguration:
        if !std.isString(SQErrorReportConfiguration) then (error 'SQErrorReportConfiguration must be a string')
        else if std.isEmpty(SQErrorReportConfiguration) then (error 'SQErrorReportConfiguration must be not empty')
        else SQErrorReportConfiguration,
    },
  },
  setSQKmsKeyId(SQKmsKeyId): {
    Properties+::: {
      SQKmsKeyId:
        if !std.isString(SQKmsKeyId) then (error 'SQKmsKeyId must be a string')
        else if std.isEmpty(SQKmsKeyId) then (error 'SQKmsKeyId must be not empty')
        else SQKmsKeyId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
