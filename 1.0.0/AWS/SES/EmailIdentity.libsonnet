{
  // AWS SES EmailIdentity
  EmailIdentity: {
    new(
      EmailIdentity,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EmailIdentity) : 'EmailIdentity must be a string',
        EmailIdentity: EmailIdentity,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SES::EmailIdentity',
    },
    withConfigurationSetAttributes(ConfigurationSetAttributes): {
      assert std.isObject(ConfigurationSetAttributes) : 'ConfigurationSetAttributes must be a object',
      Properties+::: {
        ConfigurationSetAttributes: ConfigurationSetAttributes,
      },
    },
    withDkimSigningAttributes(DkimSigningAttributes): {
      assert std.isObject(DkimSigningAttributes) : 'DkimSigningAttributes must be a object',
      Properties+::: {
        DkimSigningAttributes: DkimSigningAttributes,
      },
    },
    withDkimAttributes(DkimAttributes): {
      assert std.isObject(DkimAttributes) : 'DkimAttributes must be a object',
      Properties+::: {
        DkimAttributes: DkimAttributes,
      },
    },
    withMailFromAttributes(MailFromAttributes): {
      assert std.isObject(MailFromAttributes) : 'MailFromAttributes must be a object',
      Properties+::: {
        MailFromAttributes: MailFromAttributes,
      },
    },
    withFeedbackAttributes(FeedbackAttributes): {
      assert std.isObject(FeedbackAttributes) : 'FeedbackAttributes must be a object',
      Properties+::: {
        FeedbackAttributes: FeedbackAttributes,
      },
    },
    withDkimDNSTokenName1(DkimDNSTokenName1): {
      assert std.isString(DkimDNSTokenName1) : 'DkimDNSTokenName1 must be a string',
      Properties+::: {
        DkimDNSTokenName1: DkimDNSTokenName1,
      },
    },
    withDkimDNSTokenName2(DkimDNSTokenName2): {
      assert std.isString(DkimDNSTokenName2) : 'DkimDNSTokenName2 must be a string',
      Properties+::: {
        DkimDNSTokenName2: DkimDNSTokenName2,
      },
    },
    withDkimDNSTokenName3(DkimDNSTokenName3): {
      assert std.isString(DkimDNSTokenName3) : 'DkimDNSTokenName3 must be a string',
      Properties+::: {
        DkimDNSTokenName3: DkimDNSTokenName3,
      },
    },
    withDkimDNSTokenValue1(DkimDNSTokenValue1): {
      assert std.isString(DkimDNSTokenValue1) : 'DkimDNSTokenValue1 must be a string',
      Properties+::: {
        DkimDNSTokenValue1: DkimDNSTokenValue1,
      },
    },
    withDkimDNSTokenValue2(DkimDNSTokenValue2): {
      assert std.isString(DkimDNSTokenValue2) : 'DkimDNSTokenValue2 must be a string',
      Properties+::: {
        DkimDNSTokenValue2: DkimDNSTokenValue2,
      },
    },
    withDkimDNSTokenValue3(DkimDNSTokenValue3): {
      assert std.isString(DkimDNSTokenValue3) : 'DkimDNSTokenValue3 must be a string',
      Properties+::: {
        DkimDNSTokenValue3: DkimDNSTokenValue3,
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
