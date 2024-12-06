{
  new(
    Application,
    AttributeGroup,
  ): {
    local base = self,
    Properties: {
      Application:
        if !std.isString(Application) then (error 'Application must be a string')
        else if std.isEmpty(Application) then (error 'Application must be not empty')
        else if std.length(Application) < 1 then error ('Application should have at least 1 characters')
        else if std.length(Application) > 256 then error ('Application should have not more than 256 characters')
        else Application,
      AttributeGroup:
        if !std.isString(AttributeGroup) then (error 'AttributeGroup must be a string')
        else if std.isEmpty(AttributeGroup) then (error 'AttributeGroup must be not empty')
        else if std.length(AttributeGroup) < 1 then error ('AttributeGroup should have at least 1 characters')
        else if std.length(AttributeGroup) > 256 then error ('AttributeGroup should have not more than 256 characters')
        else AttributeGroup,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation',
  },
  setApplicationArn(ApplicationArn): {
    Properties+::: {
      ApplicationArn:
        if !std.isString(ApplicationArn) then (error 'ApplicationArn must be a string')
        else if std.isEmpty(ApplicationArn) then (error 'ApplicationArn must be not empty')
        else ApplicationArn,
    },
  },
  setAttributeGroupArn(AttributeGroupArn): {
    Properties+::: {
      AttributeGroupArn:
        if !std.isString(AttributeGroupArn) then (error 'AttributeGroupArn must be a string')
        else if std.isEmpty(AttributeGroupArn) then (error 'AttributeGroupArn must be not empty')
        else AttributeGroupArn,
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
