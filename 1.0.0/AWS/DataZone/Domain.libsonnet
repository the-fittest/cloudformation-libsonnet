{
  new(
    DomainExecutionRole,
    Name,
  ): {
    local base = self,
    Properties: {
      DomainExecutionRole:
        if !std.isString(DomainExecutionRole) then (error 'DomainExecutionRole must be a string')
        else if std.isEmpty(DomainExecutionRole) then (error 'DomainExecutionRole must be not empty')
        else DomainExecutionRole,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::Domain',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setKmsKeyIdentifier(KmsKeyIdentifier): {
    Properties+::: {
      KmsKeyIdentifier:
        if !std.isString(KmsKeyIdentifier) then (error 'KmsKeyIdentifier must be a string')
        else if std.isEmpty(KmsKeyIdentifier) then (error 'KmsKeyIdentifier must be not empty')
        else if std.length(KmsKeyIdentifier) < 1 then error ('KmsKeyIdentifier should have at least 1 characters')
        else if std.length(KmsKeyIdentifier) > 1024 then error ('KmsKeyIdentifier should have not more than 1024 characters')
        else KmsKeyIdentifier,
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
  setManagedAccountId(ManagedAccountId): {
    Properties+::: {
      ManagedAccountId:
        if !std.isString(ManagedAccountId) then (error 'ManagedAccountId must be a string')
        else if std.isEmpty(ManagedAccountId) then (error 'ManagedAccountId must be not empty')
        else ManagedAccountId,
    },
  },
  setPortalUrl(PortalUrl): {
    Properties+::: {
      PortalUrl:
        if !std.isString(PortalUrl) then (error 'PortalUrl must be a string')
        else if std.isEmpty(PortalUrl) then (error 'PortalUrl must be not empty')
        else PortalUrl,
    },
  },
  setSingleSignOn(SingleSignOn): {
    Properties+::: {
      SingleSignOn:
        if !std.isObject(SingleSignOn) then (error 'SingleSignOn must be an object')
        else SingleSignOn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'AVAILABLE' && Status != 'CREATION_FAILED' && Status != 'DELETING' && Status != 'DELETED' && Status != 'DELETION_FAILED' then (error "Status should be 'CREATING' or 'AVAILABLE' or 'CREATION_FAILED' or 'DELETING' or 'DELETED' or 'DELETION_FAILED'")
        else Status,
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
