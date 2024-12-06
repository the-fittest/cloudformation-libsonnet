{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Proton::EnvironmentAccountConnection',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCodebuildRoleArn(CodebuildRoleArn): {
    Properties+::: {
      CodebuildRoleArn:
        if !std.isString(CodebuildRoleArn) then (error 'CodebuildRoleArn must be a string')
        else if std.isEmpty(CodebuildRoleArn) then (error 'CodebuildRoleArn must be not empty')
        else if std.length(CodebuildRoleArn) < 1 then error ('CodebuildRoleArn should have at least 1 characters')
        else if std.length(CodebuildRoleArn) > 200 then error ('CodebuildRoleArn should have not more than 200 characters')
        else CodebuildRoleArn,
    },
  },
  setComponentRoleArn(ComponentRoleArn): {
    Properties+::: {
      ComponentRoleArn:
        if !std.isString(ComponentRoleArn) then (error 'ComponentRoleArn must be a string')
        else if std.isEmpty(ComponentRoleArn) then (error 'ComponentRoleArn must be not empty')
        else if std.length(ComponentRoleArn) < 1 then error ('ComponentRoleArn should have at least 1 characters')
        else if std.length(ComponentRoleArn) > 200 then error ('ComponentRoleArn should have not more than 200 characters')
        else ComponentRoleArn,
    },
  },
  setEnvironmentAccountId(EnvironmentAccountId): {
    Properties+::: {
      EnvironmentAccountId:
        if !std.isString(EnvironmentAccountId) then (error 'EnvironmentAccountId must be a string')
        else if std.isEmpty(EnvironmentAccountId) then (error 'EnvironmentAccountId must be not empty')
        else EnvironmentAccountId,
    },
  },
  setEnvironmentName(EnvironmentName): {
    Properties+::: {
      EnvironmentName:
        if !std.isString(EnvironmentName) then (error 'EnvironmentName must be a string')
        else if std.isEmpty(EnvironmentName) then (error 'EnvironmentName must be not empty')
        else if std.length(EnvironmentName) < 1 then error ('EnvironmentName should have at least 1 characters')
        else if std.length(EnvironmentName) > 100 then error ('EnvironmentName should have not more than 100 characters')
        else EnvironmentName,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setManagementAccountId(ManagementAccountId): {
    Properties+::: {
      ManagementAccountId:
        if !std.isString(ManagementAccountId) then (error 'ManagementAccountId must be a string')
        else if std.isEmpty(ManagementAccountId) then (error 'ManagementAccountId must be not empty')
        else ManagementAccountId,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 200 then error ('RoleArn should have not more than 200 characters')
        else RoleArn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'PENDING' && Status != 'CONNECTED' && Status != 'REJECTED' then (error "Status should be 'PENDING' or 'CONNECTED' or 'REJECTED'")
        else Status,
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
