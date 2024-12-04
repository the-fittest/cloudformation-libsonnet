{
  new(
    Id,
    ChannelId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Id) : 'Id must be a string',
      Id: Id,
      assert std.isString(ChannelId) : 'ChannelId must be a string',
      ChannelId: ChannelId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaPackage::OriginEndpoint',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withUrl(Url): {
    assert std.isString(Url) : 'Url must be a string',
    Properties+::: {
      Url: Url,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withWhitelist(Whitelist): {
    Properties+::: {
      Whitelist: (if std.isArray(Whitelist) then Whitelist else [Whitelist]),
    },
  },
  withWhitelistMixin(Whitelist): {
    Properties+::: {
      Whitelist+: (if std.isArray(Whitelist) then Whitelist else [Whitelist]),
    },
  },
  withStartoverWindowSeconds(StartoverWindowSeconds): {
    assert std.isNumber(StartoverWindowSeconds) : 'StartoverWindowSeconds must be a number',
    Properties+::: {
      StartoverWindowSeconds: StartoverWindowSeconds,
    },
  },
  withTimeDelaySeconds(TimeDelaySeconds): {
    assert std.isNumber(TimeDelaySeconds) : 'TimeDelaySeconds must be a number',
    Properties+::: {
      TimeDelaySeconds: TimeDelaySeconds,
    },
  },
  withManifestName(ManifestName): {
    assert std.isString(ManifestName) : 'ManifestName must be a string',
    Properties+::: {
      ManifestName: ManifestName,
    },
  },
  withOrigination(Origination): {
    assert std.isString(Origination) : 'Origination must be a string',
    Properties+::: {
      Origination: Origination,
    },
  },
  withAuthorization(Authorization): {
    assert std.isObject(Authorization) : 'Authorization must be a object',
    Properties+::: {
      Authorization: Authorization,
    },
  },
  withHlsPackage(HlsPackage): {
    assert std.isObject(HlsPackage) : 'HlsPackage must be a object',
    Properties+::: {
      HlsPackage: HlsPackage,
    },
  },
  withDashPackage(DashPackage): {
    assert std.isObject(DashPackage) : 'DashPackage must be a object',
    Properties+::: {
      DashPackage: DashPackage,
    },
  },
  withMssPackage(MssPackage): {
    assert std.isObject(MssPackage) : 'MssPackage must be a object',
    Properties+::: {
      MssPackage: MssPackage,
    },
  },
  withCmafPackage(CmafPackage): {
    assert std.isObject(CmafPackage) : 'CmafPackage must be a object',
    Properties+::: {
      CmafPackage: CmafPackage,
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
