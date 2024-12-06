{
  new(
    RobotSoftwareSuite,
    SimulationSoftwareSuite,
  ): {
    local base = self,
    Properties: {
      RobotSoftwareSuite:
        if !std.isObject(RobotSoftwareSuite) then (error 'RobotSoftwareSuite must be an object')
        else if !std.objectHas(RobotSoftwareSuite, 'Name') then (error ' have attribute Name')
        else RobotSoftwareSuite,
      SimulationSoftwareSuite:
        if !std.isObject(SimulationSoftwareSuite) then (error 'SimulationSoftwareSuite must be an object')
        else if !std.objectHas(SimulationSoftwareSuite, 'Name') then (error ' have attribute Name')
        else SimulationSoftwareSuite,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RoboMaker::SimulationApplication',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
  },
  setCurrentRevisionId(CurrentRevisionId): {
    Properties+::: {
      CurrentRevisionId:
        if !std.isString(CurrentRevisionId) then (error 'CurrentRevisionId must be a string')
        else if std.isEmpty(CurrentRevisionId) then (error 'CurrentRevisionId must be not empty')
        else CurrentRevisionId,
    },
  },
  setRenderingEngine(RenderingEngine): {
    Properties+::: {
      RenderingEngine:
        if !std.isObject(RenderingEngine) then (error 'RenderingEngine must be an object')
        else if !std.objectHas(RenderingEngine, 'Name') then (error ' have attribute Name')
        else if !std.objectHas(RenderingEngine, 'Version') then (error ' have attribute Version')
        else RenderingEngine,
    },
  },
  setSources(Sources): {
    Properties+::: {
      Sources:
        if !std.isArray(Sources) then (error 'Sources must be an array')
        else Sources,
    },
  },
  pushSources(Sources): {
    Properties+::: {
      Sources+: Sources,
    },
  },
  setEnvironment(Environment): {
    Properties+::: {
      Environment:
        if !std.isString(Environment) then (error 'Environment must be a string')
        else if std.isEmpty(Environment) then (error 'Environment must be not empty')
        else Environment,
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
