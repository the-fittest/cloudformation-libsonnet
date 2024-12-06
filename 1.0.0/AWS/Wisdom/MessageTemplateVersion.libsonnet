{
  new(
    MessageTemplateArn,
  ): {
    local base = self,
    Properties: {
      MessageTemplateArn:
        if !std.isString(MessageTemplateArn) then (error 'MessageTemplateArn must be a string')
        else if std.isEmpty(MessageTemplateArn) then (error 'MessageTemplateArn must be not empty')
        else MessageTemplateArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Wisdom::MessageTemplateVersion',
  },
  setMessageTemplateVersionArn(MessageTemplateVersionArn): {
    Properties+::: {
      MessageTemplateVersionArn:
        if !std.isString(MessageTemplateVersionArn) then (error 'MessageTemplateVersionArn must be a string')
        else if std.isEmpty(MessageTemplateVersionArn) then (error 'MessageTemplateVersionArn must be not empty')
        else MessageTemplateVersionArn,
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
  setMessageTemplateVersionNumber(MessageTemplateVersionNumber): {
    Properties+::: {
      MessageTemplateVersionNumber:
        if !std.isNumber(MessageTemplateVersionNumber) then (error 'MessageTemplateVersionNumber must be an number')
        else MessageTemplateVersionNumber,
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
