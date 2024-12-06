{
  new(
    User,
    AgentArns,
  ): {
    local base = self,
    Properties: {
      User:
        if !std.isString(User) then (error 'User must be a string')
        else if std.isEmpty(User) then (error 'User must be not empty')
        else if std.length(User) > 104 then error ('User should have not more than 104 characters')
        else User,
      AgentArns:
        if !std.isArray(AgentArns) then (error 'AgentArns must be an array')
        else if std.length(AgentArns) < 1 then error ('AgentArns cannot have less than 1 items')
        else if std.length(AgentArns) > 4 then error ('AgentArns cannot have more than 4 items')
        else AgentArns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationSMB',
  },
  setDomain(Domain): {
    Properties+::: {
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else if std.length(Domain) > 253 then error ('Domain should have not more than 253 characters')
        else Domain,
    },
  },
  setMountOptions(MountOptions): {
    Properties+::: {
      MountOptions:
        if !std.isObject(MountOptions) then (error 'MountOptions must be an object')
        else MountOptions,
    },
  },
  setPassword(Password): {
    Properties+::: {
      Password:
        if !std.isString(Password) then (error 'Password must be a string')
        else if std.isEmpty(Password) then (error 'Password must be not empty')
        else if std.length(Password) > 104 then error ('Password should have not more than 104 characters')
        else Password,
    },
  },
  setServerHostname(ServerHostname): {
    Properties+::: {
      ServerHostname:
        if !std.isString(ServerHostname) then (error 'ServerHostname must be a string')
        else if std.isEmpty(ServerHostname) then (error 'ServerHostname must be not empty')
        else if std.length(ServerHostname) > 255 then error ('ServerHostname should have not more than 255 characters')
        else ServerHostname,
    },
  },
  setSubdirectory(Subdirectory): {
    Properties+::: {
      Subdirectory:
        if !std.isString(Subdirectory) then (error 'Subdirectory must be a string')
        else if std.isEmpty(Subdirectory) then (error 'Subdirectory must be not empty')
        else if std.length(Subdirectory) > 4096 then error ('Subdirectory should have not more than 4096 characters')
        else Subdirectory,
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
  setLocationArn(LocationArn): {
    Properties+::: {
      LocationArn:
        if !std.isString(LocationArn) then (error 'LocationArn must be a string')
        else if std.isEmpty(LocationArn) then (error 'LocationArn must be not empty')
        else if std.length(LocationArn) > 128 then error ('LocationArn should have not more than 128 characters')
        else LocationArn,
    },
  },
  setLocationUri(LocationUri): {
    Properties+::: {
      LocationUri:
        if !std.isString(LocationUri) then (error 'LocationUri must be a string')
        else if std.isEmpty(LocationUri) then (error 'LocationUri must be not empty')
        else if std.length(LocationUri) > 4356 then error ('LocationUri should have not more than 4356 characters')
        else LocationUri,
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
