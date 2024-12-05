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
    Type: 'AWS::VpcLattice::Service',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setAuthType(AuthType): {
    Properties+::: {
      AuthType:
        if !std.isString(AuthType) then (error 'AuthType must be a string')
        else if std.isEmpty(AuthType) then (error 'AuthType must be not empty')
        else if AuthType != 'NONE' && AuthType != 'AWS_IAM' then (error "AuthType should be 'NONE' or 'AWS_IAM'")
        else AuthType,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDnsEntry(DnsEntry): {
    Properties+::: {
      DnsEntry:
        if !std.isObject(DnsEntry) then (error 'DnsEntry must be an object')
        else DnsEntry,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 21 then error ('Id should have at least 21 characters')
        else if std.length(Id) > 21 then error ('Id should have not more than 21 characters')
        else Id,
    },
  },
  setLastUpdatedAt(LastUpdatedAt): {
    Properties+::: {
      LastUpdatedAt:
        if !std.isString(LastUpdatedAt) then (error 'LastUpdatedAt must be a string')
        else if std.isEmpty(LastUpdatedAt) then (error 'LastUpdatedAt must be not empty')
        else LastUpdatedAt,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 40 then error ('Name should have not more than 40 characters')
        else Name,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'CREATE_IN_PROGRESS' && Status != 'DELETE_IN_PROGRESS' && Status != 'CREATE_FAILED' && Status != 'DELETE_FAILED' then (error "Status should be 'ACTIVE' or 'CREATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'")
        else Status,
    },
  },
  setCertificateArn(CertificateArn): {
    Properties+::: {
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else if std.length(CertificateArn) > 2048 then error ('CertificateArn should have not more than 2048 characters')
        else CertificateArn,
    },
  },
  setCustomDomainName(CustomDomainName): {
    Properties+::: {
      CustomDomainName:
        if !std.isString(CustomDomainName) then (error 'CustomDomainName must be a string')
        else if std.isEmpty(CustomDomainName) then (error 'CustomDomainName must be not empty')
        else if std.length(CustomDomainName) < 3 then error ('CustomDomainName should have at least 3 characters')
        else if std.length(CustomDomainName) > 255 then error ('CustomDomainName should have not more than 255 characters')
        else CustomDomainName,
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
