{
  new(
    DisplayName,
    UserRoleArn,
    AdminRoleArn,
    StudioName,
  ): {
    local base = self,
    Properties: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) > 64 then error ('DisplayName should have not more than 64 characters')
        else DisplayName,
      UserRoleArn:
        if !std.isString(UserRoleArn) then (error 'UserRoleArn must be a string')
        else if std.isEmpty(UserRoleArn) then (error 'UserRoleArn must be not empty')
        else UserRoleArn,
      AdminRoleArn:
        if !std.isString(AdminRoleArn) then (error 'AdminRoleArn must be a string')
        else if std.isEmpty(AdminRoleArn) then (error 'AdminRoleArn must be not empty')
        else AdminRoleArn,
      StudioName:
        if !std.isString(StudioName) then (error 'StudioName must be a string')
        else if std.isEmpty(StudioName) then (error 'StudioName must be not empty')
        else if std.length(StudioName) < 3 then error ('StudioName should have at least 3 characters')
        else if std.length(StudioName) > 64 then error ('StudioName should have not more than 64 characters')
        else StudioName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NimbleStudio::Studio',
  },
  setHomeRegion(HomeRegion): {
    Properties+::: {
      HomeRegion:
        if !std.isString(HomeRegion) then (error 'HomeRegion must be a string')
        else if std.isEmpty(HomeRegion) then (error 'HomeRegion must be not empty')
        else if std.length(HomeRegion) > 50 then error ('HomeRegion should have not more than 50 characters')
        else HomeRegion,
    },
  },
  setSsoClientId(SsoClientId): {
    Properties+::: {
      SsoClientId:
        if !std.isString(SsoClientId) then (error 'SsoClientId must be a string')
        else if std.isEmpty(SsoClientId) then (error 'SsoClientId must be not empty')
        else SsoClientId,
    },
  },
  setStudioEncryptionConfiguration(StudioEncryptionConfiguration): {
    Properties+::: {
      StudioEncryptionConfiguration:
        if !std.isObject(StudioEncryptionConfiguration) then (error 'StudioEncryptionConfiguration must be an object')
        else if !std.objectHas(StudioEncryptionConfiguration, 'KeyType') then (error ' have attribute KeyType')
        else StudioEncryptionConfiguration,
    },
  },
  setStudioId(StudioId): {
    Properties+::: {
      StudioId:
        if !std.isString(StudioId) then (error 'StudioId must be a string')
        else if std.isEmpty(StudioId) then (error 'StudioId must be not empty')
        else StudioId,
    },
  },
  setStudioUrl(StudioUrl): {
    Properties+::: {
      StudioUrl:
        if !std.isString(StudioUrl) then (error 'StudioUrl must be a string')
        else if std.isEmpty(StudioUrl) then (error 'StudioUrl must be not empty')
        else StudioUrl,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
