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
    Type: 'AWS::KMS::Key',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 8192 then error ('Description should have not more than 8192 characters')
        else Description,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setEnableKeyRotation(EnableKeyRotation): {
    Properties+::: {
      EnableKeyRotation:
        if !std.isBoolean(EnableKeyRotation) then (error 'EnableKeyRotation must be a boolean') else EnableKeyRotation,
    },
  },
  setKeyPolicy(KeyPolicy): {
    Properties+::: {
      KeyPolicy: KeyPolicy,
    },
  },
  setKeyUsage(KeyUsage): {
    Properties+::: {
      KeyUsage:
        if !std.isString(KeyUsage) then (error 'KeyUsage must be a string')
        else if std.isEmpty(KeyUsage) then (error 'KeyUsage must be not empty')
        else if KeyUsage != 'ENCRYPT_DECRYPT' && KeyUsage != 'SIGN_VERIFY' && KeyUsage != 'GENERATE_VERIFY_MAC' && KeyUsage != 'KEY_AGREEMENT' then (error "KeyUsage should be 'ENCRYPT_DECRYPT' or 'SIGN_VERIFY' or 'GENERATE_VERIFY_MAC' or 'KEY_AGREEMENT'")
        else KeyUsage,
    },
  },
  setOrigin(Origin): {
    Properties+::: {
      Origin:
        if !std.isString(Origin) then (error 'Origin must be a string')
        else if std.isEmpty(Origin) then (error 'Origin must be not empty')
        else if Origin != 'AWS_KMS' && Origin != 'EXTERNAL' then (error "Origin should be 'AWS_KMS' or 'EXTERNAL'")
        else Origin,
    },
  },
  setKeySpec(KeySpec): {
    Properties+::: {
      KeySpec:
        if !std.isString(KeySpec) then (error 'KeySpec must be a string')
        else if std.isEmpty(KeySpec) then (error 'KeySpec must be not empty')
        else if KeySpec != 'SYMMETRIC_DEFAULT' && KeySpec != 'RSA_2048' && KeySpec != 'RSA_3072' && KeySpec != 'RSA_4096' && KeySpec != 'ECC_NIST_P256' && KeySpec != 'ECC_NIST_P384' && KeySpec != 'ECC_NIST_P521' && KeySpec != 'ECC_SECG_P256K1' && KeySpec != 'HMAC_224' && KeySpec != 'HMAC_256' && KeySpec != 'HMAC_384' && KeySpec != 'HMAC_512' && KeySpec != 'SM2' then (error "KeySpec should be 'SYMMETRIC_DEFAULT' or 'RSA_2048' or 'RSA_3072' or 'RSA_4096' or 'ECC_NIST_P256' or 'ECC_NIST_P384' or 'ECC_NIST_P521' or 'ECC_SECG_P256K1' or 'HMAC_224' or 'HMAC_256' or 'HMAC_384' or 'HMAC_512' or 'SM2'")
        else KeySpec,
    },
  },
  setMultiRegion(MultiRegion): {
    Properties+::: {
      MultiRegion:
        if !std.isBoolean(MultiRegion) then (error 'MultiRegion must be a boolean') else MultiRegion,
    },
  },
  setPendingWindowInDays(PendingWindowInDays): {
    Properties+::: {
      PendingWindowInDays:
        if !std.isNumber(PendingWindowInDays) then (error 'PendingWindowInDays must be an number')
        else if PendingWindowInDays < 7 then error ('PendingWindowInDays should be at least 7')
        else if PendingWindowInDays > 30 then error ('PendingWindowInDays should be not more than 30')
        else PendingWindowInDays,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
  setKeyId(KeyId): {
    Properties+::: {
      KeyId:
        if !std.isString(KeyId) then (error 'KeyId must be a string')
        else if std.isEmpty(KeyId) then (error 'KeyId must be not empty')
        else KeyId,
    },
  },
  setBypassPolicyLockoutSafetyCheck(BypassPolicyLockoutSafetyCheck): {
    Properties+::: {
      BypassPolicyLockoutSafetyCheck:
        if !std.isBoolean(BypassPolicyLockoutSafetyCheck) then (error 'BypassPolicyLockoutSafetyCheck must be a boolean') else BypassPolicyLockoutSafetyCheck,
    },
  },
  setRotationPeriodInDays(RotationPeriodInDays): {
    Properties+::: {
      RotationPeriodInDays:
        if !std.isNumber(RotationPeriodInDays) then (error 'RotationPeriodInDays must be an number')
        else if RotationPeriodInDays < 90 then error ('RotationPeriodInDays should be at least 90')
        else if RotationPeriodInDays > 2560 then error ('RotationPeriodInDays should be not more than 2560')
        else RotationPeriodInDays,
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
