{
  new(
    ProductId,
    ProvisioningArtifactId,
    ServiceActionId,
  ): {
    local base = self,
    Properties: {
      ProductId:
        if !std.isString(ProductId) then (error 'ProductId must be a string')
        else if std.isEmpty(ProductId) then (error 'ProductId must be not empty')
        else if std.length(ProductId) < 1 then error ('ProductId should have at least 1 characters')
        else if std.length(ProductId) > 100 then error ('ProductId should have not more than 100 characters')
        else ProductId,
      ProvisioningArtifactId:
        if !std.isString(ProvisioningArtifactId) then (error 'ProvisioningArtifactId must be a string')
        else if std.isEmpty(ProvisioningArtifactId) then (error 'ProvisioningArtifactId must be not empty')
        else if std.length(ProvisioningArtifactId) < 1 then error ('ProvisioningArtifactId should have at least 1 characters')
        else if std.length(ProvisioningArtifactId) > 100 then error ('ProvisioningArtifactId should have not more than 100 characters')
        else ProvisioningArtifactId,
      ServiceActionId:
        if !std.isString(ServiceActionId) then (error 'ServiceActionId must be a string')
        else if std.isEmpty(ServiceActionId) then (error 'ServiceActionId must be not empty')
        else if std.length(ServiceActionId) < 1 then error ('ServiceActionId should have at least 1 characters')
        else if std.length(ServiceActionId) > 100 then error ('ServiceActionId should have not more than 100 characters')
        else ServiceActionId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalog::ServiceActionAssociation',
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
