{
  new(
    Name,
    DatasetGroupArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 63 then error ('Name should have not more than 63 characters')
        else Name,
      DatasetGroupArn:
        if !std.isString(DatasetGroupArn) then (error 'DatasetGroupArn must be a string')
        else if std.isEmpty(DatasetGroupArn) then (error 'DatasetGroupArn must be not empty')
        else if std.length(DatasetGroupArn) > 256 then error ('DatasetGroupArn should have not more than 256 characters')
        else DatasetGroupArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Personalize::Solution',
  },
  setSolutionArn(SolutionArn): {
    Properties+::: {
      SolutionArn:
        if !std.isString(SolutionArn) then (error 'SolutionArn must be a string')
        else if std.isEmpty(SolutionArn) then (error 'SolutionArn must be not empty')
        else if std.length(SolutionArn) > 256 then error ('SolutionArn should have not more than 256 characters')
        else SolutionArn,
    },
  },
  setEventType(EventType): {
    Properties+::: {
      EventType:
        if !std.isString(EventType) then (error 'EventType must be a string')
        else if std.isEmpty(EventType) then (error 'EventType must be not empty')
        else if std.length(EventType) > 256 then error ('EventType should have not more than 256 characters')
        else EventType,
    },
  },
  setPerformAutoML(PerformAutoML): {
    Properties+::: {
      PerformAutoML:
        if !std.isBoolean(PerformAutoML) then (error 'PerformAutoML must be a boolean') else PerformAutoML,
    },
  },
  setPerformHPO(PerformHPO): {
    Properties+::: {
      PerformHPO:
        if !std.isBoolean(PerformHPO) then (error 'PerformHPO must be a boolean') else PerformHPO,
    },
  },
  setRecipeArn(RecipeArn): {
    Properties+::: {
      RecipeArn:
        if !std.isString(RecipeArn) then (error 'RecipeArn must be a string')
        else if std.isEmpty(RecipeArn) then (error 'RecipeArn must be not empty')
        else if std.length(RecipeArn) > 256 then error ('RecipeArn should have not more than 256 characters')
        else RecipeArn,
    },
  },
  setSolutionConfig(SolutionConfig): {
    Properties+::: {
      SolutionConfig:
        if !std.isObject(SolutionConfig) then (error 'SolutionConfig must be an object')
        else SolutionConfig,
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
