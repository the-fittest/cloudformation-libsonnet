{
  new(
    AddonSubscriptionId,
  ): {
    local base = self,
    Properties: {
      AddonSubscriptionId:
        if !std.isString(AddonSubscriptionId) then (error 'AddonSubscriptionId must be a string')
        else if std.isEmpty(AddonSubscriptionId) then (error 'AddonSubscriptionId must be not empty')
        else if std.length(AddonSubscriptionId) < 4 then error ('AddonSubscriptionId should have at least 4 characters')
        else if std.length(AddonSubscriptionId) > 67 then error ('AddonSubscriptionId should have not more than 67 characters')
        else AddonSubscriptionId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerAddonInstance',
  },
  setAddonInstanceArn(AddonInstanceArn): {
    Properties+::: {
      AddonInstanceArn:
        if !std.isString(AddonInstanceArn) then (error 'AddonInstanceArn must be a string')
        else if std.isEmpty(AddonInstanceArn) then (error 'AddonInstanceArn must be not empty')
        else AddonInstanceArn,
    },
  },
  setAddonInstanceId(AddonInstanceId): {
    Properties+::: {
      AddonInstanceId:
        if !std.isString(AddonInstanceId) then (error 'AddonInstanceId must be a string')
        else if std.isEmpty(AddonInstanceId) then (error 'AddonInstanceId must be not empty')
        else if std.length(AddonInstanceId) < 4 then error ('AddonInstanceId should have at least 4 characters')
        else if std.length(AddonInstanceId) > 67 then error ('AddonInstanceId should have not more than 67 characters')
        else AddonInstanceId,
    },
  },
  setAddonName(AddonName): {
    Properties+::: {
      AddonName:
        if !std.isString(AddonName) then (error 'AddonName must be a string')
        else if std.isEmpty(AddonName) then (error 'AddonName must be not empty')
        else AddonName,
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
