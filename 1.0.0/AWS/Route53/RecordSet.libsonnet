{
  new(
    Type,
    Name,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53::RecordSet',
  },
  setHealthCheckId(HealthCheckId): {
    Properties+::: {
      HealthCheckId:
        if !std.isString(HealthCheckId) then (error 'HealthCheckId must be a string')
        else if std.isEmpty(HealthCheckId) then (error 'HealthCheckId must be not empty')
        else HealthCheckId,
    },
  },
  setAliasTarget(AliasTarget): {
    Properties+::: {
      AliasTarget:
        if !std.isObject(AliasTarget) then (error 'AliasTarget must be an object')
        else if !std.objectHas(AliasTarget, 'HostedZoneId') then (error ' have attribute HostedZoneId')
        else if !std.objectHas(AliasTarget, 'DNSName') then (error ' have attribute DNSName')
        else AliasTarget,
    },
  },
  setComment(Comment): {
    Properties+::: {
      Comment:
        if !std.isString(Comment) then (error 'Comment must be a string')
        else if std.isEmpty(Comment) then (error 'Comment must be not empty')
        else Comment,
    },
  },
  setHostedZoneName(HostedZoneName): {
    Properties+::: {
      HostedZoneName:
        if !std.isString(HostedZoneName) then (error 'HostedZoneName must be a string')
        else if std.isEmpty(HostedZoneName) then (error 'HostedZoneName must be not empty')
        else HostedZoneName,
    },
  },
  setResourceRecords(ResourceRecords): {
    Properties+::: {
      ResourceRecords:
        if !std.isArray(ResourceRecords) then (error 'ResourceRecords must be an array')
        else ResourceRecords,
    },
  },
  pushResourceRecords(ResourceRecords): {
    Properties+::: {
      ResourceRecords+: ResourceRecords,
    },
  },
  setHostedZoneId(HostedZoneId): {
    Properties+::: {
      HostedZoneId:
        if !std.isString(HostedZoneId) then (error 'HostedZoneId must be a string')
        else if std.isEmpty(HostedZoneId) then (error 'HostedZoneId must be not empty')
        else HostedZoneId,
    },
  },
  setSetIdentifier(SetIdentifier): {
    Properties+::: {
      SetIdentifier:
        if !std.isString(SetIdentifier) then (error 'SetIdentifier must be a string')
        else if std.isEmpty(SetIdentifier) then (error 'SetIdentifier must be not empty')
        else SetIdentifier,
    },
  },
  setTTL(TTL): {
    Properties+::: {
      TTL:
        if !std.isString(TTL) then (error 'TTL must be a string')
        else if std.isEmpty(TTL) then (error 'TTL must be not empty')
        else TTL,
    },
  },
  setWeight(Weight): {
    Properties+::: {
      Weight:
        if !std.isNumber(Weight) then (error 'Weight must be an number')
        else Weight,
    },
  },
  setCidrRoutingConfig(CidrRoutingConfig): {
    Properties+::: {
      CidrRoutingConfig:
        if !std.isObject(CidrRoutingConfig) then (error 'CidrRoutingConfig must be an object')
        else if !std.objectHas(CidrRoutingConfig, 'CollectionId') then (error ' have attribute CollectionId')
        else if !std.objectHas(CidrRoutingConfig, 'LocationName') then (error ' have attribute LocationName')
        else CidrRoutingConfig,
    },
  },
  setFailover(Failover): {
    Properties+::: {
      Failover:
        if !std.isString(Failover) then (error 'Failover must be a string')
        else if std.isEmpty(Failover) then (error 'Failover must be not empty')
        else Failover,
    },
  },
  setGeoProximityLocation(GeoProximityLocation): {
    Properties+::: {
      GeoProximityLocation:
        if !std.isObject(GeoProximityLocation) then (error 'GeoProximityLocation must be an object')
        else GeoProximityLocation,
    },
  },
  setRegion(Region): {
    Properties+::: {
      Region:
        if !std.isString(Region) then (error 'Region must be a string')
        else if std.isEmpty(Region) then (error 'Region must be not empty')
        else Region,
    },
  },
  setGeoLocation(GeoLocation): {
    Properties+::: {
      GeoLocation:
        if !std.isObject(GeoLocation) then (error 'GeoLocation must be an object')
        else GeoLocation,
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
  setMultiValueAnswer(MultiValueAnswer): {
    Properties+::: {
      MultiValueAnswer:
        if !std.isBoolean(MultiValueAnswer) then (error 'MultiValueAnswer must be a boolean') else MultiValueAnswer,
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
