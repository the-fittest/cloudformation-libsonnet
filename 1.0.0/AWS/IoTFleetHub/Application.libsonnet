{
  new(
    ApplicationName,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      ApplicationName: ApplicationName,
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTFleetHub::Application',
  },
  withApplicationId(ApplicationId): {
    assert std.isString(ApplicationId) : 'ApplicationId must be a string',
    Properties+::: {
      ApplicationId: ApplicationId,
    },
  },
  withApplicationArn(ApplicationArn): {
    assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
    Properties+::: {
      ApplicationArn: ApplicationArn,
    },
  },
  withApplicationDescription(ApplicationDescription): {
    assert std.isString(ApplicationDescription) : 'ApplicationDescription must be a string',
    Properties+::: {
      ApplicationDescription: ApplicationDescription,
    },
  },
  withApplicationUrl(ApplicationUrl): {
    assert std.isString(ApplicationUrl) : 'ApplicationUrl must be a string',
    Properties+::: {
      ApplicationUrl: ApplicationUrl,
    },
  },
  withApplicationState(ApplicationState): {
    assert std.isString(ApplicationState) : 'ApplicationState must be a string',
    Properties+::: {
      ApplicationState: ApplicationState,
    },
  },
  withApplicationCreationDate(ApplicationCreationDate): {
    assert std.isNumber(ApplicationCreationDate) : 'ApplicationCreationDate must be a number',
    Properties+::: {
      ApplicationCreationDate: ApplicationCreationDate,
    },
  },
  withApplicationLastUpdateDate(ApplicationLastUpdateDate): {
    assert std.isNumber(ApplicationLastUpdateDate) : 'ApplicationLastUpdateDate must be a number',
    Properties+::: {
      ApplicationLastUpdateDate: ApplicationLastUpdateDate,
    },
  },
  withSsoClientId(SsoClientId): {
    assert std.isString(SsoClientId) : 'SsoClientId must be a string',
    Properties+::: {
      SsoClientId: SsoClientId,
    },
  },
  withErrorMessage(ErrorMessage): {
    assert std.isString(ErrorMessage) : 'ErrorMessage must be a string',
    Properties+::: {
      ErrorMessage: ErrorMessage,
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
}
