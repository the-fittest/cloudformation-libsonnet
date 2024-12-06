{
  new(
    ConnectorArn,
  ): {
    local base = self,
    Properties: {
      ConnectorArn:
        if !std.isString(ConnectorArn) then (error 'ConnectorArn must be a string')
        else if std.isEmpty(ConnectorArn) then (error 'ConnectorArn must be not empty')
        else if std.length(ConnectorArn) < 5 then error ('ConnectorArn should have at least 5 characters')
        else if std.length(ConnectorArn) > 200 then error ('ConnectorArn should have not more than 200 characters')
        else ConnectorArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PCAConnectorSCEP::Challenge',
  },
  setChallengeArn(ChallengeArn): {
    Properties+::: {
      ChallengeArn:
        if !std.isString(ChallengeArn) then (error 'ChallengeArn must be a string')
        else if std.isEmpty(ChallengeArn) then (error 'ChallengeArn must be not empty')
        else if std.length(ChallengeArn) < 5 then error ('ChallengeArn should have at least 5 characters')
        else if std.length(ChallengeArn) > 200 then error ('ChallengeArn should have not more than 200 characters')
        else ChallengeArn,
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
