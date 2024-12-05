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
    Type: 'AWS::SSMContacts::ContactChannel',
  },
  setContactId(ContactId): {
    Properties+::: {
      ContactId:
        if !std.isString(ContactId) then (error 'ContactId must be a string')
        else if std.isEmpty(ContactId) then (error 'ContactId must be not empty')
        else if std.length(ContactId) < 1 then error ('ContactId should have at least 1 characters')
        else if std.length(ContactId) > 2048 then error ('ContactId should have not more than 2048 characters')
        else ContactId,
    },
  },
  setChannelName(ChannelName): {
    Properties+::: {
      ChannelName:
        if !std.isString(ChannelName) then (error 'ChannelName must be a string')
        else if std.isEmpty(ChannelName) then (error 'ChannelName must be not empty')
        else if std.length(ChannelName) < 1 then error ('ChannelName should have at least 1 characters')
        else if std.length(ChannelName) > 255 then error ('ChannelName should have not more than 255 characters')
        else ChannelName,
    },
  },
  setChannelType(ChannelType): {
    Properties+::: {
      ChannelType:
        if !std.isString(ChannelType) then (error 'ChannelType must be a string')
        else if std.isEmpty(ChannelType) then (error 'ChannelType must be not empty')
        else if ChannelType != 'SMS' && ChannelType != 'VOICE' && ChannelType != 'EMAIL' then (error "ChannelType should be 'SMS' or 'VOICE' or 'EMAIL'")
        else ChannelType,
    },
  },
  setDeferActivation(DeferActivation): {
    Properties+::: {
      DeferActivation:
        if !std.isBoolean(DeferActivation) then (error 'DeferActivation must be a boolean') else DeferActivation,
    },
  },
  setChannelAddress(ChannelAddress): {
    Properties+::: {
      ChannelAddress:
        if !std.isString(ChannelAddress) then (error 'ChannelAddress must be a string')
        else if std.isEmpty(ChannelAddress) then (error 'ChannelAddress must be not empty')
        else ChannelAddress,
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
