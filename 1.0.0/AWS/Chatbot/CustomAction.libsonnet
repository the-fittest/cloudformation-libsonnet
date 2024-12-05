{
  new(
    ActionName,
    Definition,
  ): {
    local base = self,
    Properties: {
      ActionName:
        if !std.isString(ActionName) then (error 'ActionName must be a string')
        else if std.isEmpty(ActionName) then (error 'ActionName must be not empty')
        else if std.length(ActionName) < 1 then error ('ActionName should have at least 1 characters')
        else if std.length(ActionName) > 64 then error ('ActionName should have not more than 64 characters')
        else ActionName,
      Definition:
        if !std.isObject(Definition) then (error 'Definition must be an object')
        else if !std.objectHas(Definition, 'CommandText') then (error ' have attribute CommandText')
        else Definition,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Chatbot::CustomAction',
  },
  setAliasName(AliasName): {
    Properties+::: {
      AliasName:
        if !std.isString(AliasName) then (error 'AliasName must be a string')
        else if std.isEmpty(AliasName) then (error 'AliasName must be not empty')
        else if std.length(AliasName) < 1 then error ('AliasName should have at least 1 characters')
        else if std.length(AliasName) > 30 then error ('AliasName should have not more than 30 characters')
        else AliasName,
    },
  },
  setAttachments(Attachments): {
    Properties+::: {
      Attachments:
        if !std.isArray(Attachments) then (error 'Attachments must be an array')
        else Attachments,
    },
  },
  setAttachmentsMixin(Attachments): {
    Properties+::: {
      Attachments+: Attachments,
    },
  },
  setCustomActionArn(CustomActionArn): {
    Properties+::: {
      CustomActionArn:
        if !std.isString(CustomActionArn) then (error 'CustomActionArn must be a string')
        else if std.isEmpty(CustomActionArn) then (error 'CustomActionArn must be not empty')
        else if std.length(CustomActionArn) < 1 then error ('CustomActionArn should have at least 1 characters')
        else if std.length(CustomActionArn) > 1011 then error ('CustomActionArn should have not more than 1011 characters')
        else CustomActionArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
