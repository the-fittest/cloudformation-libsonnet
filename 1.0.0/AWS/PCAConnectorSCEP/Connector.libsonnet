{
  new(
    CertificateAuthorityArn,
  ): {
    local base = self,
    Properties: {
      CertificateAuthorityArn:
        if !std.isString(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be a string')
        else if std.isEmpty(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be not empty')
        else if std.length(CertificateAuthorityArn) < 5 then error ('CertificateAuthorityArn should have at least 5 characters')
        else if std.length(CertificateAuthorityArn) > 200 then error ('CertificateAuthorityArn should have not more than 200 characters')
        else CertificateAuthorityArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PCAConnectorSCEP::Connector',
  },
  setConnectorArn(ConnectorArn): {
    Properties+::: {
      ConnectorArn:
        if !std.isString(ConnectorArn) then (error 'ConnectorArn must be a string')
        else if std.isEmpty(ConnectorArn) then (error 'ConnectorArn must be not empty')
        else if std.length(ConnectorArn) < 5 then error ('ConnectorArn should have at least 5 characters')
        else if std.length(ConnectorArn) > 200 then error ('ConnectorArn should have not more than 200 characters')
        else ConnectorArn,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'GENERAL_PURPOSE' && Type != 'INTUNE' then (error "Type should be 'GENERAL_PURPOSE' or 'INTUNE'")
        else Type,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else if std.length(Endpoint) < 5 then error ('Endpoint should have at least 5 characters')
        else if std.length(Endpoint) > 200 then error ('Endpoint should have not more than 200 characters')
        else Endpoint,
    },
  },
  setMobileDeviceManagement(MobileDeviceManagement): {
    Properties+::: {
      MobileDeviceManagement:
        if !std.isObject(MobileDeviceManagement) then (error 'MobileDeviceManagement must be an object')
        else MobileDeviceManagement,
    },
  },
  setOpenIdConfiguration(OpenIdConfiguration): {
    Properties+::: {
      OpenIdConfiguration:
        if !std.isObject(OpenIdConfiguration) then (error 'OpenIdConfiguration must be an object')
        else OpenIdConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
