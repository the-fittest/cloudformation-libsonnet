{
  new(
    FlowArn,
    Name,
    Subscribers,
    Description,
  ): {
    local base = self,
    Properties: {
      FlowArn:
        if !std.isString(FlowArn) then (error 'FlowArn must be a string')
        else if std.isEmpty(FlowArn) then (error 'FlowArn must be not empty')
        else FlowArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Subscribers:
        if !std.isArray(Subscribers) then (error 'Subscribers must be an array')
        else Subscribers,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::FlowEntitlement',
  },
  setEntitlementArn(EntitlementArn): {
    Properties+::: {
      EntitlementArn:
        if !std.isString(EntitlementArn) then (error 'EntitlementArn must be a string')
        else if std.isEmpty(EntitlementArn) then (error 'EntitlementArn must be not empty')
        else EntitlementArn,
    },
  },
  setDataTransferSubscriberFeePercent(DataTransferSubscriberFeePercent): {
    Properties+::: {
      DataTransferSubscriberFeePercent:
        if !std.isNumber(DataTransferSubscriberFeePercent) then (error 'DataTransferSubscriberFeePercent must be an number')
        else DataTransferSubscriberFeePercent,
    },
  },
  setEncryption(Encryption): {
    Properties+::: {
      Encryption:
        if !std.isObject(Encryption) then (error 'Encryption must be an object')
        else if !std.objectHas(Encryption, 'Algorithm') then (error ' have attribute Algorithm')
        else if !std.objectHas(Encryption, 'RoleArn') then (error ' have attribute RoleArn')
        else Encryption,
    },
  },
  setEntitlementStatus(EntitlementStatus): {
    Properties+::: {
      EntitlementStatus:
        if !std.isString(EntitlementStatus) then (error 'EntitlementStatus must be a string')
        else if std.isEmpty(EntitlementStatus) then (error 'EntitlementStatus must be not empty')
        else if EntitlementStatus != 'ENABLED' && EntitlementStatus != 'DISABLED' then (error "EntitlementStatus should be 'ENABLED' or 'DISABLED'")
        else EntitlementStatus,
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
