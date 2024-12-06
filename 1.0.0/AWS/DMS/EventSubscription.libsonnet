{
  new(
    SnsTopicArn,
  ): {
    local base = self,
    Properties: {
      SnsTopicArn:
        if !std.isString(SnsTopicArn) then (error 'SnsTopicArn must be a string')
        else if std.isEmpty(SnsTopicArn) then (error 'SnsTopicArn must be not empty')
        else SnsTopicArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::EventSubscription',
  },
  setSourceType(SourceType): {
    Properties+::: {
      SourceType:
        if !std.isString(SourceType) then (error 'SourceType must be a string')
        else if std.isEmpty(SourceType) then (error 'SourceType must be not empty')
        else SourceType,
    },
  },
  setEventCategories(EventCategories): {
    Properties+::: {
      EventCategories:
        if !std.isArray(EventCategories) then (error 'EventCategories must be an array')
        else EventCategories,
    },
  },
  pushEventCategories(EventCategories): {
    Properties+::: {
      EventCategories+: EventCategories,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setSubscriptionName(SubscriptionName): {
    Properties+::: {
      SubscriptionName:
        if !std.isString(SubscriptionName) then (error 'SubscriptionName must be a string')
        else if std.isEmpty(SubscriptionName) then (error 'SubscriptionName must be not empty')
        else SubscriptionName,
    },
  },
  setSourceIds(SourceIds): {
    Properties+::: {
      SourceIds:
        if !std.isArray(SourceIds) then (error 'SourceIds must be an array')
        else SourceIds,
    },
  },
  pushSourceIds(SourceIds): {
    Properties+::: {
      SourceIds+: SourceIds,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
