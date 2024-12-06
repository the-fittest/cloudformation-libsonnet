{
  new(
    PipelineName,
    PipelineDefinition,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      PipelineName:
        if !std.isString(PipelineName) then (error 'PipelineName must be a string')
        else if std.isEmpty(PipelineName) then (error 'PipelineName must be not empty')
        else if std.length(PipelineName) < 1 then error ('PipelineName should have at least 1 characters')
        else if std.length(PipelineName) > 256 then error ('PipelineName should have not more than 256 characters')
        else PipelineName,
      PipelineDefinition:
        if !std.isObject(PipelineDefinition) then (error 'PipelineDefinition must be an object')
        else PipelineDefinition,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Pipeline',
  },
  setPipelineDisplayName(PipelineDisplayName): {
    Properties+::: {
      PipelineDisplayName:
        if !std.isString(PipelineDisplayName) then (error 'PipelineDisplayName must be a string')
        else if std.isEmpty(PipelineDisplayName) then (error 'PipelineDisplayName must be not empty')
        else if std.length(PipelineDisplayName) < 1 then error ('PipelineDisplayName should have at least 1 characters')
        else if std.length(PipelineDisplayName) > 256 then error ('PipelineDisplayName should have not more than 256 characters')
        else PipelineDisplayName,
    },
  },
  setPipelineDescription(PipelineDescription): {
    Properties+::: {
      PipelineDescription:
        if !std.isString(PipelineDescription) then (error 'PipelineDescription must be a string')
        else if std.isEmpty(PipelineDescription) then (error 'PipelineDescription must be not empty')
        else if std.length(PipelineDescription) > 3072 then error ('PipelineDescription should have not more than 3072 characters')
        else PipelineDescription,
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
  setParallelismConfiguration(ParallelismConfiguration): {
    Properties+::: {
      ParallelismConfiguration:
        if !std.isObject(ParallelismConfiguration) then (error 'ParallelismConfiguration must be an object')
        else if !std.objectHas(ParallelismConfiguration, 'MaxParallelExecutionSteps') then (error ' have attribute MaxParallelExecutionSteps')
        else ParallelismConfiguration,
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
