{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::Input',
  },
  setSrtSettings(SrtSettings): {
    Properties+::: {
      SrtSettings:
        if !std.isObject(SrtSettings) then (error 'SrtSettings must be an object')
        else SrtSettings,
    },
  },
  setInputNetworkLocation(InputNetworkLocation): {
    Properties+::: {
      InputNetworkLocation:
        if !std.isString(InputNetworkLocation) then (error 'InputNetworkLocation must be a string')
        else if std.isEmpty(InputNetworkLocation) then (error 'InputNetworkLocation must be not empty')
        else InputNetworkLocation,
    },
  },
  setDestinations(Destinations): {
    Properties+::: {
      Destinations:
        if !std.isArray(Destinations) then (error 'Destinations must be an array')
        else Destinations,
    },
  },
  pushDestinations(Destinations): {
    Properties+::: {
      Destinations+: Destinations,
    },
  },
  setVpc(Vpc): {
    Properties+::: {
      Vpc:
        if !std.isObject(Vpc) then (error 'Vpc must be an object')
        else Vpc,
    },
  },
  setMediaConnectFlows(MediaConnectFlows): {
    Properties+::: {
      MediaConnectFlows:
        if !std.isArray(MediaConnectFlows) then (error 'MediaConnectFlows must be an array')
        else MediaConnectFlows,
    },
  },
  pushMediaConnectFlows(MediaConnectFlows): {
    Properties+::: {
      MediaConnectFlows+: MediaConnectFlows,
    },
  },
  setSources(Sources): {
    Properties+::: {
      Sources:
        if !std.isArray(Sources) then (error 'Sources must be an array')
        else Sources,
    },
  },
  pushSources(Sources): {
    Properties+::: {
      Sources+: Sources,
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
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setInputSecurityGroups(InputSecurityGroups): {
    Properties+::: {
      InputSecurityGroups:
        if !std.isArray(InputSecurityGroups) then (error 'InputSecurityGroups must be an array')
        else InputSecurityGroups,
    },
  },
  pushInputSecurityGroups(InputSecurityGroups): {
    Properties+::: {
      InputSecurityGroups+: InputSecurityGroups,
    },
  },
  setMulticastSettings(MulticastSettings): {
    Properties+::: {
      MulticastSettings:
        if !std.isObject(MulticastSettings) then (error 'MulticastSettings must be an object')
        else MulticastSettings,
    },
  },
  setInputDevices(InputDevices): {
    Properties+::: {
      InputDevices:
        if !std.isArray(InputDevices) then (error 'InputDevices must be an array')
        else InputDevices,
    },
  },
  pushInputDevices(InputDevices): {
    Properties+::: {
      InputDevices+: InputDevices,
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
