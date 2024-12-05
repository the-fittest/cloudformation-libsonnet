{
  new(
    RestApiId,
  ): {
    local base = self,
    Properties: {
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::Stage',
  },
  setAccessLogSetting(AccessLogSetting): {
    Properties+::: {
      AccessLogSetting:
        if !std.isObject(AccessLogSetting) then (error 'AccessLogSetting must be an object')
        else AccessLogSetting,
    },
  },
  setCacheClusterEnabled(CacheClusterEnabled): {
    Properties+::: {
      CacheClusterEnabled:
        if !std.isBoolean(CacheClusterEnabled) then (error 'CacheClusterEnabled must be a boolean') else CacheClusterEnabled,
    },
  },
  setCacheClusterSize(CacheClusterSize): {
    Properties+::: {
      CacheClusterSize:
        if !std.isString(CacheClusterSize) then (error 'CacheClusterSize must be a string')
        else if std.isEmpty(CacheClusterSize) then (error 'CacheClusterSize must be not empty')
        else CacheClusterSize,
    },
  },
  setCanarySetting(CanarySetting): {
    Properties+::: {
      CanarySetting:
        if !std.isObject(CanarySetting) then (error 'CanarySetting must be an object')
        else CanarySetting,
    },
  },
  setClientCertificateId(ClientCertificateId): {
    Properties+::: {
      ClientCertificateId:
        if !std.isString(ClientCertificateId) then (error 'ClientCertificateId must be a string')
        else if std.isEmpty(ClientCertificateId) then (error 'ClientCertificateId must be not empty')
        else ClientCertificateId,
    },
  },
  setDeploymentId(DeploymentId): {
    Properties+::: {
      DeploymentId:
        if !std.isString(DeploymentId) then (error 'DeploymentId must be a string')
        else if std.isEmpty(DeploymentId) then (error 'DeploymentId must be not empty')
        else DeploymentId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setDocumentationVersion(DocumentationVersion): {
    Properties+::: {
      DocumentationVersion:
        if !std.isString(DocumentationVersion) then (error 'DocumentationVersion must be a string')
        else if std.isEmpty(DocumentationVersion) then (error 'DocumentationVersion must be not empty')
        else DocumentationVersion,
    },
  },
  setMethodSettings(MethodSettings): {
    Properties+::: {
      MethodSettings:
        if !std.isArray(MethodSettings) then (error 'MethodSettings must be an array')
        else MethodSettings,
    },
  },
  setMethodSettingsMixin(MethodSettings): {
    Properties+::: {
      MethodSettings+: MethodSettings,
    },
  },
  setStageName(StageName): {
    Properties+::: {
      StageName:
        if !std.isString(StageName) then (error 'StageName must be a string')
        else if std.isEmpty(StageName) then (error 'StageName must be not empty')
        else StageName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTracingEnabled(TracingEnabled): {
    Properties+::: {
      TracingEnabled:
        if !std.isBoolean(TracingEnabled) then (error 'TracingEnabled must be a boolean') else TracingEnabled,
    },
  },
  setVariables(Variables): {
    Properties+::: {
      Variables:
        if !std.isObject(Variables) then (error 'Variables must be an object')
        else Variables,
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
