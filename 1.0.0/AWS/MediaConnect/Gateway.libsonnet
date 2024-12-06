{
  new(
    Name,
    EgressCidrBlocks,
    Networks,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      EgressCidrBlocks:
        if !std.isArray(EgressCidrBlocks) then (error 'EgressCidrBlocks must be an array')
        else EgressCidrBlocks,
      Networks:
        if !std.isArray(Networks) then (error 'Networks must be an array')
        else if std.length(Networks) < 1 then error ('Networks cannot have less than 1 items')
        else if std.length(Networks) > 4 then error ('Networks cannot have more than 4 items')
        else Networks,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::Gateway',
  },
  setGatewayArn(GatewayArn): {
    Properties+::: {
      GatewayArn:
        if !std.isString(GatewayArn) then (error 'GatewayArn must be a string')
        else if std.isEmpty(GatewayArn) then (error 'GatewayArn must be not empty')
        else GatewayArn,
    },
  },
  setGatewayState(GatewayState): {
    Properties+::: {
      GatewayState:
        if !std.isString(GatewayState) then (error 'GatewayState must be a string')
        else if std.isEmpty(GatewayState) then (error 'GatewayState must be not empty')
        else if GatewayState != 'CREATING' && GatewayState != 'ACTIVE' && GatewayState != 'UPDATING' && GatewayState != 'ERROR' && GatewayState != 'DELETING' && GatewayState != 'DELETED' then (error "GatewayState should be 'CREATING' or 'ACTIVE' or 'UPDATING' or 'ERROR' or 'DELETING' or 'DELETED'")
        else GatewayState,
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
