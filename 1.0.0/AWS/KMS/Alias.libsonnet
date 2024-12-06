{
  new(
    AliasName,
    TargetKeyId,
  ): {
    local base = self,
    Properties: {
      AliasName:
        if !std.isString(AliasName) then (error 'AliasName must be a string')
        else if std.isEmpty(AliasName) then (error 'AliasName must be not empty')
        else if std.length(AliasName) < 1 then error ('AliasName should have at least 1 characters')
        else if std.length(AliasName) > 256 then error ('AliasName should have not more than 256 characters')
        else AliasName,
      TargetKeyId:
        if !std.isString(TargetKeyId) then (error 'TargetKeyId must be a string')
        else if std.isEmpty(TargetKeyId) then (error 'TargetKeyId must be not empty')
        else if std.length(TargetKeyId) < 1 then error ('TargetKeyId should have at least 1 characters')
        else if std.length(TargetKeyId) > 256 then error ('TargetKeyId should have not more than 256 characters')
        else TargetKeyId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KMS::Alias',
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
