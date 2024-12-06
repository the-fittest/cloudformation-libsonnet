{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::ConfigurationSet',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setTrackingOptions(TrackingOptions): {
    Properties+::: {
      TrackingOptions:
        if !std.isObject(TrackingOptions) then (error 'TrackingOptions must be an object')
        else TrackingOptions,
    },
  },
  setDeliveryOptions(DeliveryOptions): {
    Properties+::: {
      DeliveryOptions:
        if !std.isObject(DeliveryOptions) then (error 'DeliveryOptions must be an object')
        else DeliveryOptions,
    },
  },
  setReputationOptions(ReputationOptions): {
    Properties+::: {
      ReputationOptions:
        if !std.isObject(ReputationOptions) then (error 'ReputationOptions must be an object')
        else ReputationOptions,
    },
  },
  setSendingOptions(SendingOptions): {
    Properties+::: {
      SendingOptions:
        if !std.isObject(SendingOptions) then (error 'SendingOptions must be an object')
        else SendingOptions,
    },
  },
  setSuppressionOptions(SuppressionOptions): {
    Properties+::: {
      SuppressionOptions:
        if !std.isObject(SuppressionOptions) then (error 'SuppressionOptions must be an object')
        else SuppressionOptions,
    },
  },
  setVdmOptions(VdmOptions): {
    Properties+::: {
      VdmOptions:
        if !std.isObject(VdmOptions) then (error 'VdmOptions must be an object')
        else VdmOptions,
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
