{
  new(
    Protocol,
    Source,
  ): {
    local base = self,
    Properties: {
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else if Protocol != 'tcp' && Protocol != 'udp' then (error "Protocol should be 'tcp' or 'udp'")
        else Protocol,
      Source:
        if !std.isString(Source) then (error 'Source must be a string')
        else if std.isEmpty(Source) then (error 'Source must be not empty')
        else Source,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInsightsPath',
  },
  setNetworkInsightsPathId(NetworkInsightsPathId): {
    Properties+::: {
      NetworkInsightsPathId:
        if !std.isString(NetworkInsightsPathId) then (error 'NetworkInsightsPathId must be a string')
        else if std.isEmpty(NetworkInsightsPathId) then (error 'NetworkInsightsPathId must be not empty')
        else NetworkInsightsPathId,
    },
  },
  setNetworkInsightsPathArn(NetworkInsightsPathArn): {
    Properties+::: {
      NetworkInsightsPathArn:
        if !std.isString(NetworkInsightsPathArn) then (error 'NetworkInsightsPathArn must be a string')
        else if std.isEmpty(NetworkInsightsPathArn) then (error 'NetworkInsightsPathArn must be not empty')
        else NetworkInsightsPathArn,
    },
  },
  setCreatedDate(CreatedDate): {
    Properties+::: {
      CreatedDate:
        if !std.isString(CreatedDate) then (error 'CreatedDate must be a string')
        else if std.isEmpty(CreatedDate) then (error 'CreatedDate must be not empty')
        else CreatedDate,
    },
  },
  setSourceIp(SourceIp): {
    Properties+::: {
      SourceIp:
        if !std.isString(SourceIp) then (error 'SourceIp must be a string')
        else if std.isEmpty(SourceIp) then (error 'SourceIp must be not empty')
        else SourceIp,
    },
  },
  setFilterAtSource(FilterAtSource): {
    Properties+::: {
      FilterAtSource:
        if !std.isObject(FilterAtSource) then (error 'FilterAtSource must be an object')
        else FilterAtSource,
    },
  },
  setFilterAtDestination(FilterAtDestination): {
    Properties+::: {
      FilterAtDestination:
        if !std.isObject(FilterAtDestination) then (error 'FilterAtDestination must be an object')
        else FilterAtDestination,
    },
  },
  setDestinationIp(DestinationIp): {
    Properties+::: {
      DestinationIp:
        if !std.isString(DestinationIp) then (error 'DestinationIp must be a string')
        else if std.isEmpty(DestinationIp) then (error 'DestinationIp must be not empty')
        else DestinationIp,
    },
  },
  setDestination(Destination): {
    Properties+::: {
      Destination:
        if !std.isString(Destination) then (error 'Destination must be a string')
        else if std.isEmpty(Destination) then (error 'Destination must be not empty')
        else Destination,
    },
  },
  setSourceArn(SourceArn): {
    Properties+::: {
      SourceArn:
        if !std.isString(SourceArn) then (error 'SourceArn must be a string')
        else if std.isEmpty(SourceArn) then (error 'SourceArn must be not empty')
        else SourceArn,
    },
  },
  setDestinationArn(DestinationArn): {
    Properties+::: {
      DestinationArn:
        if !std.isString(DestinationArn) then (error 'DestinationArn must be a string')
        else if std.isEmpty(DestinationArn) then (error 'DestinationArn must be not empty')
        else DestinationArn,
    },
  },
  setDestinationPort(DestinationPort): {
    Properties+::: {
      DestinationPort:
        if !std.isNumber(DestinationPort) then (error 'DestinationPort must be an number')
        else DestinationPort,
    },
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
