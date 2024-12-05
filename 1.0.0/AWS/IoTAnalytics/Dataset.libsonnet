{
  new(
    Actions,
  ): {
    local base = self,
    Properties: {
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else if std.length(Actions) < 1 then error ('Actions cannot have less than 1 items')
        else if std.length(Actions) > 1 then error ('Actions cannot have more than 1 items')
        else Actions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTAnalytics::Dataset',
  },
  setLateDataRules(LateDataRules): {
    Properties+::: {
      LateDataRules:
        if !std.isArray(LateDataRules) then (error 'LateDataRules must be an array')
        else if std.length(LateDataRules) < 1 then error ('LateDataRules cannot have less than 1 items')
        else if std.length(LateDataRules) > 1 then error ('LateDataRules cannot have more than 1 items')
        else LateDataRules,
    },
  },
  setLateDataRulesMixin(LateDataRules): {
    Properties+::: {
      LateDataRules+: LateDataRules,
    },
  },
  setDatasetName(DatasetName): {
    Properties+::: {
      DatasetName:
        if !std.isString(DatasetName) then (error 'DatasetName must be a string')
        else if std.isEmpty(DatasetName) then (error 'DatasetName must be not empty')
        else if std.length(DatasetName) < 1 then error ('DatasetName should have at least 1 characters')
        else if std.length(DatasetName) > 128 then error ('DatasetName should have not more than 128 characters')
        else DatasetName,
    },
  },
  setContentDeliveryRules(ContentDeliveryRules): {
    Properties+::: {
      ContentDeliveryRules:
        if !std.isArray(ContentDeliveryRules) then (error 'ContentDeliveryRules must be an array')
        else if std.length(ContentDeliveryRules) > 20 then error ('ContentDeliveryRules cannot have more than 20 items')
        else ContentDeliveryRules,
    },
  },
  setContentDeliveryRulesMixin(ContentDeliveryRules): {
    Properties+::: {
      ContentDeliveryRules+: ContentDeliveryRules,
    },
  },
  setTriggers(Triggers): {
    Properties+::: {
      Triggers:
        if !std.isArray(Triggers) then (error 'Triggers must be an array')
        else if std.length(Triggers) > 5 then error ('Triggers cannot have more than 5 items')
        else Triggers,
    },
  },
  setTriggersMixin(Triggers): {
    Properties+::: {
      Triggers+: Triggers,
    },
  },
  setVersioningConfiguration(VersioningConfiguration): {
    Properties+::: {
      VersioningConfiguration:
        if !std.isObject(VersioningConfiguration) then (error 'VersioningConfiguration must be an object')
        else VersioningConfiguration,
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
  setRetentionPeriod(RetentionPeriod): {
    Properties+::: {
      RetentionPeriod:
        if !std.isObject(RetentionPeriod) then (error 'RetentionPeriod must be an object')
        else RetentionPeriod,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
