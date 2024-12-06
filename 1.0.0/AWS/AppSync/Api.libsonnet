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
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::Api',
  },
  setApiId(ApiId): {
    Properties+::: {
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
    },
  },
  setApiArn(ApiArn): {
    Properties+::: {
      ApiArn:
        if !std.isString(ApiArn) then (error 'ApiArn must be a string')
        else if std.isEmpty(ApiArn) then (error 'ApiArn must be not empty')
        else ApiArn,
    },
  },
  setOwnerContact(OwnerContact): {
    Properties+::: {
      OwnerContact:
        if !std.isString(OwnerContact) then (error 'OwnerContact must be a string')
        else if std.isEmpty(OwnerContact) then (error 'OwnerContact must be not empty')
        else if std.length(OwnerContact) < 1 then error ('OwnerContact should have at least 1 characters')
        else if std.length(OwnerContact) > 250 then error ('OwnerContact should have not more than 250 characters')
        else OwnerContact,
    },
  },
  setDns(Dns): {
    Properties+::: {
      Dns:
        if !std.isObject(Dns) then (error 'Dns must be an object')
        else Dns,
    },
  },
  setEventConfig(EventConfig): {
    Properties+::: {
      EventConfig:
        if !std.isObject(EventConfig) then (error 'EventConfig must be an object')
        else if !std.objectHas(EventConfig, 'AuthProviders') then (error ' have attribute AuthProviders')
        else if !std.objectHas(EventConfig, 'ConnectionAuthModes') then (error ' have attribute ConnectionAuthModes')
        else if !std.objectHas(EventConfig, 'DefaultPublishAuthModes') then (error ' have attribute DefaultPublishAuthModes')
        else if !std.objectHas(EventConfig, 'DefaultSubscribeAuthModes') then (error ' have attribute DefaultSubscribeAuthModes')
        else EventConfig,
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
