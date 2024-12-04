{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PinpointEmail::Identity',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withIdentityDNSRecordName3(IdentityDNSRecordName3): {
    assert std.isString(IdentityDNSRecordName3) : 'IdentityDNSRecordName3 must be a string',
    Properties+::: {
      IdentityDNSRecordName3: IdentityDNSRecordName3,
    },
  },
  withIdentityDNSRecordName1(IdentityDNSRecordName1): {
    assert std.isString(IdentityDNSRecordName1) : 'IdentityDNSRecordName1 must be a string',
    Properties+::: {
      IdentityDNSRecordName1: IdentityDNSRecordName1,
    },
  },
  withIdentityDNSRecordName2(IdentityDNSRecordName2): {
    assert std.isString(IdentityDNSRecordName2) : 'IdentityDNSRecordName2 must be a string',
    Properties+::: {
      IdentityDNSRecordName2: IdentityDNSRecordName2,
    },
  },
  withIdentityDNSRecordValue3(IdentityDNSRecordValue3): {
    assert std.isString(IdentityDNSRecordValue3) : 'IdentityDNSRecordValue3 must be a string',
    Properties+::: {
      IdentityDNSRecordValue3: IdentityDNSRecordValue3,
    },
  },
  withIdentityDNSRecordValue2(IdentityDNSRecordValue2): {
    assert std.isString(IdentityDNSRecordValue2) : 'IdentityDNSRecordValue2 must be a string',
    Properties+::: {
      IdentityDNSRecordValue2: IdentityDNSRecordValue2,
    },
  },
  withIdentityDNSRecordValue1(IdentityDNSRecordValue1): {
    assert std.isString(IdentityDNSRecordValue1) : 'IdentityDNSRecordValue1 must be a string',
    Properties+::: {
      IdentityDNSRecordValue1: IdentityDNSRecordValue1,
    },
  },
  withFeedbackForwardingEnabled(FeedbackForwardingEnabled): {
    assert std.isBoolean(FeedbackForwardingEnabled) : 'FeedbackForwardingEnabled must be a boolean',
    Properties+::: {
      FeedbackForwardingEnabled: FeedbackForwardingEnabled,
    },
  },
  withDkimSigningEnabled(DkimSigningEnabled): {
    assert std.isBoolean(DkimSigningEnabled) : 'DkimSigningEnabled must be a boolean',
    Properties+::: {
      DkimSigningEnabled: DkimSigningEnabled,
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
  withMailFromAttributes(MailFromAttributes): {
    assert std.isObject(MailFromAttributes) : 'MailFromAttributes must be a object',
    Properties+::: {
      MailFromAttributes: MailFromAttributes,
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
