{
  new(
    StageName,
    ApiId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(StageName) : 'StageName must be a string',
      StageName: StageName,
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Stage',
  },
  withDeploymentId(DeploymentId): {
    assert std.isString(DeploymentId) : 'DeploymentId must be a string',
    Properties+::: {
      DeploymentId: DeploymentId,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withAutoDeploy(AutoDeploy): {
    assert std.isBoolean(AutoDeploy) : 'AutoDeploy must be a boolean',
    Properties+::: {
      AutoDeploy: AutoDeploy,
    },
  },
  withRouteSettings(RouteSettings): {
    assert std.isObject(RouteSettings) : 'RouteSettings must be a object',
    Properties+::: {
      RouteSettings: RouteSettings,
    },
  },
  withStageVariables(StageVariables): {
    assert std.isObject(StageVariables) : 'StageVariables must be a object',
    Properties+::: {
      StageVariables: StageVariables,
    },
  },
  withAccessPolicyId(AccessPolicyId): {
    assert std.isString(AccessPolicyId) : 'AccessPolicyId must be a string',
    Properties+::: {
      AccessPolicyId: AccessPolicyId,
    },
  },
  withClientCertificateId(ClientCertificateId): {
    assert std.isString(ClientCertificateId) : 'ClientCertificateId must be a string',
    Properties+::: {
      ClientCertificateId: ClientCertificateId,
    },
  },
  withAccessLogSettings(AccessLogSettings): {
    assert std.isObject(AccessLogSettings) : 'AccessLogSettings must be a object',
    Properties+::: {
      AccessLogSettings: AccessLogSettings,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withDefaultRouteSettings(DefaultRouteSettings): {
    assert std.isObject(DefaultRouteSettings) : 'DefaultRouteSettings must be a object',
    Properties+::: {
      DefaultRouteSettings: DefaultRouteSettings,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
