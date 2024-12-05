{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::APS::Workspace',
  },
  setWorkspaceId(WorkspaceId): {
    Properties+::: {
      WorkspaceId:
        if !std.isString(WorkspaceId) then (error 'WorkspaceId must be a string')
        else if std.isEmpty(WorkspaceId) then (error 'WorkspaceId must be not empty')
        else if std.length(WorkspaceId) < 1 then error ('WorkspaceId should have at least 1 characters')
        else if std.length(WorkspaceId) > 100 then error ('WorkspaceId should have not more than 100 characters')
        else WorkspaceId,
    },
  },
  setAlias(Alias): {
    Properties+::: {
      Alias:
        if !std.isString(Alias) then (error 'Alias must be a string')
        else if std.isEmpty(Alias) then (error 'Alias must be not empty')
        else if std.length(Alias) > 100 then error ('Alias should have not more than 100 characters')
        else Alias,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 128 then error ('Arn should have not more than 128 characters')
        else Arn,
    },
  },
  setAlertManagerDefinition(AlertManagerDefinition): {
    Properties+::: {
      AlertManagerDefinition:
        if !std.isString(AlertManagerDefinition) then (error 'AlertManagerDefinition must be a string')
        else if std.isEmpty(AlertManagerDefinition) then (error 'AlertManagerDefinition must be not empty')
        else AlertManagerDefinition,
    },
  },
  setPrometheusEndpoint(PrometheusEndpoint): {
    Properties+::: {
      PrometheusEndpoint:
        if !std.isString(PrometheusEndpoint) then (error 'PrometheusEndpoint must be a string')
        else if std.isEmpty(PrometheusEndpoint) then (error 'PrometheusEndpoint must be not empty')
        else PrometheusEndpoint,
    },
  },
  setLoggingConfiguration(LoggingConfiguration): {
    Properties+::: {
      LoggingConfiguration:
        if !std.isObject(LoggingConfiguration) then (error 'LoggingConfiguration must be an object')
        else LoggingConfiguration,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 20 then error ('KmsKeyArn should have at least 20 characters')
        else if std.length(KmsKeyArn) > 2048 then error ('KmsKeyArn should have not more than 2048 characters')
        else KmsKeyArn,
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
