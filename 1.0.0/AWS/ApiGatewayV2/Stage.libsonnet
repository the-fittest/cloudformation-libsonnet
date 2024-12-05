{
  new(
    StageName,
    ApiId,
  ): {
    local base = self,
    Properties: {
      StageName:
        if !std.isString(StageName) then (error 'StageName must be a string')
        else if std.isEmpty(StageName) then (error 'StageName must be not empty')
        else StageName,
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Stage',
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
  setAutoDeploy(AutoDeploy): {
    Properties+::: {
      AutoDeploy:
        if !std.isBoolean(AutoDeploy) then (error 'AutoDeploy must be a boolean') else AutoDeploy,
    },
  },
  setRouteSettings(RouteSettings): {
    Properties+::: {
      RouteSettings:
        if !std.isObject(RouteSettings) then (error 'RouteSettings must be an object')
        else RouteSettings,
    },
  },
  setStageVariables(StageVariables): {
    Properties+::: {
      StageVariables:
        if !std.isObject(StageVariables) then (error 'StageVariables must be an object')
        else StageVariables,
    },
  },
  setAccessPolicyId(AccessPolicyId): {
    Properties+::: {
      AccessPolicyId:
        if !std.isString(AccessPolicyId) then (error 'AccessPolicyId must be a string')
        else if std.isEmpty(AccessPolicyId) then (error 'AccessPolicyId must be not empty')
        else AccessPolicyId,
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
  setAccessLogSettings(AccessLogSettings): {
    Properties+::: {
      AccessLogSettings:
        if !std.isObject(AccessLogSettings) then (error 'AccessLogSettings must be an object')
        else AccessLogSettings,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDefaultRouteSettings(DefaultRouteSettings): {
    Properties+::: {
      DefaultRouteSettings:
        if !std.isObject(DefaultRouteSettings) then (error 'DefaultRouteSettings must be an object')
        else DefaultRouteSettings,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
