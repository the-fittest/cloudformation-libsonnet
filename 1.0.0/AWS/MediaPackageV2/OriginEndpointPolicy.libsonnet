{
  new(
    ChannelGroupName,
    ChannelName,
    OriginEndpointName,
    Policy,
  ): {
    local base = self,
    Properties: {
      ChannelGroupName:
        if !std.isString(ChannelGroupName) then (error 'ChannelGroupName must be a string')
        else if std.isEmpty(ChannelGroupName) then (error 'ChannelGroupName must be not empty')
        else if std.length(ChannelGroupName) < 1 then error ('ChannelGroupName should have at least 1 characters')
        else if std.length(ChannelGroupName) > 256 then error ('ChannelGroupName should have not more than 256 characters')
        else ChannelGroupName,
      ChannelName:
        if !std.isString(ChannelName) then (error 'ChannelName must be a string')
        else if std.isEmpty(ChannelName) then (error 'ChannelName must be not empty')
        else if std.length(ChannelName) < 1 then error ('ChannelName should have at least 1 characters')
        else if std.length(ChannelName) > 256 then error ('ChannelName should have not more than 256 characters')
        else ChannelName,
      OriginEndpointName:
        if !std.isString(OriginEndpointName) then (error 'OriginEndpointName must be a string')
        else if std.isEmpty(OriginEndpointName) then (error 'OriginEndpointName must be not empty')
        else if std.length(OriginEndpointName) < 1 then error ('OriginEndpointName should have at least 1 characters')
        else if std.length(OriginEndpointName) > 256 then error ('OriginEndpointName should have not more than 256 characters')
        else OriginEndpointName,
      Policy: Policy,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaPackageV2::OriginEndpointPolicy',
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
