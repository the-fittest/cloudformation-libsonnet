{
  new(
    CertificateArn,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else if std.length(CertificateArn) < 1 then error ('CertificateArn should have at least 1 characters')
        else if std.length(CertificateArn) > 1283 then error ('CertificateArn should have not more than 1283 characters')
        else CertificateArn,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 1283 then error ('RoleArn should have not more than 1283 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::EnclaveCertificateIamRoleAssociation',
  },
  setCertificateS3BucketName(CertificateS3BucketName): {
    Properties+::: {
      CertificateS3BucketName:
        if !std.isString(CertificateS3BucketName) then (error 'CertificateS3BucketName must be a string')
        else if std.isEmpty(CertificateS3BucketName) then (error 'CertificateS3BucketName must be not empty')
        else CertificateS3BucketName,
    },
  },
  setCertificateS3ObjectKey(CertificateS3ObjectKey): {
    Properties+::: {
      CertificateS3ObjectKey:
        if !std.isString(CertificateS3ObjectKey) then (error 'CertificateS3ObjectKey must be a string')
        else if std.isEmpty(CertificateS3ObjectKey) then (error 'CertificateS3ObjectKey must be not empty')
        else CertificateS3ObjectKey,
    },
  },
  setEncryptionKmsKeyId(EncryptionKmsKeyId): {
    Properties+::: {
      EncryptionKmsKeyId:
        if !std.isString(EncryptionKmsKeyId) then (error 'EncryptionKmsKeyId must be a string')
        else if std.isEmpty(EncryptionKmsKeyId) then (error 'EncryptionKmsKeyId must be not empty')
        else EncryptionKmsKeyId,
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
