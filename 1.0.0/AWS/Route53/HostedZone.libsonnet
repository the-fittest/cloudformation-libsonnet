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
    Type: 'AWS::Route53::HostedZone',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setHostedZoneConfig(HostedZoneConfig): {
    Properties+::: {
      HostedZoneConfig:
        if !std.isObject(HostedZoneConfig) then (error 'HostedZoneConfig must be an object')
        else HostedZoneConfig,
    },
  },
  setHostedZoneTags(HostedZoneTags): {
    Properties+::: {
      HostedZoneTags:
        if !std.isArray(HostedZoneTags) then (error 'HostedZoneTags must be an array')
        else HostedZoneTags,
    },
  },
  setHostedZoneTagsMixin(HostedZoneTags): {
    Properties+::: {
      HostedZoneTags+: HostedZoneTags,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 1024 then error ('Name should have not more than 1024 characters')
        else Name,
    },
  },
  setQueryLoggingConfig(QueryLoggingConfig): {
    Properties+::: {
      QueryLoggingConfig:
        if !std.isObject(QueryLoggingConfig) then (error 'QueryLoggingConfig must be an object')
        else if !std.objectHas(QueryLoggingConfig, 'CloudWatchLogsLogGroupArn') then (error ' have attribute CloudWatchLogsLogGroupArn')
        else QueryLoggingConfig,
    },
  },
  setVPCs(VPCs): {
    Properties+::: {
      VPCs:
        if !std.isArray(VPCs) then (error 'VPCs must be an array')
        else VPCs,
    },
  },
  setVPCsMixin(VPCs): {
    Properties+::: {
      VPCs+: VPCs,
    },
  },
  setNameServers(NameServers): {
    Properties+::: {
      NameServers:
        if !std.isArray(NameServers) then (error 'NameServers must be an array')
        else NameServers,
    },
  },
  setNameServersMixin(NameServers): {
    Properties+::: {
      NameServers+: NameServers,
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
