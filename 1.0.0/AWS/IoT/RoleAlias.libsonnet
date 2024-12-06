{
  new(
    RoleArn,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::RoleAlias',
  },
  setRoleAlias(RoleAlias): {
    Properties+::: {
      RoleAlias:
        if !std.isString(RoleAlias) then (error 'RoleAlias must be a string')
        else if std.isEmpty(RoleAlias) then (error 'RoleAlias must be not empty')
        else if std.length(RoleAlias) < 1 then error ('RoleAlias should have at least 1 characters')
        else if std.length(RoleAlias) > 128 then error ('RoleAlias should have not more than 128 characters')
        else RoleAlias,
    },
  },
  setRoleAliasArn(RoleAliasArn): {
    Properties+::: {
      RoleAliasArn:
        if !std.isString(RoleAliasArn) then (error 'RoleAliasArn must be a string')
        else if std.isEmpty(RoleAliasArn) then (error 'RoleAliasArn must be not empty')
        else if std.length(RoleAliasArn) < 1 then error ('RoleAliasArn should have at least 1 characters')
        else if std.length(RoleAliasArn) > 128 then error ('RoleAliasArn should have not more than 128 characters')
        else RoleAliasArn,
    },
  },
  setCredentialDurationSeconds(CredentialDurationSeconds): {
    Properties+::: {
      CredentialDurationSeconds:
        if !std.isNumber(CredentialDurationSeconds) then (error 'CredentialDurationSeconds must be an number')
        else if CredentialDurationSeconds < 900 then error ('CredentialDurationSeconds should be at least 900')
        else if CredentialDurationSeconds > 43200 then error ('CredentialDurationSeconds should be not more than 43200')
        else CredentialDurationSeconds,
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
