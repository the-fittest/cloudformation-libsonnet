{
  new(
    ServerId,
    LocalProfileId,
    PartnerProfileId,
    BaseDirectory,
    AccessRole,
  ): {
    local base = self,
    Properties: {
      ServerId:
        if !std.isString(ServerId) then (error 'ServerId must be a string')
        else if std.isEmpty(ServerId) then (error 'ServerId must be not empty')
        else if std.length(ServerId) < 19 then error ('ServerId should have at least 19 characters')
        else if std.length(ServerId) > 19 then error ('ServerId should have not more than 19 characters')
        else ServerId,
      LocalProfileId:
        if !std.isString(LocalProfileId) then (error 'LocalProfileId must be a string')
        else if std.isEmpty(LocalProfileId) then (error 'LocalProfileId must be not empty')
        else if std.length(LocalProfileId) < 19 then error ('LocalProfileId should have at least 19 characters')
        else if std.length(LocalProfileId) > 19 then error ('LocalProfileId should have not more than 19 characters')
        else LocalProfileId,
      PartnerProfileId:
        if !std.isString(PartnerProfileId) then (error 'PartnerProfileId must be a string')
        else if std.isEmpty(PartnerProfileId) then (error 'PartnerProfileId must be not empty')
        else if std.length(PartnerProfileId) < 19 then error ('PartnerProfileId should have at least 19 characters')
        else if std.length(PartnerProfileId) > 19 then error ('PartnerProfileId should have not more than 19 characters')
        else PartnerProfileId,
      BaseDirectory:
        if !std.isString(BaseDirectory) then (error 'BaseDirectory must be a string')
        else if std.isEmpty(BaseDirectory) then (error 'BaseDirectory must be not empty')
        else if std.length(BaseDirectory) > 1024 then error ('BaseDirectory should have not more than 1024 characters')
        else BaseDirectory,
      AccessRole:
        if !std.isString(AccessRole) then (error 'AccessRole must be a string')
        else if std.isEmpty(AccessRole) then (error 'AccessRole must be not empty')
        else if std.length(AccessRole) < 20 then error ('AccessRole should have at least 20 characters')
        else if std.length(AccessRole) > 2048 then error ('AccessRole should have not more than 2048 characters')
        else AccessRole,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Agreement',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'INACTIVE' then (error "Status should be 'ACTIVE' or 'INACTIVE'")
        else Status,
    },
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
  setAgreementId(AgreementId): {
    Properties+::: {
      AgreementId:
        if !std.isString(AgreementId) then (error 'AgreementId must be a string')
        else if std.isEmpty(AgreementId) then (error 'AgreementId must be not empty')
        else if std.length(AgreementId) < 19 then error ('AgreementId should have at least 19 characters')
        else if std.length(AgreementId) > 19 then error ('AgreementId should have not more than 19 characters')
        else AgreementId,
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
