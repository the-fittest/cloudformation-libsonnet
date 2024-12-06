{
  new(
    Application,
  ): {
    local base = self,
    Properties: {
      Application:
        if !std.isString(Application) then (error 'Application must be a string')
        else if std.isEmpty(Application) then (error 'Application must be not empty')
        else Application,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RoboMaker::SimulationApplicationVersion',
  },
  setCurrentRevisionId(CurrentRevisionId): {
    Properties+::: {
      CurrentRevisionId:
        if !std.isString(CurrentRevisionId) then (error 'CurrentRevisionId must be a string')
        else if std.isEmpty(CurrentRevisionId) then (error 'CurrentRevisionId must be not empty')
        else if std.length(CurrentRevisionId) < 1 then error ('CurrentRevisionId should have at least 1 characters')
        else if std.length(CurrentRevisionId) > 40 then error ('CurrentRevisionId should have not more than 40 characters')
        else CurrentRevisionId,
    },
  },
  setApplicationVersion(ApplicationVersion): {
    Properties+::: {
      ApplicationVersion:
        if !std.isString(ApplicationVersion) then (error 'ApplicationVersion must be a string')
        else if std.isEmpty(ApplicationVersion) then (error 'ApplicationVersion must be not empty')
        else ApplicationVersion,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
