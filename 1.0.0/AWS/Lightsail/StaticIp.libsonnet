{
  new(
    StaticIpName,
  ): {
    local base = self,
    Properties: {
      StaticIpName:
        if !std.isString(StaticIpName) then (error 'StaticIpName must be a string')
        else if std.isEmpty(StaticIpName) then (error 'StaticIpName must be not empty')
        else StaticIpName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::StaticIp',
  },
  setAttachedTo(AttachedTo): {
    Properties+::: {
      AttachedTo:
        if !std.isString(AttachedTo) then (error 'AttachedTo must be a string')
        else if std.isEmpty(AttachedTo) then (error 'AttachedTo must be not empty')
        else AttachedTo,
    },
  },
  setIsAttached(IsAttached): {
    Properties+::: {
      IsAttached:
        if !std.isBoolean(IsAttached) then (error 'IsAttached must be a boolean') else IsAttached,
    },
  },
  setIpAddress(IpAddress): {
    Properties+::: {
      IpAddress:
        if !std.isString(IpAddress) then (error 'IpAddress must be a string')
        else if std.isEmpty(IpAddress) then (error 'IpAddress must be not empty')
        else IpAddress,
    },
  },
  setStaticIpArn(StaticIpArn): {
    Properties+::: {
      StaticIpArn:
        if !std.isString(StaticIpArn) then (error 'StaticIpArn must be a string')
        else if std.isEmpty(StaticIpArn) then (error 'StaticIpArn must be not empty')
        else StaticIpArn,
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
