{
  new(
    KnowledgeBaseArn,
    ChannelSubtype,
    Name,
    Content,
  ): {
    local base = self,
    Properties: {
      KnowledgeBaseArn:
        if !std.isString(KnowledgeBaseArn) then (error 'KnowledgeBaseArn must be a string')
        else if std.isEmpty(KnowledgeBaseArn) then (error 'KnowledgeBaseArn must be not empty')
        else KnowledgeBaseArn,
      ChannelSubtype:
        if !std.isString(ChannelSubtype) then (error 'ChannelSubtype must be a string')
        else if std.isEmpty(ChannelSubtype) then (error 'ChannelSubtype must be not empty')
        else if ChannelSubtype != 'EMAIL' && ChannelSubtype != 'SMS' then (error "ChannelSubtype should be 'EMAIL' or 'SMS'")
        else ChannelSubtype,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      Content:
        if !std.isObject(Content) then (error 'Content must be an object')
        else Content,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::MessageTemplate',
  },
  setMessageTemplateId(MessageTemplateId): {
    Properties+::: {
      MessageTemplateId:
        if !std.isString(MessageTemplateId) then (error 'MessageTemplateId must be a string')
        else if std.isEmpty(MessageTemplateId) then (error 'MessageTemplateId must be not empty')
        else MessageTemplateId,
    },
  },
  setMessageTemplateArn(MessageTemplateArn): {
    Properties+::: {
      MessageTemplateArn:
        if !std.isString(MessageTemplateArn) then (error 'MessageTemplateArn must be a string')
        else if std.isEmpty(MessageTemplateArn) then (error 'MessageTemplateArn must be not empty')
        else MessageTemplateArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setLanguage(Language): {
    Properties+::: {
      Language:
        if !std.isString(Language) then (error 'Language must be a string')
        else if std.isEmpty(Language) then (error 'Language must be not empty')
        else if std.length(Language) < 2 then error ('Language should have at least 2 characters')
        else if std.length(Language) > 5 then error ('Language should have not more than 5 characters')
        else Language,
    },
  },
  setGroupingConfiguration(GroupingConfiguration): {
    Properties+::: {
      GroupingConfiguration:
        if !std.isObject(GroupingConfiguration) then (error 'GroupingConfiguration must be an object')
        else if !std.objectHas(GroupingConfiguration, 'Criteria') then (error ' have attribute Criteria')
        else if !std.objectHas(GroupingConfiguration, 'Values') then (error ' have attribute Values')
        else GroupingConfiguration,
    },
  },
  setDefaultAttributes(DefaultAttributes): {
    Properties+::: {
      DefaultAttributes:
        if !std.isObject(DefaultAttributes) then (error 'DefaultAttributes must be an object')
        else DefaultAttributes,
    },
  },
  setMessageTemplateContentSha256(MessageTemplateContentSha256): {
    Properties+::: {
      MessageTemplateContentSha256:
        if !std.isString(MessageTemplateContentSha256) then (error 'MessageTemplateContentSha256 must be a string')
        else if std.isEmpty(MessageTemplateContentSha256) then (error 'MessageTemplateContentSha256 must be not empty')
        else if std.length(MessageTemplateContentSha256) < 1 then error ('MessageTemplateContentSha256 should have at least 1 characters')
        else if std.length(MessageTemplateContentSha256) > 64 then error ('MessageTemplateContentSha256 should have not more than 64 characters')
        else MessageTemplateContentSha256,
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
