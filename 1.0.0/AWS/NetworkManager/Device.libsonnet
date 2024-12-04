{
  new(
    GlobalNetworkId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
      GlobalNetworkId: GlobalNetworkId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::Device',
  },
  withDeviceArn(DeviceArn): {
    assert std.isString(DeviceArn) : 'DeviceArn must be a string',
    Properties+::: {
      DeviceArn: DeviceArn,
    },
  },
  withDeviceId(DeviceId): {
    assert std.isString(DeviceId) : 'DeviceId must be a string',
    Properties+::: {
      DeviceId: DeviceId,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withAWSLocation(AWSLocation): {
    assert std.isObject(AWSLocation) : 'AWSLocation must be a object',
    Properties+::: {
      AWSLocation: AWSLocation,
    },
  },
  withLocation(Location): {
    assert std.isObject(Location) : 'Location must be a object',
    Properties+::: {
      Location: Location,
    },
  },
  withModel(Model): {
    assert std.isString(Model) : 'Model must be a string',
    Properties+::: {
      Model: Model,
    },
  },
  withSerialNumber(SerialNumber): {
    assert std.isString(SerialNumber) : 'SerialNumber must be a string',
    Properties+::: {
      SerialNumber: SerialNumber,
    },
  },
  withSiteId(SiteId): {
    assert std.isString(SiteId) : 'SiteId must be a string',
    Properties+::: {
      SiteId: SiteId,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    Properties+::: {
      Type: Type,
    },
  },
  withVendor(Vendor): {
    assert std.isString(Vendor) : 'Vendor must be a string',
    Properties+::: {
      Vendor: Vendor,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
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
