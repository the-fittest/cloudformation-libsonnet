{
  new(
    DataSource,
    CalculatorName,
  ): {
    local base = self,
    Properties: {
      DataSource:
        if !std.isString(DataSource) then (error 'DataSource must be a string')
        else if std.isEmpty(DataSource) then (error 'DataSource must be not empty')
        else DataSource,
      CalculatorName:
        if !std.isString(CalculatorName) then (error 'CalculatorName must be a string')
        else if std.isEmpty(CalculatorName) then (error 'CalculatorName must be not empty')
        else if std.length(CalculatorName) < 1 then error ('CalculatorName should have at least 1 characters')
        else if std.length(CalculatorName) > 100 then error ('CalculatorName should have not more than 100 characters')
        else CalculatorName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Location::RouteCalculator',
  },
  setCalculatorArn(CalculatorArn): {
    Properties+::: {
      CalculatorArn:
        if !std.isString(CalculatorArn) then (error 'CalculatorArn must be a string')
        else if std.isEmpty(CalculatorArn) then (error 'CalculatorArn must be not empty')
        else if std.length(CalculatorArn) > 1600 then error ('CalculatorArn should have not more than 1600 characters')
        else CalculatorArn,
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
  setPricingPlan(PricingPlan): {
    Properties+::: {
      PricingPlan:
        if !std.isString(PricingPlan) then (error 'PricingPlan must be a string')
        else if std.isEmpty(PricingPlan) then (error 'PricingPlan must be not empty')
        else if PricingPlan != 'RequestBasedUsage' then (error "PricingPlan should be 'RequestBasedUsage'")
        else PricingPlan,
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
