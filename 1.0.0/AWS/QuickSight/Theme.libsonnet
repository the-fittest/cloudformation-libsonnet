{
  new(
    AwsAccountId,
    ThemeId,
    BaseThemeId,
    Configuration,
    Name,
  ): {
    local base = self,
    Properties: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else if std.length(AwsAccountId) < 12 then error ('AwsAccountId should have at least 12 characters')
        else if std.length(AwsAccountId) > 12 then error ('AwsAccountId should have not more than 12 characters')
        else AwsAccountId,
      ThemeId:
        if !std.isString(ThemeId) then (error 'ThemeId must be a string')
        else if std.isEmpty(ThemeId) then (error 'ThemeId must be not empty')
        else if std.length(ThemeId) < 1 then error ('ThemeId should have at least 1 characters')
        else if std.length(ThemeId) > 512 then error ('ThemeId should have not more than 512 characters')
        else ThemeId,
      BaseThemeId:
        if !std.isString(BaseThemeId) then (error 'BaseThemeId must be a string')
        else if std.isEmpty(BaseThemeId) then (error 'BaseThemeId must be not empty')
        else if std.length(BaseThemeId) < 1 then error ('BaseThemeId should have at least 1 characters')
        else if std.length(BaseThemeId) > 512 then error ('BaseThemeId should have not more than 512 characters')
        else BaseThemeId,
      Configuration:
        if !std.isObject(Configuration) then (error 'Configuration must be an object')
        else Configuration,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 2048 then error ('Name should have not more than 2048 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::QuickSight::Theme',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isString(CreatedTime) then (error 'CreatedTime must be a string')
        else if std.isEmpty(CreatedTime) then (error 'CreatedTime must be not empty')
        else CreatedTime,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else if std.length(Permissions) < 1 then error ('Permissions cannot have less than 1 items')
        else if std.length(Permissions) > 64 then error ('Permissions cannot have more than 64 items')
        else Permissions,
    },
  },
  setPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'QUICKSIGHT' && Type != 'CUSTOM' && Type != 'ALL' then (error "Type should be 'QUICKSIGHT' or 'CUSTOM' or 'ALL'")
        else Type,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isObject(Version) then (error 'Version must be an object')
        else Version,
    },
  },
  setVersionDescription(VersionDescription): {
    Properties+::: {
      VersionDescription:
        if !std.isString(VersionDescription) then (error 'VersionDescription must be a string')
        else if std.isEmpty(VersionDescription) then (error 'VersionDescription must be not empty')
        else if std.length(VersionDescription) < 1 then error ('VersionDescription should have at least 1 characters')
        else if std.length(VersionDescription) > 512 then error ('VersionDescription should have not more than 512 characters')
        else VersionDescription,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
