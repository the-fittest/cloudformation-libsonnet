{
  new(
    Role,
    ServerId,
    UserName,
  ): {
    local base = self,
    Properties: {
      Role:
        if !std.isString(Role) then (error 'Role must be a string')
        else if std.isEmpty(Role) then (error 'Role must be not empty')
        else if std.length(Role) < 20 then error ('Role should have at least 20 characters')
        else if std.length(Role) > 2048 then error ('Role should have not more than 2048 characters')
        else Role,
      ServerId:
        if !std.isString(ServerId) then (error 'ServerId must be a string')
        else if std.isEmpty(ServerId) then (error 'ServerId must be not empty')
        else if std.length(ServerId) < 19 then error ('ServerId should have at least 19 characters')
        else if std.length(ServerId) > 19 then error ('ServerId should have not more than 19 characters')
        else ServerId,
      UserName:
        if !std.isString(UserName) then (error 'UserName must be a string')
        else if std.isEmpty(UserName) then (error 'UserName must be not empty')
        else if std.length(UserName) < 3 then error ('UserName should have at least 3 characters')
        else if std.length(UserName) > 100 then error ('UserName should have not more than 100 characters')
        else UserName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::User',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setHomeDirectory(HomeDirectory): {
    Properties+::: {
      HomeDirectory:
        if !std.isString(HomeDirectory) then (error 'HomeDirectory must be a string')
        else if std.isEmpty(HomeDirectory) then (error 'HomeDirectory must be not empty')
        else if std.length(HomeDirectory) > 1024 then error ('HomeDirectory should have not more than 1024 characters')
        else HomeDirectory,
    },
  },
  setHomeDirectoryMappings(HomeDirectoryMappings): {
    Properties+::: {
      HomeDirectoryMappings:
        if !std.isArray(HomeDirectoryMappings) then (error 'HomeDirectoryMappings must be an array')
        else if std.length(HomeDirectoryMappings) < 1 then error ('HomeDirectoryMappings cannot have less than 1 items')
        else if std.length(HomeDirectoryMappings) > 50000 then error ('HomeDirectoryMappings cannot have more than 50000 items')
        else HomeDirectoryMappings,
    },
  },
  pushHomeDirectoryMappings(HomeDirectoryMappings): {
    Properties+::: {
      HomeDirectoryMappings+: HomeDirectoryMappings,
    },
  },
  setHomeDirectoryType(HomeDirectoryType): {
    Properties+::: {
      HomeDirectoryType:
        if !std.isString(HomeDirectoryType) then (error 'HomeDirectoryType must be a string')
        else if std.isEmpty(HomeDirectoryType) then (error 'HomeDirectoryType must be not empty')
        else if HomeDirectoryType != 'PATH' && HomeDirectoryType != 'LOGICAL' then (error "HomeDirectoryType should be 'PATH' or 'LOGICAL'")
        else HomeDirectoryType,
    },
  },
  setPolicy(Policy): {
    Properties+::: {
      Policy:
        if !std.isString(Policy) then (error 'Policy must be a string')
        else if std.isEmpty(Policy) then (error 'Policy must be not empty')
        else if std.length(Policy) > 2048 then error ('Policy should have not more than 2048 characters')
        else Policy,
    },
  },
  setPosixProfile(PosixProfile): {
    Properties+::: {
      PosixProfile:
        if !std.isObject(PosixProfile) then (error 'PosixProfile must be an object')
        else if !std.objectHas(PosixProfile, 'Gid') then (error ' have attribute Gid')
        else if !std.objectHas(PosixProfile, 'Uid') then (error ' have attribute Uid')
        else PosixProfile,
    },
  },
  setSshPublicKeys(SshPublicKeys): {
    Properties+::: {
      SshPublicKeys:
        if !std.isArray(SshPublicKeys) then (error 'SshPublicKeys must be an array')
        else SshPublicKeys,
    },
  },
  pushSshPublicKeys(SshPublicKeys): {
    Properties+::: {
      SshPublicKeys+: SshPublicKeys,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
