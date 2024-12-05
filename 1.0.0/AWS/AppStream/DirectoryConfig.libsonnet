{
  new(
    DirectoryName,
    OrganizationalUnitDistinguishedNames,
    ServiceAccountCredentials,
  ): {
    local base = self,
    Properties: {
      DirectoryName:
        if !std.isString(DirectoryName) then (error 'DirectoryName must be a string')
        else if std.isEmpty(DirectoryName) then (error 'DirectoryName must be not empty')
        else DirectoryName,
      OrganizationalUnitDistinguishedNames:
        if !std.isArray(OrganizationalUnitDistinguishedNames) then (error 'OrganizationalUnitDistinguishedNames must be an array')
        else OrganizationalUnitDistinguishedNames,
      ServiceAccountCredentials:
        if !std.isObject(ServiceAccountCredentials) then (error 'ServiceAccountCredentials must be an object')
        else if !std.objectHas(ServiceAccountCredentials, 'AccountName') then (error ' have attribute AccountName')
        else if !std.objectHas(ServiceAccountCredentials, 'AccountPassword') then (error ' have attribute AccountPassword')
        else ServiceAccountCredentials,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppStream::DirectoryConfig',
  },
  setCertificateBasedAuthProperties(CertificateBasedAuthProperties): {
    Properties+::: {
      CertificateBasedAuthProperties:
        if !std.isObject(CertificateBasedAuthProperties) then (error 'CertificateBasedAuthProperties must be an object')
        else CertificateBasedAuthProperties,
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
