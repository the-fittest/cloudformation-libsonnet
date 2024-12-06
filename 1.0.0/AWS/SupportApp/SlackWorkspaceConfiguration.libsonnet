{
  new(
    TeamId,
  ): {
    local base = self,
    Properties: {
      TeamId:
        if !std.isString(TeamId) then (error 'TeamId must be a string')
        else if std.isEmpty(TeamId) then (error 'TeamId must be not empty')
        else if std.length(TeamId) < 1 then error ('TeamId should have at least 1 characters')
        else if std.length(TeamId) > 256 then error ('TeamId should have not more than 256 characters')
        else TeamId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SupportApp::SlackWorkspaceConfiguration',
  },
  setVersionId(VersionId): {
    Properties+::: {
      VersionId:
        if !std.isString(VersionId) then (error 'VersionId must be a string')
        else if std.isEmpty(VersionId) then (error 'VersionId must be not empty')
        else if std.length(VersionId) < 1 then error ('VersionId should have at least 1 characters')
        else if std.length(VersionId) > 256 then error ('VersionId should have not more than 256 characters')
        else VersionId,
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
