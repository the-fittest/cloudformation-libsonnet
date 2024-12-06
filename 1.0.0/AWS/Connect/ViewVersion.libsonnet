{
  new(
    ViewArn,
  ): {
    local base = self,
    Properties: {
      ViewArn:
        if !std.isString(ViewArn) then (error 'ViewArn must be a string')
        else if std.isEmpty(ViewArn) then (error 'ViewArn must be not empty')
        else if std.length(ViewArn) < 1 then error ('ViewArn should have at least 1 characters')
        else if std.length(ViewArn) > 255 then error ('ViewArn should have not more than 255 characters')
        else ViewArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::ViewVersion',
  },
  setViewVersionArn(ViewVersionArn): {
    Properties+::: {
      ViewVersionArn:
        if !std.isString(ViewVersionArn) then (error 'ViewVersionArn must be a string')
        else if std.isEmpty(ViewVersionArn) then (error 'ViewVersionArn must be not empty')
        else if std.length(ViewVersionArn) < 1 then error ('ViewVersionArn should have at least 1 characters')
        else if std.length(ViewVersionArn) > 255 then error ('ViewVersionArn should have not more than 255 characters')
        else ViewVersionArn,
    },
  },
  setVersionDescription(VersionDescription): {
    Properties+::: {
      VersionDescription:
        if !std.isString(VersionDescription) then (error 'VersionDescription must be a string')
        else if std.isEmpty(VersionDescription) then (error 'VersionDescription must be not empty')
        else if std.length(VersionDescription) < 1 then error ('VersionDescription should have at least 1 characters')
        else if std.length(VersionDescription) > 4096 then error ('VersionDescription should have not more than 4096 characters')
        else VersionDescription,
    },
  },
  setViewContentSha256(ViewContentSha256): {
    Properties+::: {
      ViewContentSha256:
        if !std.isString(ViewContentSha256) then (error 'ViewContentSha256 must be a string')
        else if std.isEmpty(ViewContentSha256) then (error 'ViewContentSha256 must be not empty')
        else if std.length(ViewContentSha256) < 1 then error ('ViewContentSha256 should have at least 1 characters')
        else if std.length(ViewContentSha256) > 64 then error ('ViewContentSha256 should have not more than 64 characters')
        else ViewContentSha256,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isNumber(Version) then (error 'Version must be an number')
        else Version,
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
