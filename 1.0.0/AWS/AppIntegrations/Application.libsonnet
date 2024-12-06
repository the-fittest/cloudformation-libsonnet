{
  new(
    Name,
    Namespace,
    Description,
    ApplicationSourceConfig,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
      Namespace:
        if !std.isString(Namespace) then (error 'Namespace must be a string')
        else if std.isEmpty(Namespace) then (error 'Namespace must be not empty')
        else if std.length(Namespace) < 1 then error ('Namespace should have at least 1 characters')
        else if std.length(Namespace) > 255 then error ('Namespace should have not more than 255 characters')
        else Namespace,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
      ApplicationSourceConfig:
        if !std.isObject(ApplicationSourceConfig) then (error 'ApplicationSourceConfig must be an object')
        else if !std.objectHas(ApplicationSourceConfig, 'ExternalUrlConfig') then (error ' have attribute ExternalUrlConfig')
        else ApplicationSourceConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppIntegrations::Application',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 255 then error ('Id should have not more than 255 characters')
        else Id,
    },
  },
  setApplicationArn(ApplicationArn): {
    Properties+::: {
      ApplicationArn:
        if !std.isString(ApplicationArn) then (error 'ApplicationArn must be a string')
        else if std.isEmpty(ApplicationArn) then (error 'ApplicationArn must be not empty')
        else if std.length(ApplicationArn) < 1 then error ('ApplicationArn should have at least 1 characters')
        else if std.length(ApplicationArn) > 2048 then error ('ApplicationArn should have not more than 2048 characters')
        else ApplicationArn,
    },
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else if std.length(Permissions) > 150 then error ('Permissions cannot have more than 150 items')
        else Permissions,
    },
  },
  pushPermissions(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
