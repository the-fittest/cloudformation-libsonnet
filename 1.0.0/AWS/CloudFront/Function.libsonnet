{
  new(
    Name,
    FunctionConfig,
    FunctionCode,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      FunctionConfig:
        if !std.isObject(FunctionConfig) then (error 'FunctionConfig must be an object')
        else if !std.objectHas(FunctionConfig, 'Comment') then (error ' have attribute Comment')
        else if !std.objectHas(FunctionConfig, 'Runtime') then (error ' have attribute Runtime')
        else FunctionConfig,
      FunctionCode:
        if !std.isString(FunctionCode) then (error 'FunctionCode must be a string')
        else if std.isEmpty(FunctionCode) then (error 'FunctionCode must be not empty')
        else FunctionCode,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFront::Function',
  },
  setAutoPublish(AutoPublish): {
    Properties+::: {
      AutoPublish:
        if !std.isBoolean(AutoPublish) then (error 'AutoPublish must be a boolean') else AutoPublish,
    },
  },
  setFunctionARN(FunctionARN): {
    Properties+::: {
      FunctionARN:
        if !std.isString(FunctionARN) then (error 'FunctionARN must be a string')
        else if std.isEmpty(FunctionARN) then (error 'FunctionARN must be not empty')
        else FunctionARN,
    },
  },
  setFunctionMetadata(FunctionMetadata): {
    Properties+::: {
      FunctionMetadata:
        if !std.isObject(FunctionMetadata) then (error 'FunctionMetadata must be an object')
        else FunctionMetadata,
    },
  },
  setStage(Stage): {
    Properties+::: {
      Stage:
        if !std.isString(Stage) then (error 'Stage must be a string')
        else if std.isEmpty(Stage) then (error 'Stage must be not empty')
        else Stage,
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
