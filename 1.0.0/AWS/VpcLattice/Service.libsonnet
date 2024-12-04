{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VpcLattice::Service',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAuthType(AuthType): {
    assert std.isString(AuthType) : 'AuthType must be a string',
    assert AuthType == 'NONE' || AuthType == 'AWS_IAM' : "AuthType should be 'NONE' or 'AWS_IAM'",
    Properties+::: {
      AuthType: AuthType,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withDnsEntry(DnsEntry): {
    assert std.isObject(DnsEntry) : 'DnsEntry must be a object',
    Properties+::: {
      DnsEntry: DnsEntry,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withLastUpdatedAt(LastUpdatedAt): {
    assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
    Properties+::: {
      LastUpdatedAt: LastUpdatedAt,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'ACTIVE' || Status == 'CREATE_IN_PROGRESS' || Status == 'DELETE_IN_PROGRESS' || Status == 'CREATE_FAILED' || Status == 'DELETE_FAILED' : "Status should be 'ACTIVE' or 'CREATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'",
    Properties+::: {
      Status: Status,
    },
  },
  withCertificateArn(CertificateArn): {
    assert std.isString(CertificateArn) : 'CertificateArn must be a string',
    Properties+::: {
      CertificateArn: CertificateArn,
    },
  },
  withCustomDomainName(CustomDomainName): {
    assert std.isString(CustomDomainName) : 'CustomDomainName must be a string',
    Properties+::: {
      CustomDomainName: CustomDomainName,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
}
