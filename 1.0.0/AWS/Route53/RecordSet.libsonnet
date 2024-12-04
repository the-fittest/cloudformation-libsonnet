{
  new(
    Type,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53::RecordSet',
  },
  withHealthCheckId(HealthCheckId): {
    assert std.isString(HealthCheckId) : 'HealthCheckId must be a string',
    Properties+::: {
      HealthCheckId: HealthCheckId,
    },
  },
  withAliasTarget(AliasTarget): {
    assert std.isObject(AliasTarget) : 'AliasTarget must be a object',
    Properties+::: {
      AliasTarget: AliasTarget,
    },
  },
  withComment(Comment): {
    assert std.isString(Comment) : 'Comment must be a string',
    Properties+::: {
      Comment: Comment,
    },
  },
  withHostedZoneName(HostedZoneName): {
    assert std.isString(HostedZoneName) : 'HostedZoneName must be a string',
    Properties+::: {
      HostedZoneName: HostedZoneName,
    },
  },
  withResourceRecords(ResourceRecords): {
    Properties+::: {
      ResourceRecords: (if std.isArray(ResourceRecords) then ResourceRecords else [ResourceRecords]),
    },
  },
  withResourceRecordsMixin(ResourceRecords): {
    Properties+::: {
      ResourceRecords+: (if std.isArray(ResourceRecords) then ResourceRecords else [ResourceRecords]),
    },
  },
  withHostedZoneId(HostedZoneId): {
    assert std.isString(HostedZoneId) : 'HostedZoneId must be a string',
    Properties+::: {
      HostedZoneId: HostedZoneId,
    },
  },
  withSetIdentifier(SetIdentifier): {
    assert std.isString(SetIdentifier) : 'SetIdentifier must be a string',
    Properties+::: {
      SetIdentifier: SetIdentifier,
    },
  },
  withTTL(TTL): {
    assert std.isString(TTL) : 'TTL must be a string',
    Properties+::: {
      TTL: TTL,
    },
  },
  withWeight(Weight): {
    assert std.isNumber(Weight) : 'Weight must be a number',
    Properties+::: {
      Weight: Weight,
    },
  },
  withCidrRoutingConfig(CidrRoutingConfig): {
    assert std.isObject(CidrRoutingConfig) : 'CidrRoutingConfig must be a object',
    Properties+::: {
      CidrRoutingConfig: CidrRoutingConfig,
    },
  },
  withFailover(Failover): {
    assert std.isString(Failover) : 'Failover must be a string',
    Properties+::: {
      Failover: Failover,
    },
  },
  withGeoProximityLocation(GeoProximityLocation): {
    assert std.isObject(GeoProximityLocation) : 'GeoProximityLocation must be a object',
    Properties+::: {
      GeoProximityLocation: GeoProximityLocation,
    },
  },
  withRegion(Region): {
    assert std.isString(Region) : 'Region must be a string',
    Properties+::: {
      Region: Region,
    },
  },
  withGeoLocation(GeoLocation): {
    assert std.isObject(GeoLocation) : 'GeoLocation must be a object',
    Properties+::: {
      GeoLocation: GeoLocation,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withMultiValueAnswer(MultiValueAnswer): {
    assert std.isBoolean(MultiValueAnswer) : 'MultiValueAnswer must be a boolean',
    Properties+::: {
      MultiValueAnswer: MultiValueAnswer,
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
