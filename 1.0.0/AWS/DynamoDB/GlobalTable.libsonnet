{
  new(
    KeySchema,
    AttributeDefinitions,
    Replicas,
  ): {
    local base = self,
    Properties: {
      KeySchema:
        if !std.isArray(KeySchema) then (error 'KeySchema must be an array')
        else if std.length(KeySchema) < 1 then error ('KeySchema cannot have less than 1 items')
        else if std.length(KeySchema) > 2 then error ('KeySchema cannot have more than 2 items')
        else KeySchema,
      AttributeDefinitions:
        if !std.isArray(AttributeDefinitions) then (error 'AttributeDefinitions must be an array')
        else if std.length(AttributeDefinitions) < 1 then error ('AttributeDefinitions cannot have less than 1 items')
        else AttributeDefinitions,
      Replicas:
        if !std.isArray(Replicas) then (error 'Replicas must be an array')
        else if std.length(Replicas) < 1 then error ('Replicas cannot have less than 1 items')
        else Replicas,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DynamoDB::GlobalTable',
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
  pushGlobalSecondaryIndexes(GlobalSecondaryIndexes): {
    Properties+::: {
      GlobalSecondaryIndexes+: GlobalSecondaryIndexes,
    },
  },
  setLocalSecondaryIndexes(LocalSecondaryIndexes): {
    Properties+::: {
      LocalSecondaryIndexes:
        if !std.isArray(LocalSecondaryIndexes) then (error 'LocalSecondaryIndexes must be an array')
        else LocalSecondaryIndexes,
    },
  },
  pushLocalSecondaryIndexes(LocalSecondaryIndexes): {
    Properties+::: {
      LocalSecondaryIndexes+: LocalSecondaryIndexes,
    },
  },
  setWriteProvisionedThroughputSettings(WriteProvisionedThroughputSettings): {
    Properties+::: {
      WriteProvisionedThroughputSettings:
        if !std.isObject(WriteProvisionedThroughputSettings) then (error 'WriteProvisionedThroughputSettings must be an object')
        else WriteProvisionedThroughputSettings,
    },
  },
  setWriteOnDemandThroughputSettings(WriteOnDemandThroughputSettings): {
    Properties+::: {
      WriteOnDemandThroughputSettings:
        if !std.isObject(WriteOnDemandThroughputSettings) then (error 'WriteOnDemandThroughputSettings must be an object')
        else WriteOnDemandThroughputSettings,
    },
  },
  setWarmThroughput(WarmThroughput): {
    Properties+::: {
      WarmThroughput:
        if !std.isObject(WarmThroughput) then (error 'WarmThroughput must be an object')
        else WarmThroughput,
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
  setStreamSpecification(StreamSpecification): {
    Properties+::: {
      StreamSpecification:
        if !std.isObject(StreamSpecification) then (error 'StreamSpecification must be an object')
        else if !std.objectHas(StreamSpecification, 'StreamViewType') then (error ' have attribute StreamViewType')
        else StreamSpecification,
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
  setTableId(TableId): {
    Properties+::: {
      TableId:
        if !std.isString(TableId) then (error 'TableId must be a string')
        else if std.isEmpty(TableId) then (error 'TableId must be not empty')
        else TableId,
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
