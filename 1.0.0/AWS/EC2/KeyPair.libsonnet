{
  new(
    KeyName,
  ): {
    local base = self,
    Properties: {
      KeyName:
        if !std.isString(KeyName) then (error 'KeyName must be a string')
        else if std.isEmpty(KeyName) then (error 'KeyName must be not empty')
        else KeyName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::KeyPair',
  },
  setKeyType(KeyType): {
    Properties+::: {
      KeyType:
        if !std.isString(KeyType) then (error 'KeyType must be a string')
        else if std.isEmpty(KeyType) then (error 'KeyType must be not empty')
        else if KeyType != 'rsa' && KeyType != 'ed25519' then (error "KeyType should be 'rsa' or 'ed25519'")
        else KeyType,
    },
  },
  setKeyFormat(KeyFormat): {
    Properties+::: {
      KeyFormat:
        if !std.isString(KeyFormat) then (error 'KeyFormat must be a string')
        else if std.isEmpty(KeyFormat) then (error 'KeyFormat must be not empty')
        else if KeyFormat != 'pem' && KeyFormat != 'ppk' then (error "KeyFormat should be 'pem' or 'ppk'")
        else KeyFormat,
    },
  },
  setPublicKeyMaterial(PublicKeyMaterial): {
    Properties+::: {
      PublicKeyMaterial:
        if !std.isString(PublicKeyMaterial) then (error 'PublicKeyMaterial must be a string')
        else if std.isEmpty(PublicKeyMaterial) then (error 'PublicKeyMaterial must be not empty')
        else PublicKeyMaterial,
    },
  },
  setKeyFingerprint(KeyFingerprint): {
    Properties+::: {
      KeyFingerprint:
        if !std.isString(KeyFingerprint) then (error 'KeyFingerprint must be a string')
        else if std.isEmpty(KeyFingerprint) then (error 'KeyFingerprint must be not empty')
        else KeyFingerprint,
    },
  },
  setKeyPairId(KeyPairId): {
    Properties+::: {
      KeyPairId:
        if !std.isString(KeyPairId) then (error 'KeyPairId must be a string')
        else if std.isEmpty(KeyPairId) then (error 'KeyPairId must be not empty')
        else KeyPairId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
