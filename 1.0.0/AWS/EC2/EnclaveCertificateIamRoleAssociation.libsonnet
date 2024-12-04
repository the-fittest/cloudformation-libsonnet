{
  // AWS EC2 EnclaveCertificateIamRoleAssociation
  EnclaveCertificateIamRoleAssociation: {
    new(
      CertificateArn,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CertificateArn) : 'CertificateArn must be a string',
        CertificateArn: CertificateArn,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::EnclaveCertificateIamRoleAssociation',
    },
    withCertificateS3BucketName(CertificateS3BucketName): {
      assert std.isString(CertificateS3BucketName) : 'CertificateS3BucketName must be a string',
      Properties+::: {
        CertificateS3BucketName: CertificateS3BucketName,
      },
    },
    withCertificateS3ObjectKey(CertificateS3ObjectKey): {
      assert std.isString(CertificateS3ObjectKey) : 'CertificateS3ObjectKey must be a string',
      Properties+::: {
        CertificateS3ObjectKey: CertificateS3ObjectKey,
      },
    },
    withEncryptionKmsKeyId(EncryptionKmsKeyId): {
      assert std.isString(EncryptionKmsKeyId) : 'EncryptionKmsKeyId must be a string',
      Properties+::: {
        EncryptionKmsKeyId: EncryptionKmsKeyId,
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
