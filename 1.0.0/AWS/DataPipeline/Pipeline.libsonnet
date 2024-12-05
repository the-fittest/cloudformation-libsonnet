{
  new(
    ParameterObjects,
    Name,
  ): {
    local base = self,
    Properties: {
      ParameterObjects:
        if !std.isArray(ParameterObjects) then (error 'ParameterObjects must be an array')
        else ParameterObjects,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataPipeline::Pipeline',
  },
  setPipelineTags(PipelineTags): {
    Properties+::: {
      PipelineTags:
        if !std.isArray(PipelineTags) then (error 'PipelineTags must be an array')
        else PipelineTags,
    },
  },
  setPipelineTagsMixin(PipelineTags): {
    Properties+::: {
      PipelineTags+: PipelineTags,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setActivate(Activate): {
    Properties+::: {
      Activate:
        if !std.isBoolean(Activate) then (error 'Activate must be a boolean') else Activate,
    },
  },
  setPipelineObjects(PipelineObjects): {
    Properties+::: {
      PipelineObjects:
        if !std.isArray(PipelineObjects) then (error 'PipelineObjects must be an array')
        else PipelineObjects,
    },
  },
  setPipelineObjectsMixin(PipelineObjects): {
    Properties+::: {
      PipelineObjects+: PipelineObjects,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setParameterValues(ParameterValues): {
    Properties+::: {
      ParameterValues:
        if !std.isArray(ParameterValues) then (error 'ParameterValues must be an array')
        else ParameterValues,
    },
  },
  setParameterValuesMixin(ParameterValues): {
    Properties+::: {
      ParameterValues+: ParameterValues,
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
