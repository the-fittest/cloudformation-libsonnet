{
  new(
    CollectionName,
  ): {
    local base = self,
    Properties: {
      CollectionName:
        if !std.isString(CollectionName) then (error 'CollectionName must be a string')
        else if std.isEmpty(CollectionName) then (error 'CollectionName must be not empty')
        else if std.length(CollectionName) < 1 then error ('CollectionName should have at least 1 characters')
        else if std.length(CollectionName) > 100 then error ('CollectionName should have not more than 100 characters')
        else CollectionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Location::GeofenceCollection',
  },
  setCollectionArn(CollectionArn): {
    Properties+::: {
      CollectionArn:
        if !std.isString(CollectionArn) then (error 'CollectionArn must be a string')
        else if std.isEmpty(CollectionArn) then (error 'CollectionArn must be not empty')
        else if std.length(CollectionArn) > 1600 then error ('CollectionArn should have not more than 1600 characters')
        else CollectionArn,
    },
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
