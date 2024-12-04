{
  // AWS ApiGateway Stage
  Stage: {
    new(
      RestApiId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RestApiId) : 'RestApiId must be a string',
        RestApiId: RestApiId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::ApiGateway::Stage',
    },
    withAccessLogSetting(AccessLogSetting): {
      assert std.isObject(AccessLogSetting) : 'AccessLogSetting must be a object',
      Properties+::: {
        AccessLogSetting: AccessLogSetting,
      },
    },
    withCacheClusterEnabled(CacheClusterEnabled): {
      assert std.isBoolean(CacheClusterEnabled) : 'CacheClusterEnabled must be a boolean',
      Properties+::: {
        CacheClusterEnabled: CacheClusterEnabled,
      },
    },
    withCacheClusterSize(CacheClusterSize): {
      assert std.isString(CacheClusterSize) : 'CacheClusterSize must be a string',
      Properties+::: {
        CacheClusterSize: CacheClusterSize,
      },
    },
    withCanarySetting(CanarySetting): {
      assert std.isObject(CanarySetting) : 'CanarySetting must be a object',
      Properties+::: {
        CanarySetting: CanarySetting,
      },
    },
    withClientCertificateId(ClientCertificateId): {
      assert std.isString(ClientCertificateId) : 'ClientCertificateId must be a string',
      Properties+::: {
        ClientCertificateId: ClientCertificateId,
      },
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
    withDocumentationVersion(DocumentationVersion): {
      assert std.isString(DocumentationVersion) : 'DocumentationVersion must be a string',
      Properties+::: {
        DocumentationVersion: DocumentationVersion,
      },
    },
    withMethodSettings(MethodSettings): {
      Properties+::: {
        MethodSettings: (if std.isArray(MethodSettings) then MethodSettings else [MethodSettings]),
      },
    },
    withMethodSettingsMixin(MethodSettings): {
      Properties+::: {
        MethodSettings+: (if std.isArray(MethodSettings) then MethodSettings else [MethodSettings]),
      },
    },
    withStageName(StageName): {
      assert std.isString(StageName) : 'StageName must be a string',
      Properties+::: {
        StageName: StageName,
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
    withTracingEnabled(TracingEnabled): {
      assert std.isBoolean(TracingEnabled) : 'TracingEnabled must be a boolean',
      Properties+::: {
        TracingEnabled: TracingEnabled,
      },
    },
    withVariables(Variables): {
      assert std.isObject(Variables) : 'Variables must be a object',
      Properties+::: {
        Variables: Variables,
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
