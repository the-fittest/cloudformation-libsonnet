{
  new(
    AddonName,
  ): {
    local base = self,
    Properties: {
      AddonName:
        if !std.isString(AddonName) then (error 'AddonName must be a string')
        else if std.isEmpty(AddonName) then (error 'AddonName must be not empty')
        else AddonName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerAddonSubscription',
  },
  setAddonSubscriptionArn(AddonSubscriptionArn): {
    Properties+::: {
      AddonSubscriptionArn:
        if !std.isString(AddonSubscriptionArn) then (error 'AddonSubscriptionArn must be a string')
        else if std.isEmpty(AddonSubscriptionArn) then (error 'AddonSubscriptionArn must be not empty')
        else AddonSubscriptionArn,
    },
  },
  setAddonSubscriptionId(AddonSubscriptionId): {
    Properties+::: {
      AddonSubscriptionId:
        if !std.isString(AddonSubscriptionId) then (error 'AddonSubscriptionId must be a string')
        else if std.isEmpty(AddonSubscriptionId) then (error 'AddonSubscriptionId must be not empty')
        else if std.length(AddonSubscriptionId) < 4 then error ('AddonSubscriptionId should have at least 4 characters')
        else if std.length(AddonSubscriptionId) > 67 then error ('AddonSubscriptionId should have not more than 67 characters')
        else AddonSubscriptionId,
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
