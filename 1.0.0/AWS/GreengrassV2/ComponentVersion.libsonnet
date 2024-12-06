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
    Type: 'AWS::GreengrassV2::ComponentVersion',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setComponentName(ComponentName): {
    Properties+::: {
      ComponentName:
        if !std.isString(ComponentName) then (error 'ComponentName must be a string')
        else if std.isEmpty(ComponentName) then (error 'ComponentName must be not empty')
        else ComponentName,
    },
  },
  setComponentVersion(ComponentVersion): {
    Properties+::: {
      ComponentVersion:
        if !std.isString(ComponentVersion) then (error 'ComponentVersion must be a string')
        else if std.isEmpty(ComponentVersion) then (error 'ComponentVersion must be not empty')
        else ComponentVersion,
    },
  },
  setInlineRecipe(InlineRecipe): {
    Properties+::: {
      InlineRecipe:
        if !std.isString(InlineRecipe) then (error 'InlineRecipe must be a string')
        else if std.isEmpty(InlineRecipe) then (error 'InlineRecipe must be not empty')
        else InlineRecipe,
    },
  },
  setLambdaFunction(LambdaFunction): {
    Properties+::: {
      LambdaFunction:
        if !std.isObject(LambdaFunction) then (error 'LambdaFunction must be an object')
        else LambdaFunction,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
