{
  new(
    ConsumerArn,
    TrackerName,
  ): {
    local base = self,
    Properties: {
      ConsumerArn:
        if !std.isString(ConsumerArn) then (error 'ConsumerArn must be a string')
        else if std.isEmpty(ConsumerArn) then (error 'ConsumerArn must be not empty')
        else if std.length(ConsumerArn) > 1600 then error ('ConsumerArn should have not more than 1600 characters')
        else ConsumerArn,
      TrackerName:
        if !std.isString(TrackerName) then (error 'TrackerName must be a string')
        else if std.isEmpty(TrackerName) then (error 'TrackerName must be not empty')
        else if std.length(TrackerName) < 1 then error ('TrackerName should have at least 1 characters')
        else if std.length(TrackerName) > 100 then error ('TrackerName should have not more than 100 characters')
        else TrackerName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Location::TrackerConsumer',
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
