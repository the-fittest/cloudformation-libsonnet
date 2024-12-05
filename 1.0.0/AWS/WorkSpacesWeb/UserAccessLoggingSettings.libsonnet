{
  new(
    KinesisStreamArn,
  ): {
    local base = self,
    Properties: {
      KinesisStreamArn:
        if !std.isString(KinesisStreamArn) then (error 'KinesisStreamArn must be a string')
        else if std.isEmpty(KinesisStreamArn) then (error 'KinesisStreamArn must be not empty')
        else if std.length(KinesisStreamArn) < 20 then error ('KinesisStreamArn should have at least 20 characters')
        else if std.length(KinesisStreamArn) > 2048 then error ('KinesisStreamArn should have not more than 2048 characters')
        else KinesisStreamArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::UserAccessLoggingSettings',
  },
  setAssociatedPortalArns(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns:
        if !std.isArray(AssociatedPortalArns) then (error 'AssociatedPortalArns must be an array')
        else AssociatedPortalArns,
    },
  },
  setAssociatedPortalArnsMixin(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns+: AssociatedPortalArns,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setUserAccessLoggingSettingsArn(UserAccessLoggingSettingsArn): {
    Properties+::: {
      UserAccessLoggingSettingsArn:
        if !std.isString(UserAccessLoggingSettingsArn) then (error 'UserAccessLoggingSettingsArn must be a string')
        else if std.isEmpty(UserAccessLoggingSettingsArn) then (error 'UserAccessLoggingSettingsArn must be not empty')
        else if std.length(UserAccessLoggingSettingsArn) < 20 then error ('UserAccessLoggingSettingsArn should have at least 20 characters')
        else if std.length(UserAccessLoggingSettingsArn) > 2048 then error ('UserAccessLoggingSettingsArn should have not more than 2048 characters')
        else UserAccessLoggingSettingsArn,
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
