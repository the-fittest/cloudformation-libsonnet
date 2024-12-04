{
  // AWS Lightsail LoadBalancerTlsCertificate
  LoadBalancerTlsCertificate: {
    new(
      LoadBalancerName,
      CertificateName,
      CertificateDomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LoadBalancerName) : 'LoadBalancerName must be a string',
        LoadBalancerName: LoadBalancerName,
        assert std.isString(CertificateName) : 'CertificateName must be a string',
        CertificateName: CertificateName,
        assert std.isString(CertificateDomainName) : 'CertificateDomainName must be a string',
        CertificateDomainName: CertificateDomainName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Lightsail::LoadBalancerTlsCertificate',
    },
    withCertificateAlternativeNames(CertificateAlternativeNames): {
      Properties+::: {
        CertificateAlternativeNames: (if std.isArray(CertificateAlternativeNames) then CertificateAlternativeNames else [CertificateAlternativeNames]),
      },
    },
    withCertificateAlternativeNamesMixin(CertificateAlternativeNames): {
      Properties+::: {
        CertificateAlternativeNames+: (if std.isArray(CertificateAlternativeNames) then CertificateAlternativeNames else [CertificateAlternativeNames]),
      },
    },
    withLoadBalancerTlsCertificateArn(LoadBalancerTlsCertificateArn): {
      assert std.isString(LoadBalancerTlsCertificateArn) : 'LoadBalancerTlsCertificateArn must be a string',
      Properties+::: {
        LoadBalancerTlsCertificateArn: LoadBalancerTlsCertificateArn,
      },
    },
    withIsAttached(IsAttached): {
      assert std.isBoolean(IsAttached) : 'IsAttached must be a boolean',
      Properties+::: {
        IsAttached: IsAttached,
      },
    },
    withHttpsRedirectionEnabled(HttpsRedirectionEnabled): {
      assert std.isBoolean(HttpsRedirectionEnabled) : 'HttpsRedirectionEnabled must be a boolean',
      Properties+::: {
        HttpsRedirectionEnabled: HttpsRedirectionEnabled,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
