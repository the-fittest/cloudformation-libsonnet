{
  new(
    AcceptTermsAndConditions,
  ): {
    local base = self,
    Properties: {
      assert std.isBoolean(AcceptTermsAndConditions) : 'AcceptTermsAndConditions must be a boolean',
      AcceptTermsAndConditions: AcceptTermsAndConditions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::Publisher',
  },
  withPublisherId(PublisherId): {
    assert std.isString(PublisherId) : 'PublisherId must be a string',
    Properties+::: {
      PublisherId: PublisherId,
    },
  },
  withConnectionArn(ConnectionArn): {
    assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
    Properties+::: {
      ConnectionArn: ConnectionArn,
    },
  },
  withPublisherStatus(PublisherStatus): {
    assert std.isString(PublisherStatus) : 'PublisherStatus must be a string',
    assert PublisherStatus == 'VERIFIED' || PublisherStatus == 'UNVERIFIED' : "PublisherStatus should be 'VERIFIED' or 'UNVERIFIED'",
    Properties+::: {
      PublisherStatus: PublisherStatus,
    },
  },
  withPublisherProfile(PublisherProfile): {
    assert std.isString(PublisherProfile) : 'PublisherProfile must be a string',
    Properties+::: {
      PublisherProfile: PublisherProfile,
    },
  },
  withIdentityProvider(IdentityProvider): {
    assert std.isString(IdentityProvider) : 'IdentityProvider must be a string',
    assert IdentityProvider == 'AWS_Marketplace' || IdentityProvider == 'GitHub' || IdentityProvider == 'Bitbucket' : "IdentityProvider should be 'AWS_Marketplace' or 'GitHub' or 'Bitbucket'",
    Properties+::: {
      IdentityProvider: IdentityProvider,
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
