{
  new(
    PrimaryKeyArn,
    KeyPolicy,
  ): {
    local base = self,
    Properties: {
      PrimaryKeyArn:
        if !std.isString(PrimaryKeyArn) then (error 'PrimaryKeyArn must be a string')
        else if std.isEmpty(PrimaryKeyArn) then (error 'PrimaryKeyArn must be not empty')
        else if std.length(PrimaryKeyArn) < 1 then error ('PrimaryKeyArn should have at least 1 characters')
        else if std.length(PrimaryKeyArn) > 256 then error ('PrimaryKeyArn should have not more than 256 characters')
        else PrimaryKeyArn,
      KeyPolicy: KeyPolicy,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KMS::ReplicaKey',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 8192 then error ('Description should have not more than 8192 characters')
        else Description,
    },
  },
  setPendingWindowInDays(PendingWindowInDays): {
    Properties+::: {
      PendingWindowInDays:
        if !std.isNumber(PendingWindowInDays) then (error 'PendingWindowInDays must be an number')
        else if PendingWindowInDays < 7 then error ('PendingWindowInDays should be at least 7')
        else if PendingWindowInDays > 30 then error ('PendingWindowInDays should be not more than 30')
        else PendingWindowInDays,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setKeyId(KeyId): {
    Properties+::: {
      KeyId:
        if !std.isString(KeyId) then (error 'KeyId must be a string')
        else if std.isEmpty(KeyId) then (error 'KeyId must be not empty')
        else KeyId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
