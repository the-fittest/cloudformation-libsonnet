{
  new(
    AnomalyDetectorArn,
    AlertSensitivityThreshold,
    Action,
  ): {
    local base = self,
    Properties: {
      AnomalyDetectorArn:
        if !std.isString(AnomalyDetectorArn) then (error 'AnomalyDetectorArn must be a string')
        else if std.isEmpty(AnomalyDetectorArn) then (error 'AnomalyDetectorArn must be not empty')
        else if std.length(AnomalyDetectorArn) > 256 then error ('AnomalyDetectorArn should have not more than 256 characters')
        else AnomalyDetectorArn,
      AlertSensitivityThreshold:
        if !std.isNumber(AlertSensitivityThreshold) then (error 'AlertSensitivityThreshold must be an number')
        else if AlertSensitivityThreshold > 100 then error ('AlertSensitivityThreshold should be not more than 100')
        else AlertSensitivityThreshold,
      Action:
        if !std.isObject(Action) then (error 'Action must be an object')
        else Action,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LookoutMetrics::Alert',
  },
  setAlertName(AlertName): {
    Properties+::: {
      AlertName:
        if !std.isString(AlertName) then (error 'AlertName must be a string')
        else if std.isEmpty(AlertName) then (error 'AlertName must be not empty')
        else if std.length(AlertName) < 1 then error ('AlertName should have at least 1 characters')
        else if std.length(AlertName) > 63 then error ('AlertName should have not more than 63 characters')
        else AlertName,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
    },
  },
  setAlertDescription(AlertDescription): {
    Properties+::: {
      AlertDescription:
        if !std.isString(AlertDescription) then (error 'AlertDescription must be a string')
        else if std.isEmpty(AlertDescription) then (error 'AlertDescription must be not empty')
        else if std.length(AlertDescription) > 256 then error ('AlertDescription should have not more than 256 characters')
        else AlertDescription,
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
