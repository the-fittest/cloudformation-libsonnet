{
  // AWS EC2 NetworkInsightsPath
  NetworkInsightsPath: {
    new(
      Protocol,
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Protocol) : 'Protocol must be a string',
        Protocol: Protocol,
        assert std.isString(Source) : 'Source must be a string',
        Source: Source,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::NetworkInsightsPath',
    },
    withNetworkInsightsPathId(NetworkInsightsPathId): {
      assert std.isString(NetworkInsightsPathId) : 'NetworkInsightsPathId must be a string',
      Properties+::: {
        NetworkInsightsPathId: NetworkInsightsPathId,
      },
    },
    withNetworkInsightsPathArn(NetworkInsightsPathArn): {
      assert std.isString(NetworkInsightsPathArn) : 'NetworkInsightsPathArn must be a string',
      Properties+::: {
        NetworkInsightsPathArn: NetworkInsightsPathArn,
      },
    },
    withCreatedDate(CreatedDate): {
      assert std.isString(CreatedDate) : 'CreatedDate must be a string',
      Properties+::: {
        CreatedDate: CreatedDate,
      },
    },
    withSourceIp(SourceIp): {
      assert std.isString(SourceIp) : 'SourceIp must be a string',
      Properties+::: {
        SourceIp: SourceIp,
      },
    },
    withFilterAtSource(FilterAtSource): {
      assert std.isObject(FilterAtSource) : 'FilterAtSource must be a object',
      Properties+::: {
        FilterAtSource: FilterAtSource,
      },
    },
    withFilterAtDestination(FilterAtDestination): {
      assert std.isObject(FilterAtDestination) : 'FilterAtDestination must be a object',
      Properties+::: {
        FilterAtDestination: FilterAtDestination,
      },
    },
    withDestinationIp(DestinationIp): {
      assert std.isString(DestinationIp) : 'DestinationIp must be a string',
      Properties+::: {
        DestinationIp: DestinationIp,
      },
    },
    withDestination(Destination): {
      assert std.isString(Destination) : 'Destination must be a string',
      Properties+::: {
        Destination: Destination,
      },
    },
    withSourceArn(SourceArn): {
      assert std.isString(SourceArn) : 'SourceArn must be a string',
      Properties+::: {
        SourceArn: SourceArn,
      },
    },
    withDestinationArn(DestinationArn): {
      assert std.isString(DestinationArn) : 'DestinationArn must be a string',
      Properties+::: {
        DestinationArn: DestinationArn,
      },
    },
    withDestinationPort(DestinationPort): {
      assert std.isNumber(DestinationPort) : 'DestinationPort must be a number',
      Properties+::: {
        DestinationPort: DestinationPort,
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
  },
}
