{
  new(
    RoleArn,
    ActionParams,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      ActionParams:
        if !std.isObject(ActionParams) then (error 'ActionParams must be an object')
        else ActionParams,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::MitigationAction',
  },
  setActionName(ActionName): {
    Properties+::: {
      ActionName:
        if !std.isString(ActionName) then (error 'ActionName must be a string')
        else if std.isEmpty(ActionName) then (error 'ActionName must be not empty')
        else if std.length(ActionName) < 1 then error ('ActionName should have at least 1 characters')
        else if std.length(ActionName) > 128 then error ('ActionName should have not more than 128 characters')
        else ActionName,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setMitigationActionArn(MitigationActionArn): {
    Properties+::: {
      MitigationActionArn:
        if !std.isString(MitigationActionArn) then (error 'MitigationActionArn must be a string')
        else if std.isEmpty(MitigationActionArn) then (error 'MitigationActionArn must be not empty')
        else MitigationActionArn,
    },
  },
  setMitigationActionId(MitigationActionId): {
    Properties+::: {
      MitigationActionId:
        if !std.isString(MitigationActionId) then (error 'MitigationActionId must be a string')
        else if std.isEmpty(MitigationActionId) then (error 'MitigationActionId must be not empty')
        else MitigationActionId,
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
