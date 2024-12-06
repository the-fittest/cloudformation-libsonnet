{
  new(
    GatewayName,
    GatewayPlatform,
  ): {
    local base = self,
    Properties: {
      GatewayName:
        if !std.isString(GatewayName) then (error 'GatewayName must be a string')
        else if std.isEmpty(GatewayName) then (error 'GatewayName must be not empty')
        else GatewayName,
      GatewayPlatform:
        if !std.isObject(GatewayPlatform) then (error 'GatewayPlatform must be an object')
        else GatewayPlatform,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::Gateway',
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setGatewayId(GatewayId): {
    Properties+::: {
      GatewayId:
        if !std.isString(GatewayId) then (error 'GatewayId must be a string')
        else if std.isEmpty(GatewayId) then (error 'GatewayId must be not empty')
        else GatewayId,
    },
  },
  setGatewayCapabilitySummaries(GatewayCapabilitySummaries): {
    Properties+::: {
      GatewayCapabilitySummaries:
        if !std.isArray(GatewayCapabilitySummaries) then (error 'GatewayCapabilitySummaries must be an array')
        else GatewayCapabilitySummaries,
    },
  },
  pushGatewayCapabilitySummaries(GatewayCapabilitySummaries): {
    Properties+::: {
      GatewayCapabilitySummaries+: GatewayCapabilitySummaries,
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
