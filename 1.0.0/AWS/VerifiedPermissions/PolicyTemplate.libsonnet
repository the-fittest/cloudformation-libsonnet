{
  new(
    Statement,
    PolicyStoreId,
  ): {
    local base = self,
    Properties: {
      Statement:
        if !std.isString(Statement) then (error 'Statement must be a string')
        else if std.isEmpty(Statement) then (error 'Statement must be not empty')
        else if std.length(Statement) < 1 then error ('Statement should have at least 1 characters')
        else if std.length(Statement) > 10000 then error ('Statement should have not more than 10000 characters')
        else Statement,
      PolicyStoreId:
        if !std.isString(PolicyStoreId) then (error 'PolicyStoreId must be a string')
        else if std.isEmpty(PolicyStoreId) then (error 'PolicyStoreId must be not empty')
        else if std.length(PolicyStoreId) < 1 then error ('PolicyStoreId should have at least 1 characters')
        else if std.length(PolicyStoreId) > 200 then error ('PolicyStoreId should have not more than 200 characters')
        else PolicyStoreId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VerifiedPermissions::PolicyTemplate',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 150 then error ('Description should have not more than 150 characters')
        else Description,
    },
  },
  setPolicyTemplateId(PolicyTemplateId): {
    Properties+::: {
      PolicyTemplateId:
        if !std.isString(PolicyTemplateId) then (error 'PolicyTemplateId must be a string')
        else if std.isEmpty(PolicyTemplateId) then (error 'PolicyTemplateId must be not empty')
        else if std.length(PolicyTemplateId) < 1 then error ('PolicyTemplateId should have at least 1 characters')
        else if std.length(PolicyTemplateId) > 200 then error ('PolicyTemplateId should have not more than 200 characters')
        else PolicyTemplateId,
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
