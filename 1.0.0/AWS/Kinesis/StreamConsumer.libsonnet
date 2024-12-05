{
  new(
    ConsumerName,
    StreamARN,
  ): {
    local base = self,
    Properties: {
      ConsumerName:
        if !std.isString(ConsumerName) then (error 'ConsumerName must be a string')
        else if std.isEmpty(ConsumerName) then (error 'ConsumerName must be not empty')
        else ConsumerName,
      StreamARN:
        if !std.isString(StreamARN) then (error 'StreamARN must be a string')
        else if std.isEmpty(StreamARN) then (error 'StreamARN must be not empty')
        else StreamARN,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Kinesis::StreamConsumer',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setConsumerCreationTimestamp(ConsumerCreationTimestamp): {
    Properties+::: {
      ConsumerCreationTimestamp:
        if !std.isString(ConsumerCreationTimestamp) then (error 'ConsumerCreationTimestamp must be a string')
        else if std.isEmpty(ConsumerCreationTimestamp) then (error 'ConsumerCreationTimestamp must be not empty')
        else ConsumerCreationTimestamp,
    },
  },
  setConsumerARN(ConsumerARN): {
    Properties+::: {
      ConsumerARN:
        if !std.isString(ConsumerARN) then (error 'ConsumerARN must be a string')
        else if std.isEmpty(ConsumerARN) then (error 'ConsumerARN must be not empty')
        else ConsumerARN,
    },
  },
  setConsumerStatus(ConsumerStatus): {
    Properties+::: {
      ConsumerStatus:
        if !std.isString(ConsumerStatus) then (error 'ConsumerStatus must be a string')
        else if std.isEmpty(ConsumerStatus) then (error 'ConsumerStatus must be not empty')
        else ConsumerStatus,
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
