{
  new(
    StandardsArn,
  ): {
    local base = self,
    Properties: {
      StandardsArn:
        if !std.isString(StandardsArn) then (error 'StandardsArn must be a string')
        else if std.isEmpty(StandardsArn) then (error 'StandardsArn must be not empty')
        else StandardsArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::Standard',
  },
  setStandardsSubscriptionArn(StandardsSubscriptionArn): {
    Properties+::: {
      StandardsSubscriptionArn:
        if !std.isString(StandardsSubscriptionArn) then (error 'StandardsSubscriptionArn must be a string')
        else if std.isEmpty(StandardsSubscriptionArn) then (error 'StandardsSubscriptionArn must be not empty')
        else StandardsSubscriptionArn,
    },
  },
  setDisabledStandardsControls(DisabledStandardsControls): {
    Properties+::: {
      DisabledStandardsControls:
        if !std.isArray(DisabledStandardsControls) then (error 'DisabledStandardsControls must be an array')
        else if std.length(DisabledStandardsControls) > 100 then error ('DisabledStandardsControls cannot have more than 100 items')
        else DisabledStandardsControls,
    },
  },
  pushDisabledStandardsControls(DisabledStandardsControls): {
    Properties+::: {
      DisabledStandardsControls+: DisabledStandardsControls,
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
