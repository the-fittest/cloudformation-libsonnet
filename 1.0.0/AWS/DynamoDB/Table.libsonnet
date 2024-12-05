{
  new(
    KeySchema,
  ): {
    local base = self,
    Properties: {
      KeySchema: KeySchema,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DynamoDB::Table',
  },
  setOnDemandThroughput(OnDemandThroughput): {
    Properties+::: {
      OnDemandThroughput:
        if !std.isObject(OnDemandThroughput) then (error 'OnDemandThroughput must be an object')
        else OnDemandThroughput,
    },
  },
  setSSESpecification(SSESpecification): {
    Properties+::: {
      SSESpecification:
        if !std.isObject(SSESpecification) then (error 'SSESpecification must be an object')
        else if !std.objectHas(SSESpecification, 'SSEEnabled') then (error ' have attribute SSEEnabled')
        else SSESpecification,
    },
  },
  setKinesisStreamSpecification(KinesisStreamSpecification): {
    Properties+::: {
      KinesisStreamSpecification:
        if !std.isObject(KinesisStreamSpecification) then (error 'KinesisStreamSpecification must be an object')
        else if !std.objectHas(KinesisStreamSpecification, 'StreamArn') then (error ' have attribute StreamArn')
        else KinesisStreamSpecification,
    },
  },
  setStreamSpecification(StreamSpecification): {
    Properties+::: {
      StreamSpecification:
        if !std.isObject(StreamSpecification) then (error 'StreamSpecification must be an object')
        else if !std.objectHas(StreamSpecification, 'StreamViewType') then (error ' have attribute StreamViewType')
        else StreamSpecification,
    },
  },
  setContributorInsightsSpecification(ContributorInsightsSpecification): {
    Properties+::: {
      ContributorInsightsSpecification:
        if !std.isObject(ContributorInsightsSpecification) then (error 'ContributorInsightsSpecification must be an object')
        else if !std.objectHas(ContributorInsightsSpecification, 'Enabled') then (error ' have attribute Enabled')
        else ContributorInsightsSpecification,
    },
  },
  setImportSourceSpecification(ImportSourceSpecification): {
    Properties+::: {
      ImportSourceSpecification:
        if !std.isObject(ImportSourceSpecification) then (error 'ImportSourceSpecification must be an object')
        else if !std.objectHas(ImportSourceSpecification, 'S3BucketSource') then (error ' have attribute S3BucketSource')
        else if !std.objectHas(ImportSourceSpecification, 'InputFormat') then (error ' have attribute InputFormat')
        else ImportSourceSpecification,
    },
  },
  setPointInTimeRecoverySpecification(PointInTimeRecoverySpecification): {
    Properties+::: {
      PointInTimeRecoverySpecification:
        if !std.isObject(PointInTimeRecoverySpecification) then (error 'PointInTimeRecoverySpecification must be an object')
        else PointInTimeRecoverySpecification,
    },
  },
  setProvisionedThroughput(ProvisionedThroughput): {
    Properties+::: {
      ProvisionedThroughput:
        if !std.isObject(ProvisionedThroughput) then (error 'ProvisionedThroughput must be an object')
        else if !std.objectHas(ProvisionedThroughput, 'WriteCapacityUnits') then (error ' have attribute WriteCapacityUnits')
        else if !std.objectHas(ProvisionedThroughput, 'ReadCapacityUnits') then (error ' have attribute ReadCapacityUnits')
        else ProvisionedThroughput,
    },
  },
  setWarmThroughput(WarmThroughput): {
    Properties+::: {
      WarmThroughput:
        if !std.isObject(WarmThroughput) then (error 'WarmThroughput must be an object')
        else WarmThroughput,
    },
  },
  setTableName(TableName): {
    Properties+::: {
      TableName:
        if !std.isString(TableName) then (error 'TableName must be a string')
        else if std.isEmpty(TableName) then (error 'TableName must be not empty')
        else TableName,
    },
  },
  setAttributeDefinitions(AttributeDefinitions): {
    Properties+::: {
      AttributeDefinitions:
        if !std.isArray(AttributeDefinitions) then (error 'AttributeDefinitions must be an array')
        else AttributeDefinitions,
    },
  },
  setAttributeDefinitionsMixin(AttributeDefinitions): {
    Properties+::: {
      AttributeDefinitions+: AttributeDefinitions,
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
  setGlobalSecondaryIndexes(GlobalSecondaryIndexes): {
    Properties+::: {
      GlobalSecondaryIndexes:
        if !std.isArray(GlobalSecondaryIndexes) then (error 'GlobalSecondaryIndexes must be an array')
        else GlobalSecondaryIndexes,
    },
  },
  setGlobalSecondaryIndexesMixin(GlobalSecondaryIndexes): {
    Properties+::: {
      GlobalSecondaryIndexes+: GlobalSecondaryIndexes,
    },
  },
  setResourcePolicy(ResourcePolicy): {
    Properties+::: {
      ResourcePolicy:
        if !std.isObject(ResourcePolicy) then (error 'ResourcePolicy must be an object')
        else if !std.objectHas(ResourcePolicy, 'PolicyDocument') then (error ' have attribute PolicyDocument')
        else ResourcePolicy,
    },
  },
  setLocalSecondaryIndexes(LocalSecondaryIndexes): {
    Properties+::: {
      LocalSecondaryIndexes:
        if !std.isArray(LocalSecondaryIndexes) then (error 'LocalSecondaryIndexes must be an array')
        else LocalSecondaryIndexes,
    },
  },
  setLocalSecondaryIndexesMixin(LocalSecondaryIndexes): {
    Properties+::: {
      LocalSecondaryIndexes+: LocalSecondaryIndexes,
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
  setStreamArn(StreamArn): {
    Properties+::: {
      StreamArn:
        if !std.isString(StreamArn) then (error 'StreamArn must be a string')
        else if std.isEmpty(StreamArn) then (error 'StreamArn must be not empty')
        else StreamArn,
    },
  },
  setDeletionProtectionEnabled(DeletionProtectionEnabled): {
    Properties+::: {
      DeletionProtectionEnabled:
        if !std.isBoolean(DeletionProtectionEnabled) then (error 'DeletionProtectionEnabled must be a boolean') else DeletionProtectionEnabled,
    },
  },
  setTableClass(TableClass): {
    Properties+::: {
      TableClass:
        if !std.isString(TableClass) then (error 'TableClass must be a string')
        else if std.isEmpty(TableClass) then (error 'TableClass must be not empty')
        else TableClass,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTimeToLiveSpecification(TimeToLiveSpecification): {
    Properties+::: {
      TimeToLiveSpecification:
        if !std.isObject(TimeToLiveSpecification) then (error 'TimeToLiveSpecification must be an object')
        else if !std.objectHas(TimeToLiveSpecification, 'Enabled') then (error ' have attribute Enabled')
        else TimeToLiveSpecification,
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
