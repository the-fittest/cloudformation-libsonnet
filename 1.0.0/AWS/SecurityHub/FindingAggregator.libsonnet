{
  new(
    RegionLinkingMode,
  ): {
    local base = self,
    Properties: {
      RegionLinkingMode:
        if !std.isString(RegionLinkingMode) then (error 'RegionLinkingMode must be a string')
        else if std.isEmpty(RegionLinkingMode) then (error 'RegionLinkingMode must be not empty')
        else if RegionLinkingMode != 'ALL_REGIONS' && RegionLinkingMode != 'ALL_REGIONS_EXCEPT_SPECIFIED' && RegionLinkingMode != 'SPECIFIED_REGIONS' then (error "RegionLinkingMode should be 'ALL_REGIONS' or 'ALL_REGIONS_EXCEPT_SPECIFIED' or 'SPECIFIED_REGIONS'")
        else RegionLinkingMode,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::FindingAggregator',
  },
  setFindingAggregatorArn(FindingAggregatorArn): {
    Properties+::: {
      FindingAggregatorArn:
        if !std.isString(FindingAggregatorArn) then (error 'FindingAggregatorArn must be a string')
        else if std.isEmpty(FindingAggregatorArn) then (error 'FindingAggregatorArn must be not empty')
        else FindingAggregatorArn,
    },
  },
  setRegions(Regions): {
    Properties+::: {
      Regions:
        if !std.isArray(Regions) then (error 'Regions must be an array')
        else if std.length(Regions) < 1 then error ('Regions cannot have less than 1 items')
        else if std.length(Regions) > 50 then error ('Regions cannot have more than 50 items')
        else Regions,
    },
  },
  pushRegions(Regions): {
    Properties+::: {
      Regions+: Regions,
    },
  },
  setFindingAggregationRegion(FindingAggregationRegion): {
    Properties+::: {
      FindingAggregationRegion:
        if !std.isString(FindingAggregationRegion) then (error 'FindingAggregationRegion must be a string')
        else if std.isEmpty(FindingAggregationRegion) then (error 'FindingAggregationRegion must be not empty')
        else FindingAggregationRegion,
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
