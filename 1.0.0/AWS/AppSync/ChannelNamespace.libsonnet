{
  new(
    ApiId,
    Name,
  ): {
    local base = self,
    Properties: {
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::ChannelNamespace',
  },
  setSubscribeAuthModes(SubscribeAuthModes): {
    Properties+::: {
      SubscribeAuthModes:
        if !std.isArray(SubscribeAuthModes) then (error 'SubscribeAuthModes must be an array')
        else SubscribeAuthModes,
    },
  },
  pushSubscribeAuthModes(SubscribeAuthModes): {
    Properties+::: {
      SubscribeAuthModes+: SubscribeAuthModes,
    },
  },
  setPublishAuthModes(PublishAuthModes): {
    Properties+::: {
      PublishAuthModes:
        if !std.isArray(PublishAuthModes) then (error 'PublishAuthModes must be an array')
        else PublishAuthModes,
    },
  },
  pushPublishAuthModes(PublishAuthModes): {
    Properties+::: {
      PublishAuthModes+: PublishAuthModes,
    },
  },
  setCodeHandlers(CodeHandlers): {
    Properties+::: {
      CodeHandlers:
        if !std.isString(CodeHandlers) then (error 'CodeHandlers must be a string')
        else if std.isEmpty(CodeHandlers) then (error 'CodeHandlers must be not empty')
        else if std.length(CodeHandlers) < 1 then error ('CodeHandlers should have at least 1 characters')
        else if std.length(CodeHandlers) > 32768 then error ('CodeHandlers should have not more than 32768 characters')
        else CodeHandlers,
    },
  },
  setCodeS3Location(CodeS3Location): {
    Properties+::: {
      CodeS3Location:
        if !std.isString(CodeS3Location) then (error 'CodeS3Location must be a string')
        else if std.isEmpty(CodeS3Location) then (error 'CodeS3Location must be not empty')
        else CodeS3Location,
    },
  },
  setChannelNamespaceArn(ChannelNamespaceArn): {
    Properties+::: {
      ChannelNamespaceArn:
        if !std.isString(ChannelNamespaceArn) then (error 'ChannelNamespaceArn must be a string')
        else if std.isEmpty(ChannelNamespaceArn) then (error 'ChannelNamespaceArn must be not empty')
        else ChannelNamespaceArn,
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
