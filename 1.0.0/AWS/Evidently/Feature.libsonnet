{
  new(
    Name,
    Project,
    Variations,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      Project:
        if !std.isString(Project) then (error 'Project must be a string')
        else if std.isEmpty(Project) then (error 'Project must be not empty')
        else if std.length(Project) > 2048 then error ('Project should have not more than 2048 characters')
        else Project,
      Variations:
        if !std.isArray(Variations) then (error 'Variations must be an array')
        else if std.length(Variations) < 1 then error ('Variations cannot have less than 1 items')
        else if std.length(Variations) > 5 then error ('Variations cannot have more than 5 items')
        else Variations,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Evidently::Feature',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 160 then error ('Description should have not more than 160 characters')
        else Description,
    },
  },
  setEvaluationStrategy(EvaluationStrategy): {
    Properties+::: {
      EvaluationStrategy:
        if !std.isString(EvaluationStrategy) then (error 'EvaluationStrategy must be a string')
        else if std.isEmpty(EvaluationStrategy) then (error 'EvaluationStrategy must be not empty')
        else if EvaluationStrategy != 'ALL_RULES' && EvaluationStrategy != 'DEFAULT_VARIATION' then (error "EvaluationStrategy should be 'ALL_RULES' or 'DEFAULT_VARIATION'")
        else EvaluationStrategy,
    },
  },
  setDefaultVariation(DefaultVariation): {
    Properties+::: {
      DefaultVariation:
        if !std.isString(DefaultVariation) then (error 'DefaultVariation must be a string')
        else if std.isEmpty(DefaultVariation) then (error 'DefaultVariation must be not empty')
        else if std.length(DefaultVariation) < 1 then error ('DefaultVariation should have at least 1 characters')
        else if std.length(DefaultVariation) > 127 then error ('DefaultVariation should have not more than 127 characters')
        else DefaultVariation,
    },
  },
  setEntityOverrides(EntityOverrides): {
    Properties+::: {
      EntityOverrides:
        if !std.isArray(EntityOverrides) then (error 'EntityOverrides must be an array')
        else if std.length(EntityOverrides) > 2500 then error ('EntityOverrides cannot have more than 2500 items')
        else EntityOverrides,
    },
  },
  pushEntityOverrides(EntityOverrides): {
    Properties+::: {
      EntityOverrides+: EntityOverrides,
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
