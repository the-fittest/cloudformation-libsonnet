{
  new(
    Title,
    InstanceArn,
    Items,
    Status,
  ): {
    local base = self,
    Properties: {
      Title:
        if !std.isString(Title) then (error 'Title must be a string')
        else if std.isEmpty(Title) then (error 'Title must be not empty')
        else if std.length(Title) < 1 then error ('Title should have at least 1 characters')
        else if std.length(Title) > 128 then error ('Title should have not more than 128 characters')
        else Title,
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      Items:
        if !std.isArray(Items) then (error 'Items must be an array')
        else if std.length(Items) < 1 then error ('Items cannot have less than 1 items')
        else if std.length(Items) > 200 then error ('Items cannot have more than 200 items')
        else Items,
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'DRAFT' && Status != 'ACTIVE' then (error "Status should be 'DRAFT' or 'ACTIVE'")
        else Status,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::EvaluationForm',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setEvaluationFormArn(EvaluationFormArn): {
    Properties+::: {
      EvaluationFormArn:
        if !std.isString(EvaluationFormArn) then (error 'EvaluationFormArn must be a string')
        else if std.isEmpty(EvaluationFormArn) then (error 'EvaluationFormArn must be not empty')
        else EvaluationFormArn,
    },
  },
  setScoringStrategy(ScoringStrategy): {
    Properties+::: {
      ScoringStrategy:
        if !std.isObject(ScoringStrategy) then (error 'ScoringStrategy must be an object')
        else if !std.objectHas(ScoringStrategy, 'Mode') then (error ' have attribute Mode')
        else if !std.objectHas(ScoringStrategy, 'Status') then (error ' have attribute Status')
        else ScoringStrategy,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
