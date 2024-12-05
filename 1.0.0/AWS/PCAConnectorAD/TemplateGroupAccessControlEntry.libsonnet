{
  new(
    AccessRights,
    GroupDisplayName,
  ): {
    local base = self,
    Properties: {
      AccessRights:
        if !std.isObject(AccessRights) then (error 'AccessRights must be an object')
        else AccessRights,
      GroupDisplayName:
        if !std.isString(GroupDisplayName) then (error 'GroupDisplayName must be a string')
        else if std.isEmpty(GroupDisplayName) then (error 'GroupDisplayName must be not empty')
        else if std.length(GroupDisplayName) > 256 then error ('GroupDisplayName should have not more than 256 characters')
        else GroupDisplayName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PCAConnectorAD::TemplateGroupAccessControlEntry',
  },
  setGroupSecurityIdentifier(GroupSecurityIdentifier): {
    Properties+::: {
      GroupSecurityIdentifier:
        if !std.isString(GroupSecurityIdentifier) then (error 'GroupSecurityIdentifier must be a string')
        else if std.isEmpty(GroupSecurityIdentifier) then (error 'GroupSecurityIdentifier must be not empty')
        else if std.length(GroupSecurityIdentifier) < 7 then error ('GroupSecurityIdentifier should have at least 7 characters')
        else if std.length(GroupSecurityIdentifier) > 256 then error ('GroupSecurityIdentifier should have not more than 256 characters')
        else GroupSecurityIdentifier,
    },
  },
  setTemplateArn(TemplateArn): {
    Properties+::: {
      TemplateArn:
        if !std.isString(TemplateArn) then (error 'TemplateArn must be a string')
        else if std.isEmpty(TemplateArn) then (error 'TemplateArn must be not empty')
        else if std.length(TemplateArn) < 5 then error ('TemplateArn should have at least 5 characters')
        else if std.length(TemplateArn) > 200 then error ('TemplateArn should have not more than 200 characters')
        else TemplateArn,
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
