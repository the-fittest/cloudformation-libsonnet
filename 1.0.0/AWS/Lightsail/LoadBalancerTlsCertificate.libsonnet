{
  new(
    LoadBalancerName,
    CertificateName,
    CertificateDomainName,
  ): {
    local base = self,
    Properties: {
      LoadBalancerName:
        if !std.isString(LoadBalancerName) then (error 'LoadBalancerName must be a string')
        else if std.isEmpty(LoadBalancerName) then (error 'LoadBalancerName must be not empty')
        else LoadBalancerName,
      CertificateName:
        if !std.isString(CertificateName) then (error 'CertificateName must be a string')
        else if std.isEmpty(CertificateName) then (error 'CertificateName must be not empty')
        else CertificateName,
      CertificateDomainName:
        if !std.isString(CertificateDomainName) then (error 'CertificateDomainName must be a string')
        else if std.isEmpty(CertificateDomainName) then (error 'CertificateDomainName must be not empty')
        else CertificateDomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::LoadBalancerTlsCertificate',
  },
  setCertificateAlternativeNames(CertificateAlternativeNames): {
    Properties+::: {
      CertificateAlternativeNames:
        if !std.isArray(CertificateAlternativeNames) then (error 'CertificateAlternativeNames must be an array')
        else CertificateAlternativeNames,
    },
  },
  pushCertificateAlternativeNames(CertificateAlternativeNames): {
    Properties+::: {
      CertificateAlternativeNames+: CertificateAlternativeNames,
    },
  },
  setLoadBalancerTlsCertificateArn(LoadBalancerTlsCertificateArn): {
    Properties+::: {
      LoadBalancerTlsCertificateArn:
        if !std.isString(LoadBalancerTlsCertificateArn) then (error 'LoadBalancerTlsCertificateArn must be a string')
        else if std.isEmpty(LoadBalancerTlsCertificateArn) then (error 'LoadBalancerTlsCertificateArn must be not empty')
        else LoadBalancerTlsCertificateArn,
    },
  },
  setIsAttached(IsAttached): {
    Properties+::: {
      IsAttached:
        if !std.isBoolean(IsAttached) then (error 'IsAttached must be a boolean') else IsAttached,
    },
  },
  setHttpsRedirectionEnabled(HttpsRedirectionEnabled): {
    Properties+::: {
      HttpsRedirectionEnabled:
        if !std.isBoolean(HttpsRedirectionEnabled) then (error 'HttpsRedirectionEnabled must be a boolean') else HttpsRedirectionEnabled,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
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
