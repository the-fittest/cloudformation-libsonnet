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
    Type: 'AWS::ApiGateway::DomainNameV2',
  },
  setCertificateArn(CertificateArn): {
    Properties+::: {
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else CertificateArn,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else DomainName,
    },
  },
  setEndpointConfiguration(EndpointConfiguration): {
    Properties+::: {
      EndpointConfiguration:
        if !std.isObject(EndpointConfiguration) then (error 'EndpointConfiguration must be an object')
        else EndpointConfiguration,
    },
  },
  setSecurityPolicy(SecurityPolicy): {
    Properties+::: {
      SecurityPolicy:
        if !std.isString(SecurityPolicy) then (error 'SecurityPolicy must be a string')
        else if std.isEmpty(SecurityPolicy) then (error 'SecurityPolicy must be not empty')
        else SecurityPolicy,
    },
  },
  setPolicy(Policy): {
    Properties+::: {
      Policy: Policy,
    },
  },
  setManagementPolicy(ManagementPolicy): {
    Properties+::: {
      ManagementPolicy: ManagementPolicy,
    },
  },
  setDomainNameId(DomainNameId): {
    Properties+::: {
      DomainNameId:
        if !std.isString(DomainNameId) then (error 'DomainNameId must be a string')
        else if std.isEmpty(DomainNameId) then (error 'DomainNameId must be not empty')
        else DomainNameId,
    },
  },
  setDomainNameArn(DomainNameArn): {
    Properties+::: {
      DomainNameArn:
        if !std.isString(DomainNameArn) then (error 'DomainNameArn must be a string')
        else if std.isEmpty(DomainNameArn) then (error 'DomainNameArn must be not empty')
        else DomainNameArn,
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
