{
  new(
    TrackerName,
  ): {
    local base = self,
    Properties: {
      TrackerName:
        if !std.isString(TrackerName) then (error 'TrackerName must be a string')
        else if std.isEmpty(TrackerName) then (error 'TrackerName must be not empty')
        else if std.length(TrackerName) < 1 then error ('TrackerName should have at least 1 characters')
        else if std.length(TrackerName) > 100 then error ('TrackerName should have not more than 100 characters')
        else TrackerName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Location::Tracker',
  },
  setCreateTime(CreateTime): {
    Properties+::: {
      CreateTime:
        if !std.isString(CreateTime) then (error 'CreateTime must be a string')
        else if std.isEmpty(CreateTime) then (error 'CreateTime must be not empty')
        else CreateTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setEventBridgeEnabled(EventBridgeEnabled): {
    Properties+::: {
      EventBridgeEnabled:
        if !std.isBoolean(EventBridgeEnabled) then (error 'EventBridgeEnabled must be a boolean') else EventBridgeEnabled,
    },
  },
  setKmsKeyEnableGeospatialQueries(KmsKeyEnableGeospatialQueries): {
    Properties+::: {
      KmsKeyEnableGeospatialQueries:
        if !std.isBoolean(KmsKeyEnableGeospatialQueries) then (error 'KmsKeyEnableGeospatialQueries must be a boolean') else KmsKeyEnableGeospatialQueries,
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
  setPositionFiltering(PositionFiltering): {
    Properties+::: {
      PositionFiltering:
        if !std.isString(PositionFiltering) then (error 'PositionFiltering must be a string')
        else if std.isEmpty(PositionFiltering) then (error 'PositionFiltering must be not empty')
        else if PositionFiltering != 'TimeBased' && PositionFiltering != 'DistanceBased' && PositionFiltering != 'AccuracyBased' then (error "PositionFiltering should be 'TimeBased' or 'DistanceBased' or 'AccuracyBased'")
        else PositionFiltering,
    },
  },
  setPricingPlan(PricingPlan): {
    Properties+::: {
      PricingPlan:
        if !std.isString(PricingPlan) then (error 'PricingPlan must be a string')
        else if std.isEmpty(PricingPlan) then (error 'PricingPlan must be not empty')
        else if PricingPlan != 'RequestBasedUsage' then (error "PricingPlan should be 'RequestBasedUsage'")
        else PricingPlan,
    },
  },
  setPricingPlanDataSource(PricingPlanDataSource): {
    Properties+::: {
      PricingPlanDataSource:
        if !std.isString(PricingPlanDataSource) then (error 'PricingPlanDataSource must be a string')
        else if std.isEmpty(PricingPlanDataSource) then (error 'PricingPlanDataSource must be not empty')
        else PricingPlanDataSource,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTrackerArn(TrackerArn): {
    Properties+::: {
      TrackerArn:
        if !std.isString(TrackerArn) then (error 'TrackerArn must be a string')
        else if std.isEmpty(TrackerArn) then (error 'TrackerArn must be not empty')
        else if std.length(TrackerArn) > 1600 then error ('TrackerArn should have not more than 1600 characters')
        else TrackerArn,
    },
  },
  setUpdateTime(UpdateTime): {
    Properties+::: {
      UpdateTime:
        if !std.isString(UpdateTime) then (error 'UpdateTime must be a string')
        else if std.isEmpty(UpdateTime) then (error 'UpdateTime must be not empty')
        else UpdateTime,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
