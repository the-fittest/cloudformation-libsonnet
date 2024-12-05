{
  new(
    ViewName,
  ): {
    local base = self,
    Properties: {
      ViewName:
        if !std.isString(ViewName) then (error 'ViewName must be a string')
        else if std.isEmpty(ViewName) then (error 'ViewName must be not empty')
        else ViewName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ResourceExplorer2::View',
  },
  setFilters(Filters): {
    Properties+::: {
      Filters:
        if !std.isObject(Filters) then (error 'Filters must be an object')
        else if !std.objectHas(Filters, 'FilterString') then (error ' have attribute FilterString')
        else Filters,
    },
  },
  setIncludedProperties(IncludedProperties): {
    Properties+::: {
      IncludedProperties:
        if !std.isArray(IncludedProperties) then (error 'IncludedProperties must be an array')
        else IncludedProperties,
    },
  },
  setIncludedPropertiesMixin(IncludedProperties): {
    Properties+::: {
      IncludedProperties+: IncludedProperties,
    },
  },
  setScope(Scope): {
    Properties+::: {
      Scope:
        if !std.isString(Scope) then (error 'Scope must be a string')
        else if std.isEmpty(Scope) then (error 'Scope must be not empty')
        else Scope,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setViewArn(ViewArn): {
    Properties+::: {
      ViewArn:
        if !std.isString(ViewArn) then (error 'ViewArn must be a string')
        else if std.isEmpty(ViewArn) then (error 'ViewArn must be not empty')
        else ViewArn,
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
