{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::Input',
  },
  withSrtSettings(SrtSettings): {
    assert std.isObject(SrtSettings) : 'SrtSettings must be a object',
    Properties+::: {
      SrtSettings: SrtSettings,
    },
  },
  withInputNetworkLocation(InputNetworkLocation): {
    assert std.isString(InputNetworkLocation) : 'InputNetworkLocation must be a string',
    Properties+::: {
      InputNetworkLocation: InputNetworkLocation,
    },
  },
  withDestinations(Destinations): {
    Properties+::: {
      Destinations: (if std.isArray(Destinations) then Destinations else [Destinations]),
    },
  },
  withDestinationsMixin(Destinations): {
    Properties+::: {
      Destinations+: (if std.isArray(Destinations) then Destinations else [Destinations]),
    },
  },
  withVpc(Vpc): {
    assert std.isObject(Vpc) : 'Vpc must be a object',
    Properties+::: {
      Vpc: Vpc,
    },
  },
  withMediaConnectFlows(MediaConnectFlows): {
    Properties+::: {
      MediaConnectFlows: (if std.isArray(MediaConnectFlows) then MediaConnectFlows else [MediaConnectFlows]),
    },
  },
  withMediaConnectFlowsMixin(MediaConnectFlows): {
    Properties+::: {
      MediaConnectFlows+: (if std.isArray(MediaConnectFlows) then MediaConnectFlows else [MediaConnectFlows]),
    },
  },
  withSources(Sources): {
    Properties+::: {
      Sources: (if std.isArray(Sources) then Sources else [Sources]),
    },
  },
  withSourcesMixin(Sources): {
    Properties+::: {
      Sources+: (if std.isArray(Sources) then Sources else [Sources]),
    },
  },
  withRoleArn(RoleArn): {
    assert std.isString(RoleArn) : 'RoleArn must be a string',
    Properties+::: {
      RoleArn: RoleArn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    Properties+::: {
      Type: Type,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withInputSecurityGroups(InputSecurityGroups): {
    Properties+::: {
      InputSecurityGroups: (if std.isArray(InputSecurityGroups) then InputSecurityGroups else [InputSecurityGroups]),
    },
  },
  withInputSecurityGroupsMixin(InputSecurityGroups): {
    Properties+::: {
      InputSecurityGroups+: (if std.isArray(InputSecurityGroups) then InputSecurityGroups else [InputSecurityGroups]),
    },
  },
  withMulticastSettings(MulticastSettings): {
    assert std.isObject(MulticastSettings) : 'MulticastSettings must be a object',
    Properties+::: {
      MulticastSettings: MulticastSettings,
    },
  },
  withInputDevices(InputDevices): {
    Properties+::: {
      InputDevices: (if std.isArray(InputDevices) then InputDevices else [InputDevices]),
    },
  },
  withInputDevicesMixin(InputDevices): {
    Properties+::: {
      InputDevices+: (if std.isArray(InputDevices) then InputDevices else [InputDevices]),
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
