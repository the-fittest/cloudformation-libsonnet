{
  new(
    ExcludeResourceTags,
    PolicyName,
    RemediationEnabled,
    SecurityServicePolicyData,
  ): {
    local base = self,
    Properties: {
      ExcludeResourceTags:
        if !std.isBoolean(ExcludeResourceTags) then (error 'ExcludeResourceTags must be a boolean') else ExcludeResourceTags,
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else if std.length(PolicyName) < 1 then error ('PolicyName should have at least 1 characters')
        else if std.length(PolicyName) > 1024 then error ('PolicyName should have not more than 1024 characters')
        else PolicyName,
      RemediationEnabled:
        if !std.isBoolean(RemediationEnabled) then (error 'RemediationEnabled must be a boolean') else RemediationEnabled,
      SecurityServicePolicyData:
        if !std.isObject(SecurityServicePolicyData) then (error 'SecurityServicePolicyData must be an object')
        else if !std.objectHas(SecurityServicePolicyData, 'Type') then (error ' have attribute Type')
        else SecurityServicePolicyData,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FMS::Policy',
  },
  setExcludeMap(ExcludeMap): {
    Properties+::: {
      ExcludeMap:
        if !std.isObject(ExcludeMap) then (error 'ExcludeMap must be an object')
        else ExcludeMap,
    },
  },
  setIncludeMap(IncludeMap): {
    Properties+::: {
      IncludeMap:
        if !std.isObject(IncludeMap) then (error 'IncludeMap must be an object')
        else IncludeMap,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 36 then error ('Id should have at least 36 characters')
        else if std.length(Id) > 36 then error ('Id should have not more than 36 characters')
        else Id,
    },
  },
  setPolicyDescription(PolicyDescription): {
    Properties+::: {
      PolicyDescription:
        if !std.isString(PolicyDescription) then (error 'PolicyDescription must be a string')
        else if std.isEmpty(PolicyDescription) then (error 'PolicyDescription must be not empty')
        else if std.length(PolicyDescription) > 256 then error ('PolicyDescription should have not more than 256 characters')
        else PolicyDescription,
    },
  },
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isArray(ResourceTags) then (error 'ResourceTags must be an array')
        else if std.length(ResourceTags) > 8 then error ('ResourceTags cannot have more than 8 items')
        else ResourceTags,
    },
  },
  pushResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags+: ResourceTags,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else if std.length(ResourceType) < 1 then error ('ResourceType should have at least 1 characters')
        else if std.length(ResourceType) > 128 then error ('ResourceType should have not more than 128 characters')
        else ResourceType,
    },
  },
  setResourceTypeList(ResourceTypeList): {
    Properties+::: {
      ResourceTypeList:
        if !std.isArray(ResourceTypeList) then (error 'ResourceTypeList must be an array')
        else ResourceTypeList,
    },
  },
  pushResourceTypeList(ResourceTypeList): {
    Properties+::: {
      ResourceTypeList+: ResourceTypeList,
    },
  },
  setResourceSetIds(ResourceSetIds): {
    Properties+::: {
      ResourceSetIds:
        if !std.isArray(ResourceSetIds) then (error 'ResourceSetIds must be an array')
        else ResourceSetIds,
    },
  },
  pushResourceSetIds(ResourceSetIds): {
    Properties+::: {
      ResourceSetIds+: ResourceSetIds,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1024 then error ('Arn should have not more than 1024 characters')
        else Arn,
    },
  },
  setDeleteAllPolicyResources(DeleteAllPolicyResources): {
    Properties+::: {
      DeleteAllPolicyResources:
        if !std.isBoolean(DeleteAllPolicyResources) then (error 'DeleteAllPolicyResources must be a boolean') else DeleteAllPolicyResources,
    },
  },
  setResourcesCleanUp(ResourcesCleanUp): {
    Properties+::: {
      ResourcesCleanUp:
        if !std.isBoolean(ResourcesCleanUp) then (error 'ResourcesCleanUp must be a boolean') else ResourcesCleanUp,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
