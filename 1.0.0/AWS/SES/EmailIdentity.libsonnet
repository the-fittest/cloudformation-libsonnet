{
  new(
    EmailIdentity,
  ): {
    local base = self,
    Properties: {
      EmailIdentity:
        if !std.isString(EmailIdentity) then (error 'EmailIdentity must be a string')
        else if std.isEmpty(EmailIdentity) then (error 'EmailIdentity must be not empty')
        else EmailIdentity,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::EmailIdentity',
  },
  setConfigurationSetAttributes(ConfigurationSetAttributes): {
    Properties+::: {
      ConfigurationSetAttributes:
        if !std.isObject(ConfigurationSetAttributes) then (error 'ConfigurationSetAttributes must be an object')
        else ConfigurationSetAttributes,
    },
  },
  setDkimSigningAttributes(DkimSigningAttributes): {
    Properties+::: {
      DkimSigningAttributes:
        if !std.isObject(DkimSigningAttributes) then (error 'DkimSigningAttributes must be an object')
        else DkimSigningAttributes,
    },
  },
  setDkimAttributes(DkimAttributes): {
    Properties+::: {
      DkimAttributes:
        if !std.isObject(DkimAttributes) then (error 'DkimAttributes must be an object')
        else DkimAttributes,
    },
  },
  setMailFromAttributes(MailFromAttributes): {
    Properties+::: {
      MailFromAttributes:
        if !std.isObject(MailFromAttributes) then (error 'MailFromAttributes must be an object')
        else MailFromAttributes,
    },
  },
  setFeedbackAttributes(FeedbackAttributes): {
    Properties+::: {
      FeedbackAttributes:
        if !std.isObject(FeedbackAttributes) then (error 'FeedbackAttributes must be an object')
        else FeedbackAttributes,
    },
  },
  setDkimDNSTokenName1(DkimDNSTokenName1): {
    Properties+::: {
      DkimDNSTokenName1:
        if !std.isString(DkimDNSTokenName1) then (error 'DkimDNSTokenName1 must be a string')
        else if std.isEmpty(DkimDNSTokenName1) then (error 'DkimDNSTokenName1 must be not empty')
        else DkimDNSTokenName1,
    },
  },
  setDkimDNSTokenName2(DkimDNSTokenName2): {
    Properties+::: {
      DkimDNSTokenName2:
        if !std.isString(DkimDNSTokenName2) then (error 'DkimDNSTokenName2 must be a string')
        else if std.isEmpty(DkimDNSTokenName2) then (error 'DkimDNSTokenName2 must be not empty')
        else DkimDNSTokenName2,
    },
  },
  setDkimDNSTokenName3(DkimDNSTokenName3): {
    Properties+::: {
      DkimDNSTokenName3:
        if !std.isString(DkimDNSTokenName3) then (error 'DkimDNSTokenName3 must be a string')
        else if std.isEmpty(DkimDNSTokenName3) then (error 'DkimDNSTokenName3 must be not empty')
        else DkimDNSTokenName3,
    },
  },
  setDkimDNSTokenValue1(DkimDNSTokenValue1): {
    Properties+::: {
      DkimDNSTokenValue1:
        if !std.isString(DkimDNSTokenValue1) then (error 'DkimDNSTokenValue1 must be a string')
        else if std.isEmpty(DkimDNSTokenValue1) then (error 'DkimDNSTokenValue1 must be not empty')
        else DkimDNSTokenValue1,
    },
  },
  setDkimDNSTokenValue2(DkimDNSTokenValue2): {
    Properties+::: {
      DkimDNSTokenValue2:
        if !std.isString(DkimDNSTokenValue2) then (error 'DkimDNSTokenValue2 must be a string')
        else if std.isEmpty(DkimDNSTokenValue2) then (error 'DkimDNSTokenValue2 must be not empty')
        else DkimDNSTokenValue2,
    },
  },
  setDkimDNSTokenValue3(DkimDNSTokenValue3): {
    Properties+::: {
      DkimDNSTokenValue3:
        if !std.isString(DkimDNSTokenValue3) then (error 'DkimDNSTokenValue3 must be a string')
        else if std.isEmpty(DkimDNSTokenValue3) then (error 'DkimDNSTokenValue3 must be not empty')
        else DkimDNSTokenValue3,
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
