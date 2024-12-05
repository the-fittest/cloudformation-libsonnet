{
  new(
    Description,
    StackInstanceControl,
    PortfolioId,
    ProductId,
    RegionList,
    AdminRole,
    AccountList,
    ExecutionRole,
  ): {
    local base = self,
    Properties: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
      StackInstanceControl:
        if !std.isString(StackInstanceControl) then (error 'StackInstanceControl must be a string')
        else if std.isEmpty(StackInstanceControl) then (error 'StackInstanceControl must be not empty')
        else StackInstanceControl,
      PortfolioId:
        if !std.isString(PortfolioId) then (error 'PortfolioId must be a string')
        else if std.isEmpty(PortfolioId) then (error 'PortfolioId must be not empty')
        else PortfolioId,
      ProductId:
        if !std.isString(ProductId) then (error 'ProductId must be a string')
        else if std.isEmpty(ProductId) then (error 'ProductId must be not empty')
        else ProductId,
      RegionList:
        if !std.isArray(RegionList) then (error 'RegionList must be an array')
        else RegionList,
      AdminRole:
        if !std.isString(AdminRole) then (error 'AdminRole must be a string')
        else if std.isEmpty(AdminRole) then (error 'AdminRole must be not empty')
        else AdminRole,
      AccountList:
        if !std.isArray(AccountList) then (error 'AccountList must be an array')
        else AccountList,
      ExecutionRole:
        if !std.isString(ExecutionRole) then (error 'ExecutionRole must be a string')
        else if std.isEmpty(ExecutionRole) then (error 'ExecutionRole must be not empty')
        else ExecutionRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalog::StackSetConstraint',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
