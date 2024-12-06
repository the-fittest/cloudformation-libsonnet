{
  new(
    Name,
    ModelManifestArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      ModelManifestArn:
        if !std.isString(ModelManifestArn) then (error 'ModelManifestArn must be a string')
        else if std.isEmpty(ModelManifestArn) then (error 'ModelManifestArn must be not empty')
        else ModelManifestArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTFleetWise::DecoderManifest',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setLastModificationTime(LastModificationTime): {
    Properties+::: {
      LastModificationTime:
        if !std.isString(LastModificationTime) then (error 'LastModificationTime must be a string')
        else if std.isEmpty(LastModificationTime) then (error 'LastModificationTime must be not empty')
        else LastModificationTime,
    },
  },
  setNetworkInterfaces(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces:
        if !std.isArray(NetworkInterfaces) then (error 'NetworkInterfaces must be an array')
        else if std.length(NetworkInterfaces) < 1 then error ('NetworkInterfaces cannot have less than 1 items')
        else if std.length(NetworkInterfaces) > 5000 then error ('NetworkInterfaces cannot have more than 5000 items')
        else NetworkInterfaces,
    },
  },
  pushNetworkInterfaces(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces+: NetworkInterfaces,
    },
  },
  setSignalDecoders(SignalDecoders): {
    Properties+::: {
      SignalDecoders:
        if !std.isArray(SignalDecoders) then (error 'SignalDecoders must be an array')
        else if std.length(SignalDecoders) < 1 then error ('SignalDecoders cannot have less than 1 items')
        else if std.length(SignalDecoders) > 5000 then error ('SignalDecoders cannot have more than 5000 items')
        else SignalDecoders,
    },
  },
  pushSignalDecoders(SignalDecoders): {
    Properties+::: {
      SignalDecoders+: SignalDecoders,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'DRAFT' then (error "Status should be 'ACTIVE' or 'DRAFT'")
        else Status,
    },
  },
  setDefaultForUnmappedSignals(DefaultForUnmappedSignals): {
    Properties+::: {
      DefaultForUnmappedSignals:
        if !std.isString(DefaultForUnmappedSignals) then (error 'DefaultForUnmappedSignals must be a string')
        else if std.isEmpty(DefaultForUnmappedSignals) then (error 'DefaultForUnmappedSignals must be not empty')
        else if DefaultForUnmappedSignals != 'CUSTOM_DECODING' then (error "DefaultForUnmappedSignals should be 'CUSTOM_DECODING'")
        else DefaultForUnmappedSignals,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
