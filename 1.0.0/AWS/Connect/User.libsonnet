{
  new(
    InstanceArn,
    PhoneConfig,
    RoutingProfileArn,
    SecurityProfileArns,
    Username,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      PhoneConfig:
        if !std.isObject(PhoneConfig) then (error 'PhoneConfig must be an object')
        else if !std.objectHas(PhoneConfig, 'PhoneType') then (error ' have attribute PhoneType')
        else PhoneConfig,
      RoutingProfileArn:
        if !std.isString(RoutingProfileArn) then (error 'RoutingProfileArn must be a string')
        else if std.isEmpty(RoutingProfileArn) then (error 'RoutingProfileArn must be not empty')
        else RoutingProfileArn,
      SecurityProfileArns:
        if !std.isArray(SecurityProfileArns) then (error 'SecurityProfileArns must be an array')
        else if std.length(SecurityProfileArns) < 1 then error ('SecurityProfileArns cannot have less than 1 items')
        else if std.length(SecurityProfileArns) > 10 then error ('SecurityProfileArns cannot have more than 10 items')
        else SecurityProfileArns,
      Username:
        if !std.isString(Username) then (error 'Username must be a string')
        else if std.isEmpty(Username) then (error 'Username must be not empty')
        else if std.length(Username) < 1 then error ('Username should have at least 1 characters')
        else if std.length(Username) > 64 then error ('Username should have not more than 64 characters')
        else Username,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::User',
  },
  setDirectoryUserId(DirectoryUserId): {
    Properties+::: {
      DirectoryUserId:
        if !std.isString(DirectoryUserId) then (error 'DirectoryUserId must be a string')
        else if std.isEmpty(DirectoryUserId) then (error 'DirectoryUserId must be not empty')
        else DirectoryUserId,
    },
  },
  setHierarchyGroupArn(HierarchyGroupArn): {
    Properties+::: {
      HierarchyGroupArn:
        if !std.isString(HierarchyGroupArn) then (error 'HierarchyGroupArn must be a string')
        else if std.isEmpty(HierarchyGroupArn) then (error 'HierarchyGroupArn must be not empty')
        else HierarchyGroupArn,
    },
  },
  setPassword(Password): {
    Properties+::: {
      Password:
        if !std.isString(Password) then (error 'Password must be a string')
        else if std.isEmpty(Password) then (error 'Password must be not empty')
        else Password,
    },
  },
  setIdentityInfo(IdentityInfo): {
    Properties+::: {
      IdentityInfo:
        if !std.isObject(IdentityInfo) then (error 'IdentityInfo must be an object')
        else IdentityInfo,
    },
  },
  setUserArn(UserArn): {
    Properties+::: {
      UserArn:
        if !std.isString(UserArn) then (error 'UserArn must be a string')
        else if std.isEmpty(UserArn) then (error 'UserArn must be not empty')
        else UserArn,
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setUserProficiencies(UserProficiencies): {
    Properties+::: {
      UserProficiencies:
        if !std.isArray(UserProficiencies) then (error 'UserProficiencies must be an array')
        else UserProficiencies,
    },
  },
  pushUserProficiencies(UserProficiencies): {
    Properties+::: {
      UserProficiencies+: UserProficiencies,
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
