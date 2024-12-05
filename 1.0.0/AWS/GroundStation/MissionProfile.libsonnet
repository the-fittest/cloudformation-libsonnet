{
  new(
    Name,
    MinimumViableContactDurationSeconds,
    DataflowEdges,
    TrackingConfigArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      MinimumViableContactDurationSeconds:
        if !std.isNumber(MinimumViableContactDurationSeconds) then (error 'MinimumViableContactDurationSeconds must be an number')
        else MinimumViableContactDurationSeconds,
      DataflowEdges:
        if !std.isArray(DataflowEdges) then (error 'DataflowEdges must be an array')
        else if std.length(DataflowEdges) < 1 then error ('DataflowEdges cannot have less than 1 items')
        else DataflowEdges,
      TrackingConfigArn:
        if !std.isString(TrackingConfigArn) then (error 'TrackingConfigArn must be a string')
        else if std.isEmpty(TrackingConfigArn) then (error 'TrackingConfigArn must be not empty')
        else TrackingConfigArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GroundStation::MissionProfile',
  },
  setContactPrePassDurationSeconds(ContactPrePassDurationSeconds): {
    Properties+::: {
      ContactPrePassDurationSeconds:
        if !std.isNumber(ContactPrePassDurationSeconds) then (error 'ContactPrePassDurationSeconds must be an number')
        else ContactPrePassDurationSeconds,
    },
  },
  setContactPostPassDurationSeconds(ContactPostPassDurationSeconds): {
    Properties+::: {
      ContactPostPassDurationSeconds:
        if !std.isNumber(ContactPostPassDurationSeconds) then (error 'ContactPostPassDurationSeconds must be an number')
        else ContactPostPassDurationSeconds,
    },
  },
  setStreamsKmsKey(StreamsKmsKey): {
    Properties+::: {
      StreamsKmsKey:
        if !std.isObject(StreamsKmsKey) then (error 'StreamsKmsKey must be an object')
        else StreamsKmsKey,
    },
  },
  setStreamsKmsRole(StreamsKmsRole): {
    Properties+::: {
      StreamsKmsRole:
        if !std.isString(StreamsKmsRole) then (error 'StreamsKmsRole must be a string')
        else if std.isEmpty(StreamsKmsRole) then (error 'StreamsKmsRole must be not empty')
        else StreamsKmsRole,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setRegion(Region): {
    Properties+::: {
      Region:
        if !std.isString(Region) then (error 'Region must be a string')
        else if std.isEmpty(Region) then (error 'Region must be not empty')
        else Region,
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
