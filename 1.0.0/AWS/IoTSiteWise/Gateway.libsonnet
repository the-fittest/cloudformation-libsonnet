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
  setTagsMixin(Tags): {
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
  setGatewayCapabilitySummariesMixin(GatewayCapabilitySummaries): {
    Properties+::: {
      GatewayCapabilitySummaries+: GatewayCapabilitySummaries,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
