{
  new(
    IntegrationName,
    IntegrationType,
    ResourceConfig,
  ): {
    local base = self,
    Properties: {
      IntegrationName:
        if !std.isString(IntegrationName) then (error 'IntegrationName must be a string')
        else if std.isEmpty(IntegrationName) then (error 'IntegrationName must be not empty')
        else if std.length(IntegrationName) < 1 then error ('IntegrationName should have at least 1 characters')
        else if std.length(IntegrationName) > 256 then error ('IntegrationName should have not more than 256 characters')
        else IntegrationName,
      IntegrationType:
        if !std.isString(IntegrationType) then (error 'IntegrationType must be a string')
        else if std.isEmpty(IntegrationType) then (error 'IntegrationType must be not empty')
        else if IntegrationType != 'OPENSEARCH' then (error "IntegrationType should be 'OPENSEARCH'")
        else IntegrationType,
      ResourceConfig:
        if !std.isObject(ResourceConfig) then (error 'ResourceConfig must be an object')
        else ResourceConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::Integration',
  },
  setIntegrationStatus(IntegrationStatus): {
    Properties+::: {
      IntegrationStatus:
        if !std.isString(IntegrationStatus) then (error 'IntegrationStatus must be a string')
        else if std.isEmpty(IntegrationStatus) then (error 'IntegrationStatus must be not empty')
        else if IntegrationStatus != 'PROVISIONING' && IntegrationStatus != 'ACTIVE' && IntegrationStatus != 'FAILED' then (error "IntegrationStatus should be 'PROVISIONING' or 'ACTIVE' or 'FAILED'")
        else IntegrationStatus,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
