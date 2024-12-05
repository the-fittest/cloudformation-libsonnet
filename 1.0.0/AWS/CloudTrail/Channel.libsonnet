{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudTrail::Channel',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setSource(Source): {
    Properties+::: {
      Source:
        if !std.isString(Source) then (error 'Source must be a string')
        else if std.isEmpty(Source) then (error 'Source must be not empty')
        else if std.length(Source) < 1 then error ('Source should have at least 1 characters')
        else if std.length(Source) > 256 then error ('Source should have not more than 256 characters')
        else Source,
    },
  },
  setDestinations(Destinations): {
    Properties+::: {
      Destinations:
        if !std.isArray(Destinations) then (error 'Destinations must be an array')
        else if std.length(Destinations) > 10 then error ('Destinations cannot have more than 10 items')
        else Destinations,
    },
  },
  setDestinationsMixin(Destinations): {
    Properties+::: {
      Destinations+: Destinations,
    },
  },
  setChannelArn(ChannelArn): {
    Properties+::: {
      ChannelArn:
        if !std.isString(ChannelArn) then (error 'ChannelArn must be a string')
        else if std.isEmpty(ChannelArn) then (error 'ChannelArn must be not empty')
        else if std.length(ChannelArn) < 3 then error ('ChannelArn should have at least 3 characters')
        else if std.length(ChannelArn) > 256 then error ('ChannelArn should have not more than 256 characters')
        else ChannelArn,
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
