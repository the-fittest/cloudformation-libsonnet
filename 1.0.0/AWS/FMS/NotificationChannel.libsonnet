{
  new(
    SnsRoleName,
    SnsTopicArn,
  ): {
    local base = self,
    Properties: {
      SnsRoleName:
        if !std.isString(SnsRoleName) then (error 'SnsRoleName must be a string')
        else if std.isEmpty(SnsRoleName) then (error 'SnsRoleName must be not empty')
        else if std.length(SnsRoleName) < 1 then error ('SnsRoleName should have at least 1 characters')
        else if std.length(SnsRoleName) > 1024 then error ('SnsRoleName should have not more than 1024 characters')
        else SnsRoleName,
      SnsTopicArn:
        if !std.isString(SnsTopicArn) then (error 'SnsTopicArn must be a string')
        else if std.isEmpty(SnsTopicArn) then (error 'SnsTopicArn must be not empty')
        else if std.length(SnsTopicArn) < 1 then error ('SnsTopicArn should have at least 1 characters')
        else if std.length(SnsTopicArn) > 1024 then error ('SnsTopicArn should have not more than 1024 characters')
        else SnsTopicArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FMS::NotificationChannel',
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
