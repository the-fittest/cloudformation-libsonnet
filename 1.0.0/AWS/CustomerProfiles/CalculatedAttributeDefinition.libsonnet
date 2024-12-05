{
  new(
    DomainName,
    CalculatedAttributeName,
    AttributeDetails,
    Statistic,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 64 then error ('DomainName should have not more than 64 characters')
        else DomainName,
      CalculatedAttributeName:
        if !std.isString(CalculatedAttributeName) then (error 'CalculatedAttributeName must be a string')
        else if std.isEmpty(CalculatedAttributeName) then (error 'CalculatedAttributeName must be not empty')
        else if std.length(CalculatedAttributeName) < 1 then error ('CalculatedAttributeName should have at least 1 characters')
        else if std.length(CalculatedAttributeName) > 255 then error ('CalculatedAttributeName should have not more than 255 characters')
        else CalculatedAttributeName,
      AttributeDetails:
        if !std.isObject(AttributeDetails) then (error 'AttributeDetails must be an object')
        else if !std.objectHas(AttributeDetails, 'Attributes') then (error ' have attribute Attributes')
        else if !std.objectHas(AttributeDetails, 'Expression') then (error ' have attribute Expression')
        else AttributeDetails,
      Statistic:
        if !std.isString(Statistic) then (error 'Statistic must be a string')
        else if std.isEmpty(Statistic) then (error 'Statistic must be not empty')
        else if Statistic != 'FIRST_OCCURRENCE' && Statistic != 'LAST_OCCURRENCE' && Statistic != 'COUNT' && Statistic != 'SUM' && Statistic != 'MINIMUM' && Statistic != 'MAXIMUM' && Statistic != 'AVERAGE' && Statistic != 'MAX_OCCURRENCE' then (error "Statistic should be 'FIRST_OCCURRENCE' or 'LAST_OCCURRENCE' or 'COUNT' or 'SUM' or 'MINIMUM' or 'MAXIMUM' or 'AVERAGE' or 'MAX_OCCURRENCE'")
        else Statistic,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::CalculatedAttributeDefinition',
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 255 then error ('DisplayName should have not more than 255 characters')
        else DisplayName,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setConditions(Conditions): {
    Properties+::: {
      Conditions:
        if !std.isObject(Conditions) then (error 'Conditions must be an object')
        else Conditions,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setLastUpdatedAt(LastUpdatedAt): {
    Properties+::: {
      LastUpdatedAt:
        if !std.isString(LastUpdatedAt) then (error 'LastUpdatedAt must be a string')
        else if std.isEmpty(LastUpdatedAt) then (error 'LastUpdatedAt must be not empty')
        else LastUpdatedAt,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
