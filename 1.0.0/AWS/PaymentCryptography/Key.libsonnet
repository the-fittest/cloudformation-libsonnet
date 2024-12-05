{
  new(
    Exportable,
    KeyAttributes,
  ): {
    local base = self,
    Properties: {
      Exportable:
        if !std.isBoolean(Exportable) then (error 'Exportable must be a boolean') else Exportable,
      KeyAttributes:
        if !std.isObject(KeyAttributes) then (error 'KeyAttributes must be an object')
        else if !std.objectHas(KeyAttributes, 'KeyAlgorithm') then (error ' have attribute KeyAlgorithm')
        else if !std.objectHas(KeyAttributes, 'KeyClass') then (error ' have attribute KeyClass')
        else if !std.objectHas(KeyAttributes, 'KeyModesOfUse') then (error ' have attribute KeyModesOfUse')
        else if !std.objectHas(KeyAttributes, 'KeyUsage') then (error ' have attribute KeyUsage')
        else KeyAttributes,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PaymentCryptography::Key',
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setKeyCheckValueAlgorithm(KeyCheckValueAlgorithm): {
    Properties+::: {
      KeyCheckValueAlgorithm:
        if !std.isString(KeyCheckValueAlgorithm) then (error 'KeyCheckValueAlgorithm must be a string')
        else if std.isEmpty(KeyCheckValueAlgorithm) then (error 'KeyCheckValueAlgorithm must be not empty')
        else if KeyCheckValueAlgorithm != 'CMAC' && KeyCheckValueAlgorithm != 'ANSI_X9_24' then (error "KeyCheckValueAlgorithm should be 'CMAC' or 'ANSI_X9_24'")
        else KeyCheckValueAlgorithm,
    },
  },
  setKeyIdentifier(KeyIdentifier): {
    Properties+::: {
      KeyIdentifier:
        if !std.isString(KeyIdentifier) then (error 'KeyIdentifier must be a string')
        else if std.isEmpty(KeyIdentifier) then (error 'KeyIdentifier must be not empty')
        else if std.length(KeyIdentifier) < 7 then error ('KeyIdentifier should have at least 7 characters')
        else if std.length(KeyIdentifier) > 322 then error ('KeyIdentifier should have not more than 322 characters')
        else KeyIdentifier,
    },
  },
  setKeyOrigin(KeyOrigin): {
    Properties+::: {
      KeyOrigin:
        if !std.isString(KeyOrigin) then (error 'KeyOrigin must be a string')
        else if std.isEmpty(KeyOrigin) then (error 'KeyOrigin must be not empty')
        else if KeyOrigin != 'EXTERNAL' && KeyOrigin != 'AWS_PAYMENT_CRYPTOGRAPHY' then (error "KeyOrigin should be 'EXTERNAL' or 'AWS_PAYMENT_CRYPTOGRAPHY'")
        else KeyOrigin,
    },
  },
  setKeyState(KeyState): {
    Properties+::: {
      KeyState:
        if !std.isString(KeyState) then (error 'KeyState must be a string')
        else if std.isEmpty(KeyState) then (error 'KeyState must be not empty')
        else if KeyState != 'CREATE_IN_PROGRESS' && KeyState != 'CREATE_COMPLETE' && KeyState != 'DELETE_PENDING' && KeyState != 'DELETE_COMPLETE' then (error "KeyState should be 'CREATE_IN_PROGRESS' or 'CREATE_COMPLETE' or 'DELETE_PENDING' or 'DELETE_COMPLETE'")
        else KeyState,
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
