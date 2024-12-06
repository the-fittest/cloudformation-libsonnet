{
  new(
    Description,
    ParameterGroupFamily,
  ): {
    local base = self,
    Properties: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
      ParameterGroupFamily:
        if !std.isString(ParameterGroupFamily) then (error 'ParameterGroupFamily must be a string')
        else if std.isEmpty(ParameterGroupFamily) then (error 'ParameterGroupFamily must be not empty')
        else ParameterGroupFamily,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::ClusterParameterGroup',
  },
  setParameterGroupName(ParameterGroupName): {
    Properties+::: {
      ParameterGroupName:
        if !std.isString(ParameterGroupName) then (error 'ParameterGroupName must be a string')
        else if std.isEmpty(ParameterGroupName) then (error 'ParameterGroupName must be not empty')
        else if std.length(ParameterGroupName) > 255 then error ('ParameterGroupName should have not more than 255 characters')
        else ParameterGroupName,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isArray(Parameters) then (error 'Parameters must be an array')
        else Parameters,
    },
  },
  pushParameters(Parameters): {
    Properties+::: {
      Parameters+: Parameters,
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
