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
    Type: 'AWS::ElasticLoadBalancingV2::TrustStoreRevocation',
  },
  setRevocationContents(RevocationContents): {
    Properties+::: {
      RevocationContents:
        if !std.isArray(RevocationContents) then (error 'RevocationContents must be an array')
        else RevocationContents,
    },
  },
  pushRevocationContents(RevocationContents): {
    Properties+::: {
      RevocationContents+: RevocationContents,
    },
  },
  setTrustStoreArn(TrustStoreArn): {
    Properties+::: {
      TrustStoreArn:
        if !std.isString(TrustStoreArn) then (error 'TrustStoreArn must be a string')
        else if std.isEmpty(TrustStoreArn) then (error 'TrustStoreArn must be not empty')
        else TrustStoreArn,
    },
  },
  setRevocationId(RevocationId): {
    Properties+::: {
      RevocationId:
        if !std.isNumber(RevocationId) then (error 'RevocationId must be an number')
        else RevocationId,
    },
  },
  setTrustStoreRevocations(TrustStoreRevocations): {
    Properties+::: {
      TrustStoreRevocations:
        if !std.isArray(TrustStoreRevocations) then (error 'TrustStoreRevocations must be an array')
        else TrustStoreRevocations,
    },
  },
  pushTrustStoreRevocations(TrustStoreRevocations): {
    Properties+::: {
      TrustStoreRevocations+: TrustStoreRevocations,
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
