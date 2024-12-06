{
  new(
    DestinationName,
    TargetArn,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      DestinationName:
        if !std.isString(DestinationName) then (error 'DestinationName must be a string')
        else if std.isEmpty(DestinationName) then (error 'DestinationName must be not empty')
        else if std.length(DestinationName) < 1 then error ('DestinationName should have at least 1 characters')
        else if std.length(DestinationName) > 512 then error ('DestinationName should have not more than 512 characters')
        else DestinationName,
      TargetArn:
        if !std.isString(TargetArn) then (error 'TargetArn must be a string')
        else if std.isEmpty(TargetArn) then (error 'TargetArn must be not empty')
        else if std.length(TargetArn) < 1 then error ('TargetArn should have at least 1 characters')
        else TargetArn,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::Destination',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDestinationPolicy(DestinationPolicy): {
    Properties+::: {
      DestinationPolicy:
        if !std.isString(DestinationPolicy) then (error 'DestinationPolicy must be a string')
        else if std.isEmpty(DestinationPolicy) then (error 'DestinationPolicy must be not empty')
        else if std.length(DestinationPolicy) < 1 then error ('DestinationPolicy should have at least 1 characters')
        else DestinationPolicy,
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
