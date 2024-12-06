{
  new(
    RuleAction,
    SourceCidrBlock,
    RuleNumber,
    DestinationCidrBlock,
    TrafficMirrorFilterId,
    TrafficDirection,
  ): {
    local base = self,
    Properties: {
      RuleAction:
        if !std.isString(RuleAction) then (error 'RuleAction must be a string')
        else if std.isEmpty(RuleAction) then (error 'RuleAction must be not empty')
        else RuleAction,
      SourceCidrBlock:
        if !std.isString(SourceCidrBlock) then (error 'SourceCidrBlock must be a string')
        else if std.isEmpty(SourceCidrBlock) then (error 'SourceCidrBlock must be not empty')
        else SourceCidrBlock,
      RuleNumber:
        if !std.isNumber(RuleNumber) then (error 'RuleNumber must be an number')
        else RuleNumber,
      DestinationCidrBlock:
        if !std.isString(DestinationCidrBlock) then (error 'DestinationCidrBlock must be a string')
        else if std.isEmpty(DestinationCidrBlock) then (error 'DestinationCidrBlock must be not empty')
        else DestinationCidrBlock,
      TrafficMirrorFilterId:
        if !std.isString(TrafficMirrorFilterId) then (error 'TrafficMirrorFilterId must be a string')
        else if std.isEmpty(TrafficMirrorFilterId) then (error 'TrafficMirrorFilterId must be not empty')
        else TrafficMirrorFilterId,
      TrafficDirection:
        if !std.isString(TrafficDirection) then (error 'TrafficDirection must be a string')
        else if std.isEmpty(TrafficDirection) then (error 'TrafficDirection must be not empty')
        else TrafficDirection,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TrafficMirrorFilterRule',
  },
  setDestinationPortRange(DestinationPortRange): {
    Properties+::: {
      DestinationPortRange:
        if !std.isObject(DestinationPortRange) then (error 'DestinationPortRange must be an object')
        else if !std.objectHas(DestinationPortRange, 'FromPort') then (error ' have attribute FromPort')
        else if !std.objectHas(DestinationPortRange, 'ToPort') then (error ' have attribute ToPort')
        else DestinationPortRange,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setSourcePortRange(SourcePortRange): {
    Properties+::: {
      SourcePortRange:
        if !std.isObject(SourcePortRange) then (error 'SourcePortRange must be an object')
        else if !std.objectHas(SourcePortRange, 'FromPort') then (error ' have attribute FromPort')
        else if !std.objectHas(SourcePortRange, 'ToPort') then (error ' have attribute ToPort')
        else SourcePortRange,
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
  setProtocol(Protocol): {
    Properties+::: {
      Protocol:
        if !std.isNumber(Protocol) then (error 'Protocol must be an number')
        else Protocol,
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
