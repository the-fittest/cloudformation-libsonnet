{
  new(
    Authentication,
    ClientSubnets,
    SecurityGroups,
    TargetClusterArn,
    VpcId,
  ): {
    local base = self,
    Properties: {
      Authentication:
        if !std.isString(Authentication) then (error 'Authentication must be a string')
        else if std.isEmpty(Authentication) then (error 'Authentication must be not empty')
        else if Authentication != 'SASL_IAM' && Authentication != 'SASL_SCRAM' && Authentication != 'TLS' then (error "Authentication should be 'SASL_IAM' or 'SASL_SCRAM' or 'TLS'")
        else if std.length(Authentication) < 3 then error ('Authentication should have at least 3 characters')
        else if std.length(Authentication) > 10 then error ('Authentication should have not more than 10 characters')
        else Authentication,
      ClientSubnets:
        if !std.isArray(ClientSubnets) then (error 'ClientSubnets must be an array')
        else ClientSubnets,
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
      TargetClusterArn:
        if !std.isString(TargetClusterArn) then (error 'TargetClusterArn must be a string')
        else if std.isEmpty(TargetClusterArn) then (error 'TargetClusterArn must be not empty')
        else TargetClusterArn,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MSK::VpcConnection',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
