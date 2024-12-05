{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalogAppRegistry::Application',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setApplicationTagKey(ApplicationTagKey): {
    Properties+::: {
      ApplicationTagKey:
        if !std.isString(ApplicationTagKey) then (error 'ApplicationTagKey must be a string')
        else if std.isEmpty(ApplicationTagKey) then (error 'ApplicationTagKey must be not empty')
        else if std.length(ApplicationTagKey) > 128 then error ('ApplicationTagKey should have not more than 128 characters')
        else ApplicationTagKey,
    },
  },
  setApplicationTagValue(ApplicationTagValue): {
    Properties+::: {
      ApplicationTagValue:
        if !std.isString(ApplicationTagValue) then (error 'ApplicationTagValue must be a string')
        else if std.isEmpty(ApplicationTagValue) then (error 'ApplicationTagValue must be not empty')
        else if std.length(ApplicationTagValue) > 256 then error ('ApplicationTagValue should have not more than 256 characters')
        else ApplicationTagValue,
    },
  },
  setApplicationName(ApplicationName): {
    Properties+::: {
      ApplicationName:
        if !std.isString(ApplicationName) then (error 'ApplicationName must be a string')
        else if std.isEmpty(ApplicationName) then (error 'ApplicationName must be not empty')
        else if std.length(ApplicationName) < 1 then error ('ApplicationName should have at least 1 characters')
        else if std.length(ApplicationName) > 256 then error ('ApplicationName should have not more than 256 characters')
        else ApplicationName,
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
