{
  new(
    DomainName,
    CertificateArn,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 253 then error ('DomainName should have not more than 253 characters')
        else DomainName,
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else if std.length(CertificateArn) < 3 then error ('CertificateArn should have at least 3 characters')
        else if std.length(CertificateArn) > 2048 then error ('CertificateArn should have not more than 2048 characters')
        else CertificateArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::DomainName',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setAppSyncDomainName(AppSyncDomainName): {
    Properties+::: {
      AppSyncDomainName:
        if !std.isString(AppSyncDomainName) then (error 'AppSyncDomainName must be a string')
        else if std.isEmpty(AppSyncDomainName) then (error 'AppSyncDomainName must be not empty')
        else AppSyncDomainName,
    },
  },
  setHostedZoneId(HostedZoneId): {
    Properties+::: {
      HostedZoneId:
        if !std.isString(HostedZoneId) then (error 'HostedZoneId must be a string')
        else if std.isEmpty(HostedZoneId) then (error 'HostedZoneId must be not empty')
        else HostedZoneId,
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
