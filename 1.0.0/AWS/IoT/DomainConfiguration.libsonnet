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
    Type: 'AWS::IoT::DomainConfiguration',
  },
  setDomainConfigurationName(DomainConfigurationName): {
    Properties+::: {
      DomainConfigurationName:
        if !std.isString(DomainConfigurationName) then (error 'DomainConfigurationName must be a string')
        else if std.isEmpty(DomainConfigurationName) then (error 'DomainConfigurationName must be not empty')
        else if std.length(DomainConfigurationName) < 1 then error ('DomainConfigurationName should have at least 1 characters')
        else if std.length(DomainConfigurationName) > 128 then error ('DomainConfigurationName should have not more than 128 characters')
        else DomainConfigurationName,
    },
  },
  setAuthorizerConfig(AuthorizerConfig): {
    Properties+::: {
      AuthorizerConfig:
        if !std.isObject(AuthorizerConfig) then (error 'AuthorizerConfig must be an object')
        else AuthorizerConfig,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 253 then error ('DomainName should have not more than 253 characters')
        else DomainName,
    },
  },
  setServerCertificateArns(ServerCertificateArns): {
    Properties+::: {
      ServerCertificateArns:
        if !std.isArray(ServerCertificateArns) then (error 'ServerCertificateArns must be an array')
        else if std.length(ServerCertificateArns) > 1 then error ('ServerCertificateArns cannot have more than 1 items')
        else ServerCertificateArns,
    },
  },
  pushServerCertificateArns(ServerCertificateArns): {
    Properties+::: {
      ServerCertificateArns+: ServerCertificateArns,
    },
  },
  setServiceType(ServiceType): {
    Properties+::: {
      ServiceType:
        if !std.isString(ServiceType) then (error 'ServiceType must be a string')
        else if std.isEmpty(ServiceType) then (error 'ServiceType must be not empty')
        else if ServiceType != 'DATA' && ServiceType != 'CREDENTIAL_PROVIDER' && ServiceType != 'JOBS' then (error "ServiceType should be 'DATA' or 'CREDENTIAL_PROVIDER' or 'JOBS'")
        else ServiceType,
    },
  },
  setValidationCertificateArn(ValidationCertificateArn): {
    Properties+::: {
      ValidationCertificateArn:
        if !std.isString(ValidationCertificateArn) then (error 'ValidationCertificateArn must be a string')
        else if std.isEmpty(ValidationCertificateArn) then (error 'ValidationCertificateArn must be not empty')
        else ValidationCertificateArn,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDomainConfigurationStatus(DomainConfigurationStatus): {
    Properties+::: {
      DomainConfigurationStatus:
        if !std.isString(DomainConfigurationStatus) then (error 'DomainConfigurationStatus must be a string')
        else if std.isEmpty(DomainConfigurationStatus) then (error 'DomainConfigurationStatus must be not empty')
        else if DomainConfigurationStatus != 'ENABLED' && DomainConfigurationStatus != 'DISABLED' then (error "DomainConfigurationStatus should be 'ENABLED' or 'DISABLED'")
        else DomainConfigurationStatus,
    },
  },
  setDomainType(DomainType): {
    Properties+::: {
      DomainType:
        if !std.isString(DomainType) then (error 'DomainType must be a string')
        else if std.isEmpty(DomainType) then (error 'DomainType must be not empty')
        else if DomainType != 'ENDPOINT' && DomainType != 'AWS_MANAGED' && DomainType != 'CUSTOMER_MANAGED' then (error "DomainType should be 'ENDPOINT' or 'AWS_MANAGED' or 'CUSTOMER_MANAGED'")
        else DomainType,
    },
  },
  setServerCertificateConfig(ServerCertificateConfig): {
    Properties+::: {
      ServerCertificateConfig:
        if !std.isObject(ServerCertificateConfig) then (error 'ServerCertificateConfig must be an object')
        else ServerCertificateConfig,
    },
  },
  setServerCertificates(ServerCertificates): {
    Properties+::: {
      ServerCertificates:
        if !std.isArray(ServerCertificates) then (error 'ServerCertificates must be an array')
        else ServerCertificates,
    },
  },
  pushServerCertificates(ServerCertificates): {
    Properties+::: {
      ServerCertificates+: ServerCertificates,
    },
  },
  setTlsConfig(TlsConfig): {
    Properties+::: {
      TlsConfig:
        if !std.isObject(TlsConfig) then (error 'TlsConfig must be an object')
        else TlsConfig,
    },
  },
  setAuthenticationType(AuthenticationType): {
    Properties+::: {
      AuthenticationType:
        if !std.isString(AuthenticationType) then (error 'AuthenticationType must be a string')
        else if std.isEmpty(AuthenticationType) then (error 'AuthenticationType must be not empty')
        else if AuthenticationType != 'AWS_X509' && AuthenticationType != 'CUSTOM_AUTH' && AuthenticationType != 'AWS_SIGV4' && AuthenticationType != 'CUSTOM_AUTH_X509' && AuthenticationType != 'DEFAULT' then (error "AuthenticationType should be 'AWS_X509' or 'CUSTOM_AUTH' or 'AWS_SIGV4' or 'CUSTOM_AUTH_X509' or 'DEFAULT'")
        else AuthenticationType,
    },
  },
  setApplicationProtocol(ApplicationProtocol): {
    Properties+::: {
      ApplicationProtocol:
        if !std.isString(ApplicationProtocol) then (error 'ApplicationProtocol must be a string')
        else if std.isEmpty(ApplicationProtocol) then (error 'ApplicationProtocol must be not empty')
        else if ApplicationProtocol != 'SECURE_MQTT' && ApplicationProtocol != 'MQTT_WSS' && ApplicationProtocol != 'HTTPS' && ApplicationProtocol != 'DEFAULT' then (error "ApplicationProtocol should be 'SECURE_MQTT' or 'MQTT_WSS' or 'HTTPS' or 'DEFAULT'")
        else ApplicationProtocol,
    },
  },
  setClientCertificateConfig(ClientCertificateConfig): {
    Properties+::: {
      ClientCertificateConfig:
        if !std.isObject(ClientCertificateConfig) then (error 'ClientCertificateConfig must be an object')
        else ClientCertificateConfig,
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
