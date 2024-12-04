{
  new(
    Exportable,
    KeyAttributes,
  ): {
    local base = self,
    Properties: {
      assert std.isBoolean(Exportable) : 'Exportable must be a boolean',
      Exportable: Exportable,
      assert std.isObject(KeyAttributes) : 'KeyAttributes must be an object',
      KeyAttributes: KeyAttributes,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PaymentCryptography::Key',
  },
  withEnabled(Enabled): {
    assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
    Properties+::: {
      Enabled: Enabled,
    },
  },
  withKeyCheckValueAlgorithm(KeyCheckValueAlgorithm): {
    assert std.isString(KeyCheckValueAlgorithm) : 'KeyCheckValueAlgorithm must be a string',
    assert KeyCheckValueAlgorithm == 'CMAC' || KeyCheckValueAlgorithm == 'ANSI_X9_24' : "KeyCheckValueAlgorithm should be 'CMAC' or 'ANSI_X9_24'",
    Properties+::: {
      KeyCheckValueAlgorithm: KeyCheckValueAlgorithm,
    },
  },
  withKeyIdentifier(KeyIdentifier): {
    assert std.isString(KeyIdentifier) : 'KeyIdentifier must be a string',
    Properties+::: {
      KeyIdentifier: KeyIdentifier,
    },
  },
  withKeyOrigin(KeyOrigin): {
    assert std.isString(KeyOrigin) : 'KeyOrigin must be a string',
    assert KeyOrigin == 'EXTERNAL' || KeyOrigin == 'AWS_PAYMENT_CRYPTOGRAPHY' : "KeyOrigin should be 'EXTERNAL' or 'AWS_PAYMENT_CRYPTOGRAPHY'",
    Properties+::: {
      KeyOrigin: KeyOrigin,
    },
  },
  withKeyState(KeyState): {
    assert std.isString(KeyState) : 'KeyState must be a string',
    assert KeyState == 'CREATE_IN_PROGRESS' || KeyState == 'CREATE_COMPLETE' || KeyState == 'DELETE_PENDING' || KeyState == 'DELETE_COMPLETE' : "KeyState should be 'CREATE_IN_PROGRESS' or 'CREATE_COMPLETE' or 'DELETE_PENDING' or 'DELETE_COMPLETE'",
    Properties+::: {
      KeyState: KeyState,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
