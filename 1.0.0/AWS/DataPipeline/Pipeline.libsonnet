{
  new(
    ParameterObjects,
    Name,
  ): {
    local base = self,
    Properties: {
      ParameterObjects: (if std.isArray(ParameterObjects) then ParameterObjects else [ParameterObjects]),
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataPipeline::Pipeline',
  },
  withPipelineTags(PipelineTags): {
    Properties+::: {
      PipelineTags: (if std.isArray(PipelineTags) then PipelineTags else [PipelineTags]),
    },
  },
  withPipelineTagsMixin(PipelineTags): {
    Properties+::: {
      PipelineTags+: (if std.isArray(PipelineTags) then PipelineTags else [PipelineTags]),
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withActivate(Activate): {
    assert std.isBoolean(Activate) : 'Activate must be a boolean',
    Properties+::: {
      Activate: Activate,
    },
  },
  withPipelineObjects(PipelineObjects): {
    Properties+::: {
      PipelineObjects: (if std.isArray(PipelineObjects) then PipelineObjects else [PipelineObjects]),
    },
  },
  withPipelineObjectsMixin(PipelineObjects): {
    Properties+::: {
      PipelineObjects+: (if std.isArray(PipelineObjects) then PipelineObjects else [PipelineObjects]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withParameterValues(ParameterValues): {
    Properties+::: {
      ParameterValues: (if std.isArray(ParameterValues) then ParameterValues else [ParameterValues]),
    },
  },
  withParameterValuesMixin(ParameterValues): {
    Properties+::: {
      ParameterValues+: (if std.isArray(ParameterValues) then ParameterValues else [ParameterValues]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
