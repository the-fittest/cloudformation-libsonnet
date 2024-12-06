{
  new(
    Application,
    Resource,
    ResourceType,
  ): {
    local base = self,
    Properties: {
      Application:
        if !std.isString(Application) then (error 'Application must be a string')
        else if std.isEmpty(Application) then (error 'Application must be not empty')
        else if std.length(Application) < 1 then error ('Application should have at least 1 characters')
        else if std.length(Application) > 256 then error ('Application should have not more than 256 characters')
        else Application,
      Resource:
        if !std.isString(Resource) then (error 'Resource must be a string')
        else if std.isEmpty(Resource) then (error 'Resource must be not empty')
        else Resource,
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else if ResourceType != 'CFN_STACK' then (error "ResourceType should be 'CFN_STACK'")
        else ResourceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalogAppRegistry::ResourceAssociation',
  },
  setApplicationArn(ApplicationArn): {
    Properties+::: {
      ApplicationArn:
        if !std.isString(ApplicationArn) then (error 'ApplicationArn must be a string')
        else if std.isEmpty(ApplicationArn) then (error 'ApplicationArn must be not empty')
        else ApplicationArn,
    },
  },
  setResourceArn(ResourceArn): {
    Properties+::: {
      ResourceArn:
        if !std.isString(ResourceArn) then (error 'ResourceArn must be a string')
        else if std.isEmpty(ResourceArn) then (error 'ResourceArn must be not empty')
        else ResourceArn,
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
