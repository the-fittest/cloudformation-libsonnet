{
  new(
    PortalContactEmail,
    PortalName,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      PortalContactEmail:
        if !std.isString(PortalContactEmail) then (error 'PortalContactEmail must be a string')
        else if std.isEmpty(PortalContactEmail) then (error 'PortalContactEmail must be not empty')
        else PortalContactEmail,
      PortalName:
        if !std.isString(PortalName) then (error 'PortalName must be a string')
        else if std.isEmpty(PortalName) then (error 'PortalName must be not empty')
        else PortalName,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::Portal',
  },
  setPortalAuthMode(PortalAuthMode): {
    Properties+::: {
      PortalAuthMode:
        if !std.isString(PortalAuthMode) then (error 'PortalAuthMode must be a string')
        else if std.isEmpty(PortalAuthMode) then (error 'PortalAuthMode must be not empty')
        else PortalAuthMode,
    },
  },
  setPortalArn(PortalArn): {
    Properties+::: {
      PortalArn:
        if !std.isString(PortalArn) then (error 'PortalArn must be a string')
        else if std.isEmpty(PortalArn) then (error 'PortalArn must be not empty')
        else PortalArn,
    },
  },
  setPortalClientId(PortalClientId): {
    Properties+::: {
      PortalClientId:
        if !std.isString(PortalClientId) then (error 'PortalClientId must be a string')
        else if std.isEmpty(PortalClientId) then (error 'PortalClientId must be not empty')
        else PortalClientId,
    },
  },
  setPortalDescription(PortalDescription): {
    Properties+::: {
      PortalDescription:
        if !std.isString(PortalDescription) then (error 'PortalDescription must be a string')
        else if std.isEmpty(PortalDescription) then (error 'PortalDescription must be not empty')
        else PortalDescription,
    },
  },
  setPortalId(PortalId): {
    Properties+::: {
      PortalId:
        if !std.isString(PortalId) then (error 'PortalId must be a string')
        else if std.isEmpty(PortalId) then (error 'PortalId must be not empty')
        else PortalId,
    },
  },
  setPortalStartUrl(PortalStartUrl): {
    Properties+::: {
      PortalStartUrl:
        if !std.isString(PortalStartUrl) then (error 'PortalStartUrl must be a string')
        else if std.isEmpty(PortalStartUrl) then (error 'PortalStartUrl must be not empty')
        else PortalStartUrl,
    },
  },
  setNotificationSenderEmail(NotificationSenderEmail): {
    Properties+::: {
      NotificationSenderEmail:
        if !std.isString(NotificationSenderEmail) then (error 'NotificationSenderEmail must be a string')
        else if std.isEmpty(NotificationSenderEmail) then (error 'NotificationSenderEmail must be not empty')
        else NotificationSenderEmail,
    },
  },
  setAlarms(Alarms): {
    Properties+::: {
      Alarms:
        if !std.isObject(Alarms) then (error 'Alarms must be an object')
        else Alarms,
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
