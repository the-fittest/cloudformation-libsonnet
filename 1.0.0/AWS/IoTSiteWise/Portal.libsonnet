{
  // AWS IoTSiteWise Portal
  Portal: {
    new(
      PortalContactEmail,
      PortalName,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortalContactEmail) : 'PortalContactEmail must be a string',
        PortalContactEmail: PortalContactEmail,
        assert std.isString(PortalName) : 'PortalName must be a string',
        PortalName: PortalName,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoTSiteWise::Portal',
    },
    withPortalAuthMode(PortalAuthMode): {
      assert std.isString(PortalAuthMode) : 'PortalAuthMode must be a string',
      Properties+::: {
        PortalAuthMode: PortalAuthMode,
      },
    },
    withPortalArn(PortalArn): {
      assert std.isString(PortalArn) : 'PortalArn must be a string',
      Properties+::: {
        PortalArn: PortalArn,
      },
    },
    withPortalClientId(PortalClientId): {
      assert std.isString(PortalClientId) : 'PortalClientId must be a string',
      Properties+::: {
        PortalClientId: PortalClientId,
      },
    },
    withPortalDescription(PortalDescription): {
      assert std.isString(PortalDescription) : 'PortalDescription must be a string',
      Properties+::: {
        PortalDescription: PortalDescription,
      },
    },
    withPortalId(PortalId): {
      assert std.isString(PortalId) : 'PortalId must be a string',
      Properties+::: {
        PortalId: PortalId,
      },
    },
    withPortalStartUrl(PortalStartUrl): {
      assert std.isString(PortalStartUrl) : 'PortalStartUrl must be a string',
      Properties+::: {
        PortalStartUrl: PortalStartUrl,
      },
    },
    withNotificationSenderEmail(NotificationSenderEmail): {
      assert std.isString(NotificationSenderEmail) : 'NotificationSenderEmail must be a string',
      Properties+::: {
        NotificationSenderEmail: NotificationSenderEmail,
      },
    },
    withAlarms(Alarms): {
      assert std.isObject(Alarms) : 'Alarms must be a object',
      Properties+::: {
        Alarms: Alarms,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
