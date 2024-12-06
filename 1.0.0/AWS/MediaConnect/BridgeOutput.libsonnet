{
  new(
    BridgeArn,
    Name,
    NetworkOutput,
  ): {
    local base = self,
    Properties: {
      BridgeArn:
        if !std.isString(BridgeArn) then (error 'BridgeArn must be a string')
        else if std.isEmpty(BridgeArn) then (error 'BridgeArn must be not empty')
        else BridgeArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      NetworkOutput:
        if !std.isObject(NetworkOutput) then (error 'NetworkOutput must be an object')
        else if !std.objectHas(NetworkOutput, 'Protocol') then (error ' have attribute Protocol')
        else if !std.objectHas(NetworkOutput, 'IpAddress') then (error ' have attribute IpAddress')
        else if !std.objectHas(NetworkOutput, 'Port') then (error ' have attribute Port')
        else if !std.objectHas(NetworkOutput, 'NetworkName') then (error ' have attribute NetworkName')
        else if !std.objectHas(NetworkOutput, 'Ttl') then (error ' have attribute Ttl')
        else NetworkOutput,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::BridgeOutput',
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
