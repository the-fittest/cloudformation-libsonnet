{
  new(
    DestinationArn,
    FilterPattern,
    LogGroupName,
  ): {
    local base = self,
    Properties: {
      DestinationArn:
        if !std.isString(DestinationArn) then (error 'DestinationArn must be a string')
        else if std.isEmpty(DestinationArn) then (error 'DestinationArn must be not empty')
        else DestinationArn,
      FilterPattern:
        if !std.isString(FilterPattern) then (error 'FilterPattern must be a string')
        else if std.isEmpty(FilterPattern) then (error 'FilterPattern must be not empty')
        else FilterPattern,
      LogGroupName:
        if !std.isString(LogGroupName) then (error 'LogGroupName must be a string')
        else if std.isEmpty(LogGroupName) then (error 'LogGroupName must be not empty')
        else LogGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::SubscriptionFilter',
  },
  setFilterName(FilterName): {
    Properties+::: {
      FilterName:
        if !std.isString(FilterName) then (error 'FilterName must be a string')
        else if std.isEmpty(FilterName) then (error 'FilterName must be not empty')
        else FilterName,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
  },
  setDistribution(Distribution): {
    Properties+::: {
      Distribution:
        if !std.isString(Distribution) then (error 'Distribution must be a string')
        else if std.isEmpty(Distribution) then (error 'Distribution must be not empty')
        else if Distribution != 'Random' && Distribution != 'ByLogStream' then (error "Distribution should be 'Random' or 'ByLogStream'")
        else Distribution,
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
