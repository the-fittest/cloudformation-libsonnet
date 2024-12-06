{
  new(
    JobFlowId,
    InstanceCount,
    InstanceRole,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      JobFlowId:
        if !std.isString(JobFlowId) then (error 'JobFlowId must be a string')
        else if std.isEmpty(JobFlowId) then (error 'JobFlowId must be not empty')
        else JobFlowId,
      InstanceCount:
        if !std.isNumber(InstanceCount) then (error 'InstanceCount must be an number')
        else InstanceCount,
      InstanceRole:
        if !std.isString(InstanceRole) then (error 'InstanceRole must be a string')
        else if std.isEmpty(InstanceRole) then (error 'InstanceRole must be not empty')
        else InstanceRole,
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::InstanceGroupConfig',
  },
  setAutoScalingPolicy(AutoScalingPolicy): {
    Properties+::: {
      AutoScalingPolicy:
        if !std.isObject(AutoScalingPolicy) then (error 'AutoScalingPolicy must be an object')
        else if !std.objectHas(AutoScalingPolicy, 'Constraints') then (error ' have attribute Constraints')
        else if !std.objectHas(AutoScalingPolicy, 'Rules') then (error ' have attribute Rules')
        else AutoScalingPolicy,
    },
  },
  setBidPrice(BidPrice): {
    Properties+::: {
      BidPrice:
        if !std.isString(BidPrice) then (error 'BidPrice must be a string')
        else if std.isEmpty(BidPrice) then (error 'BidPrice must be not empty')
        else BidPrice,
    },
  },
  setEbsConfiguration(EbsConfiguration): {
    Properties+::: {
      EbsConfiguration:
        if !std.isObject(EbsConfiguration) then (error 'EbsConfiguration must be an object')
        else EbsConfiguration,
    },
  },
  setCustomAmiId(CustomAmiId): {
    Properties+::: {
      CustomAmiId:
        if !std.isString(CustomAmiId) then (error 'CustomAmiId must be a string')
        else if std.isEmpty(CustomAmiId) then (error 'CustomAmiId must be not empty')
        else CustomAmiId,
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
  setConfigurations(Configurations): {
    Properties+::: {
      Configurations:
        if !std.isArray(Configurations) then (error 'Configurations must be an array')
        else Configurations,
    },
  },
  pushConfigurations(Configurations): {
    Properties+::: {
      Configurations+: Configurations,
    },
  },
  setMarket(Market): {
    Properties+::: {
      Market:
        if !std.isString(Market) then (error 'Market must be a string')
        else if std.isEmpty(Market) then (error 'Market must be not empty')
        else Market,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
