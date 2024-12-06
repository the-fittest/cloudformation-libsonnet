{
  new(
    SubscriptionName,
  ): {
    local base = self,
    Properties: {
      SubscriptionName:
        if !std.isString(SubscriptionName) then (error 'SubscriptionName must be a string')
        else if std.isEmpty(SubscriptionName) then (error 'SubscriptionName must be not empty')
        else SubscriptionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::EventSubscription',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'active' && Status != 'no-permission' && Status != 'topic-not-exist' then (error "Status should be 'active' or 'no-permission' or 'topic-not-exist'")
        else Status,
    },
  },
  setCustSubscriptionId(CustSubscriptionId): {
    Properties+::: {
      CustSubscriptionId:
        if !std.isString(CustSubscriptionId) then (error 'CustSubscriptionId must be a string')
        else if std.isEmpty(CustSubscriptionId) then (error 'CustSubscriptionId must be not empty')
        else CustSubscriptionId,
    },
  },
  setEventCategoriesList(EventCategoriesList): {
    Properties+::: {
      EventCategoriesList:
        if !std.isArray(EventCategoriesList) then (error 'EventCategoriesList must be an array')
        else EventCategoriesList,
    },
  },
  pushEventCategoriesList(EventCategoriesList): {
    Properties+::: {
      EventCategoriesList+: EventCategoriesList,
    },
  },
  setSourceType(SourceType): {
    Properties+::: {
      SourceType:
        if !std.isString(SourceType) then (error 'SourceType must be a string')
        else if std.isEmpty(SourceType) then (error 'SourceType must be not empty')
        else if SourceType != 'cluster' && SourceType != 'cluster-parameter-group' && SourceType != 'cluster-security-group' && SourceType != 'cluster-snapshot' && SourceType != 'scheduled-action' then (error "SourceType should be 'cluster' or 'cluster-parameter-group' or 'cluster-security-group' or 'cluster-snapshot' or 'scheduled-action'")
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
  setSeverity(Severity): {
    Properties+::: {
      Severity:
        if !std.isString(Severity) then (error 'Severity must be a string')
        else if std.isEmpty(Severity) then (error 'Severity must be not empty')
        else if Severity != 'ERROR' && Severity != 'INFO' then (error "Severity should be 'ERROR' or 'INFO'")
        else Severity,
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
  setCustomerAwsId(CustomerAwsId): {
    Properties+::: {
      CustomerAwsId:
        if !std.isString(CustomerAwsId) then (error 'CustomerAwsId must be a string')
        else if std.isEmpty(CustomerAwsId) then (error 'CustomerAwsId must be not empty')
        else CustomerAwsId,
    },
  },
  setSourceIdsList(SourceIdsList): {
    Properties+::: {
      SourceIdsList:
        if !std.isArray(SourceIdsList) then (error 'SourceIdsList must be an array')
        else SourceIdsList,
    },
  },
  pushSourceIdsList(SourceIdsList): {
    Properties+::: {
      SourceIdsList+: SourceIdsList,
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
  setSubscriptionCreationTime(SubscriptionCreationTime): {
    Properties+::: {
      SubscriptionCreationTime:
        if !std.isString(SubscriptionCreationTime) then (error 'SubscriptionCreationTime must be a string')
        else if std.isEmpty(SubscriptionCreationTime) then (error 'SubscriptionCreationTime must be not empty')
        else SubscriptionCreationTime,
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
