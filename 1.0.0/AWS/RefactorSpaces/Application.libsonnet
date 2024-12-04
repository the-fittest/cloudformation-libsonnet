{
  new(
    EnvironmentIdentifier,
    VpcId,
    Name,
    ProxyType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
      EnvironmentIdentifier: EnvironmentIdentifier,
      assert std.isString(VpcId) : 'VpcId must be a string',
      VpcId: VpcId,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(ProxyType) : 'ProxyType must be a string',
      ProxyType: ProxyType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RefactorSpaces::Application',
  },
  withApiGatewayProxy(ApiGatewayProxy): {
    assert std.isObject(ApiGatewayProxy) : 'ApiGatewayProxy must be a object',
    Properties+::: {
      ApiGatewayProxy: ApiGatewayProxy,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withApiGatewayId(ApiGatewayId): {
    assert std.isString(ApiGatewayId) : 'ApiGatewayId must be a string',
    Properties+::: {
      ApiGatewayId: ApiGatewayId,
    },
  },
  withVpcLinkId(VpcLinkId): {
    assert std.isString(VpcLinkId) : 'VpcLinkId must be a string',
    Properties+::: {
      VpcLinkId: VpcLinkId,
    },
  },
  withNlbArn(NlbArn): {
    assert std.isString(NlbArn) : 'NlbArn must be a string',
    Properties+::: {
      NlbArn: NlbArn,
    },
  },
  withNlbName(NlbName): {
    assert std.isString(NlbName) : 'NlbName must be a string',
    Properties+::: {
      NlbName: NlbName,
    },
  },
  withApplicationIdentifier(ApplicationIdentifier): {
    assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
    Properties+::: {
      ApplicationIdentifier: ApplicationIdentifier,
    },
  },
  withStageName(StageName): {
    assert std.isString(StageName) : 'StageName must be a string',
    Properties+::: {
      StageName: StageName,
    },
  },
  withProxyUrl(ProxyUrl): {
    assert std.isString(ProxyUrl) : 'ProxyUrl must be a string',
    Properties+::: {
      ProxyUrl: ProxyUrl,
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
