{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudTrail::EventDataStore',
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
  setCreatedTimestamp(CreatedTimestamp): {
    Properties+::: {
      CreatedTimestamp:
        if !std.isString(CreatedTimestamp) then (error 'CreatedTimestamp must be a string')
        else if std.isEmpty(CreatedTimestamp) then (error 'CreatedTimestamp must be not empty')
        else CreatedTimestamp,
    },
  },
  setEventDataStoreArn(EventDataStoreArn): {
    Properties+::: {
      EventDataStoreArn:
        if !std.isString(EventDataStoreArn) then (error 'EventDataStoreArn must be a string')
        else if std.isEmpty(EventDataStoreArn) then (error 'EventDataStoreArn must be not empty')
        else EventDataStoreArn,
    },
  },
  setFederationEnabled(FederationEnabled): {
    Properties+::: {
      FederationEnabled:
        if !std.isBoolean(FederationEnabled) then (error 'FederationEnabled must be a boolean') else FederationEnabled,
    },
  },
  setFederationRoleArn(FederationRoleArn): {
    Properties+::: {
      FederationRoleArn:
        if !std.isString(FederationRoleArn) then (error 'FederationRoleArn must be a string')
        else if std.isEmpty(FederationRoleArn) then (error 'FederationRoleArn must be not empty')
        else FederationRoleArn,
    },
  },
  setMultiRegionEnabled(MultiRegionEnabled): {
    Properties+::: {
      MultiRegionEnabled:
        if !std.isBoolean(MultiRegionEnabled) then (error 'MultiRegionEnabled must be a boolean') else MultiRegionEnabled,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setOrganizationEnabled(OrganizationEnabled): {
    Properties+::: {
      OrganizationEnabled:
        if !std.isBoolean(OrganizationEnabled) then (error 'OrganizationEnabled must be a boolean') else OrganizationEnabled,
    },
  },
  setBillingMode(BillingMode): {
    Properties+::: {
      BillingMode:
        if !std.isString(BillingMode) then (error 'BillingMode must be a string')
        else if std.isEmpty(BillingMode) then (error 'BillingMode must be not empty')
        else BillingMode,
    },
  },
  setRetentionPeriod(RetentionPeriod): {
    Properties+::: {
      RetentionPeriod:
        if !std.isNumber(RetentionPeriod) then (error 'RetentionPeriod must be an number')
        else RetentionPeriod,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setTerminationProtectionEnabled(TerminationProtectionEnabled): {
    Properties+::: {
      TerminationProtectionEnabled:
        if !std.isBoolean(TerminationProtectionEnabled) then (error 'TerminationProtectionEnabled must be a boolean') else TerminationProtectionEnabled,
    },
  },
  setUpdatedTimestamp(UpdatedTimestamp): {
    Properties+::: {
      UpdatedTimestamp:
        if !std.isString(UpdatedTimestamp) then (error 'UpdatedTimestamp must be a string')
        else if std.isEmpty(UpdatedTimestamp) then (error 'UpdatedTimestamp must be not empty')
        else UpdatedTimestamp,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
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
  setInsightsDestination(InsightsDestination): {
    Properties+::: {
      InsightsDestination:
        if !std.isString(InsightsDestination) then (error 'InsightsDestination must be a string')
        else if std.isEmpty(InsightsDestination) then (error 'InsightsDestination must be not empty')
        else InsightsDestination,
    },
  },
  setIngestionEnabled(IngestionEnabled): {
    Properties+::: {
      IngestionEnabled:
        if !std.isBoolean(IngestionEnabled) then (error 'IngestionEnabled must be a boolean') else IngestionEnabled,
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
