{
  new(
    As2Id,
    ProfileType,
  ): {
    local base = self,
    Properties: {
      As2Id:
        if !std.isString(As2Id) then (error 'As2Id must be a string')
        else if std.isEmpty(As2Id) then (error 'As2Id must be not empty')
        else if std.length(As2Id) < 1 then error ('As2Id should have at least 1 characters')
        else if std.length(As2Id) > 128 then error ('As2Id should have not more than 128 characters')
        else As2Id,
      ProfileType:
        if !std.isString(ProfileType) then (error 'ProfileType must be a string')
        else if std.isEmpty(ProfileType) then (error 'ProfileType must be not empty')
        else if ProfileType != 'LOCAL' && ProfileType != 'PARTNER' then (error "ProfileType should be 'LOCAL' or 'PARTNER'")
        else ProfileType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Profile',
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCertificateIds(CertificateIds): {
    Properties+::: {
      CertificateIds:
        if !std.isArray(CertificateIds) then (error 'CertificateIds must be an array')
        else CertificateIds,
    },
  },
  setCertificateIdsMixin(CertificateIds): {
    Properties+::: {
      CertificateIds+: CertificateIds,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setProfileId(ProfileId): {
    Properties+::: {
      ProfileId:
        if !std.isString(ProfileId) then (error 'ProfileId must be a string')
        else if std.isEmpty(ProfileId) then (error 'ProfileId must be not empty')
        else if std.length(ProfileId) < 19 then error ('ProfileId should have at least 19 characters')
        else if std.length(ProfileId) > 19 then error ('ProfileId should have not more than 19 characters')
        else ProfileId,
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
