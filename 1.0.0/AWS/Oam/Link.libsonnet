{
  new(
    ResourceTypes,
    SinkIdentifier,
  ): {
    local base = self,
    Properties: {
      ResourceTypes:
        if !std.isArray(ResourceTypes) then (error 'ResourceTypes must be an array')
        else if std.length(ResourceTypes) < 1 then error ('ResourceTypes cannot have less than 1 items')
        else if std.length(ResourceTypes) > 50 then error ('ResourceTypes cannot have more than 50 items')
        else ResourceTypes,
      SinkIdentifier:
        if !std.isString(SinkIdentifier) then (error 'SinkIdentifier must be a string')
        else if std.isEmpty(SinkIdentifier) then (error 'SinkIdentifier must be not empty')
        else if std.length(SinkIdentifier) < 1 then error ('SinkIdentifier should have at least 1 characters')
        else if std.length(SinkIdentifier) > 2048 then error ('SinkIdentifier should have not more than 2048 characters')
        else SinkIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Oam::Link',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setLabel(Label): {
    Properties+::: {
      Label:
        if !std.isString(Label) then (error 'Label must be a string')
        else if std.isEmpty(Label) then (error 'Label must be not empty')
        else Label,
    },
  },
  setLabelTemplate(LabelTemplate): {
    Properties+::: {
      LabelTemplate:
        if !std.isString(LabelTemplate) then (error 'LabelTemplate must be a string')
        else if std.isEmpty(LabelTemplate) then (error 'LabelTemplate must be not empty')
        else if std.length(LabelTemplate) < 1 then error ('LabelTemplate should have at least 1 characters')
        else if std.length(LabelTemplate) > 64 then error ('LabelTemplate should have not more than 64 characters')
        else LabelTemplate,
    },
  },
  setLinkConfiguration(LinkConfiguration): {
    Properties+::: {
      LinkConfiguration:
        if !std.isObject(LinkConfiguration) then (error 'LinkConfiguration must be an object')
        else LinkConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
