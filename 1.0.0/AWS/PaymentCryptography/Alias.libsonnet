{
  new(
    AliasName,
  ): {
    local base = self,
    Properties: {
      AliasName:
        if !std.isString(AliasName) then (error 'AliasName must be a string')
        else if std.isEmpty(AliasName) then (error 'AliasName must be not empty')
        else if std.length(AliasName) < 7 then error ('AliasName should have at least 7 characters')
        else if std.length(AliasName) > 256 then error ('AliasName should have not more than 256 characters')
        else AliasName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PaymentCryptography::Alias',
  },
  setKeyArn(KeyArn): {
    Properties+::: {
      KeyArn:
        if !std.isString(KeyArn) then (error 'KeyArn must be a string')
        else if std.isEmpty(KeyArn) then (error 'KeyArn must be not empty')
        else if std.length(KeyArn) < 70 then error ('KeyArn should have at least 70 characters')
        else if std.length(KeyArn) > 150 then error ('KeyArn should have not more than 150 characters')
        else KeyArn,
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
