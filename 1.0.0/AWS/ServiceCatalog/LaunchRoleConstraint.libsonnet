{
  new(
    PortfolioId,
    ProductId,
  ): {
    local base = self,
    Properties: {
      PortfolioId:
        if !std.isString(PortfolioId) then (error 'PortfolioId must be a string')
        else if std.isEmpty(PortfolioId) then (error 'PortfolioId must be not empty')
        else PortfolioId,
      ProductId:
        if !std.isString(ProductId) then (error 'ProductId must be a string')
        else if std.isEmpty(ProductId) then (error 'ProductId must be not empty')
        else ProductId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalog::LaunchRoleConstraint',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setLocalRoleName(LocalRoleName): {
    Properties+::: {
      LocalRoleName:
        if !std.isString(LocalRoleName) then (error 'LocalRoleName must be a string')
        else if std.isEmpty(LocalRoleName) then (error 'LocalRoleName must be not empty')
        else LocalRoleName,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
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
