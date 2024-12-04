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
    Type: 'AWS::Route53::HostedZone',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withHostedZoneConfig(HostedZoneConfig): {
    assert std.isObject(HostedZoneConfig) : 'HostedZoneConfig must be a object',
    Properties+::: {
      HostedZoneConfig: HostedZoneConfig,
    },
  },
  withHostedZoneTags(HostedZoneTags): {
    Properties+::: {
      HostedZoneTags: (if std.isArray(HostedZoneTags) then HostedZoneTags else [HostedZoneTags]),
    },
  },
  withHostedZoneTagsMixin(HostedZoneTags): {
    Properties+::: {
      HostedZoneTags+: (if std.isArray(HostedZoneTags) then HostedZoneTags else [HostedZoneTags]),
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withQueryLoggingConfig(QueryLoggingConfig): {
    assert std.isObject(QueryLoggingConfig) : 'QueryLoggingConfig must be a object',
    Properties+::: {
      QueryLoggingConfig: QueryLoggingConfig,
    },
  },
  withVPCs(VPCs): {
    Properties+::: {
      VPCs: (if std.isArray(VPCs) then VPCs else [VPCs]),
    },
  },
  withVPCsMixin(VPCs): {
    Properties+::: {
      VPCs+: (if std.isArray(VPCs) then VPCs else [VPCs]),
    },
  },
  withNameServers(NameServers): {
    Properties+::: {
      NameServers: (if std.isArray(NameServers) then NameServers else [NameServers]),
    },
  },
  withNameServersMixin(NameServers): {
    Properties+::: {
      NameServers+: (if std.isArray(NameServers) then NameServers else [NameServers]),
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
