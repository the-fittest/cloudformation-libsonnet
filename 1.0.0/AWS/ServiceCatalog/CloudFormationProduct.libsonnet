{
  new(
    Owner,
    Name,
  ): {
    local base = self,
    Properties: {
      Owner:
        if !std.isString(Owner) then (error 'Owner must be a string')
        else if std.isEmpty(Owner) then (error 'Owner must be not empty')
        else Owner,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalog::CloudFormationProduct',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setProductName(ProductName): {
    Properties+::: {
      ProductName:
        if !std.isString(ProductName) then (error 'ProductName must be a string')
        else if std.isEmpty(ProductName) then (error 'ProductName must be not empty')
        else ProductName,
    },
  },
  setSupportEmail(SupportEmail): {
    Properties+::: {
      SupportEmail:
        if !std.isString(SupportEmail) then (error 'SupportEmail must be a string')
        else if std.isEmpty(SupportEmail) then (error 'SupportEmail must be not empty')
        else SupportEmail,
    },
  },
  setProductType(ProductType): {
    Properties+::: {
      ProductType:
        if !std.isString(ProductType) then (error 'ProductType must be a string')
        else if std.isEmpty(ProductType) then (error 'ProductType must be not empty')
        else ProductType,
    },
  },
  setProvisioningArtifactNames(ProvisioningArtifactNames): {
    Properties+::: {
      ProvisioningArtifactNames:
        if !std.isString(ProvisioningArtifactNames) then (error 'ProvisioningArtifactNames must be a string')
        else if std.isEmpty(ProvisioningArtifactNames) then (error 'ProvisioningArtifactNames must be not empty')
        else ProvisioningArtifactNames,
    },
  },
  setReplaceProvisioningArtifacts(ReplaceProvisioningArtifacts): {
    Properties+::: {
      ReplaceProvisioningArtifacts:
        if !std.isBoolean(ReplaceProvisioningArtifacts) then (error 'ReplaceProvisioningArtifacts must be a boolean') else ReplaceProvisioningArtifacts,
    },
  },
  setSupportDescription(SupportDescription): {
    Properties+::: {
      SupportDescription:
        if !std.isString(SupportDescription) then (error 'SupportDescription must be a string')
        else if std.isEmpty(SupportDescription) then (error 'SupportDescription must be not empty')
        else SupportDescription,
    },
  },
  setDistributor(Distributor): {
    Properties+::: {
      Distributor:
        if !std.isString(Distributor) then (error 'Distributor must be a string')
        else if std.isEmpty(Distributor) then (error 'Distributor must be not empty')
        else Distributor,
    },
  },
  setProvisioningArtifactIds(ProvisioningArtifactIds): {
    Properties+::: {
      ProvisioningArtifactIds:
        if !std.isString(ProvisioningArtifactIds) then (error 'ProvisioningArtifactIds must be a string')
        else if std.isEmpty(ProvisioningArtifactIds) then (error 'ProvisioningArtifactIds must be not empty')
        else ProvisioningArtifactIds,
    },
  },
  setAcceptLanguage(AcceptLanguage): {
    Properties+::: {
      AcceptLanguage:
        if !std.isString(AcceptLanguage) then (error 'AcceptLanguage must be a string')
        else if std.isEmpty(AcceptLanguage) then (error 'AcceptLanguage must be not empty')
        else AcceptLanguage,
    },
  },
  setSupportUrl(SupportUrl): {
    Properties+::: {
      SupportUrl:
        if !std.isString(SupportUrl) then (error 'SupportUrl must be a string')
        else if std.isEmpty(SupportUrl) then (error 'SupportUrl must be not empty')
        else SupportUrl,
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
  setSourceConnection(SourceConnection): {
    Properties+::: {
      SourceConnection:
        if !std.isObject(SourceConnection) then (error 'SourceConnection must be an object')
        else if !std.objectHas(SourceConnection, 'Type') then (error ' have attribute Type')
        else if !std.objectHas(SourceConnection, 'ConnectionParameters') then (error ' have attribute ConnectionParameters')
        else SourceConnection,
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
  setProvisioningArtifactParameters(ProvisioningArtifactParameters): {
    Properties+::: {
      ProvisioningArtifactParameters:
        if !std.isArray(ProvisioningArtifactParameters) then (error 'ProvisioningArtifactParameters must be an array')
        else ProvisioningArtifactParameters,
    },
  },
  setProvisioningArtifactParametersMixin(ProvisioningArtifactParameters): {
    Properties+::: {
      ProvisioningArtifactParameters+: ProvisioningArtifactParameters,
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
