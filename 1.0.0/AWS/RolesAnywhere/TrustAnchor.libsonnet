{
  new(
    Name,
    Source,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Source:
        if !std.isObject(Source) then (error 'Source must be an object')
        else Source,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RolesAnywhere::TrustAnchor',
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setNotificationSettings(NotificationSettings): {
    Properties+::: {
      NotificationSettings:
        if !std.isArray(NotificationSettings) then (error 'NotificationSettings must be an array')
        else if std.length(NotificationSettings) > 50 then error ('NotificationSettings cannot have more than 50 items')
        else NotificationSettings,
    },
  },
  pushNotificationSettings(NotificationSettings): {
    Properties+::: {
      NotificationSettings+: NotificationSettings,
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
  setTrustAnchorId(TrustAnchorId): {
    Properties+::: {
      TrustAnchorId:
        if !std.isString(TrustAnchorId) then (error 'TrustAnchorId must be a string')
        else if std.isEmpty(TrustAnchorId) then (error 'TrustAnchorId must be not empty')
        else TrustAnchorId,
    },
  },
  setTrustAnchorArn(TrustAnchorArn): {
    Properties+::: {
      TrustAnchorArn:
        if !std.isString(TrustAnchorArn) then (error 'TrustAnchorArn must be a string')
        else if std.isEmpty(TrustAnchorArn) then (error 'TrustAnchorArn must be not empty')
        else TrustAnchorArn,
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
