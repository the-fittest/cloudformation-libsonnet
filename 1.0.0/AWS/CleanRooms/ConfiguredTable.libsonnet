{
  new(
    AllowedColumns,
    AnalysisMethod,
    Name,
    TableReference,
  ): {
    local base = self,
    Properties: {
      AllowedColumns:
        if !std.isArray(AllowedColumns) then (error 'AllowedColumns must be an array')
        else if std.length(AllowedColumns) < 1 then error ('AllowedColumns cannot have less than 1 items')
        else if std.length(AllowedColumns) > 100 then error ('AllowedColumns cannot have more than 100 items')
        else AllowedColumns,
      AnalysisMethod:
        if !std.isString(AnalysisMethod) then (error 'AnalysisMethod must be a string')
        else if std.isEmpty(AnalysisMethod) then (error 'AnalysisMethod must be not empty')
        else if AnalysisMethod != 'DIRECT_QUERY' then (error "AnalysisMethod should be 'DIRECT_QUERY'")
        else AnalysisMethod,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 100 then error ('Name should have not more than 100 characters')
        else Name,
      TableReference:
        if !std.isObject(TableReference) then (error 'TableReference must be an object')
        else if !std.objectHas(TableReference, 'Glue') then (error ' have attribute Glue')
        else TableReference,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::ConfiguredTable',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 100 then error ('Arn should have not more than 100 characters')
        else Arn,
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
  setConfiguredTableIdentifier(ConfiguredTableIdentifier): {
    Properties+::: {
      ConfiguredTableIdentifier:
        if !std.isString(ConfiguredTableIdentifier) then (error 'ConfiguredTableIdentifier must be a string')
        else if std.isEmpty(ConfiguredTableIdentifier) then (error 'ConfiguredTableIdentifier must be not empty')
        else if std.length(ConfiguredTableIdentifier) < 36 then error ('ConfiguredTableIdentifier should have at least 36 characters')
        else if std.length(ConfiguredTableIdentifier) > 36 then error ('ConfiguredTableIdentifier should have not more than 36 characters')
        else ConfiguredTableIdentifier,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setAnalysisRules(AnalysisRules): {
    Properties+::: {
      AnalysisRules:
        if !std.isArray(AnalysisRules) then (error 'AnalysisRules must be an array')
        else if std.length(AnalysisRules) < 1 then error ('AnalysisRules cannot have less than 1 items')
        else if std.length(AnalysisRules) > 1 then error ('AnalysisRules cannot have more than 1 items')
        else AnalysisRules,
    },
  },
  setAnalysisRulesMixin(AnalysisRules): {
    Properties+::: {
      AnalysisRules+: AnalysisRules,
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
