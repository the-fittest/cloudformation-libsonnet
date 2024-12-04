{
  // AWS EC2 CustomerGateway
  CustomerGateway: {
    new(
      IpAddress,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IpAddress) : 'IpAddress must be a string',
        IpAddress: IpAddress,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::CustomerGateway',
    },
    withCustomerGatewayId(CustomerGatewayId): {
      assert std.isString(CustomerGatewayId) : 'CustomerGatewayId must be a string',
      Properties+::: {
        CustomerGatewayId: CustomerGatewayId,
      },
    },
    withBgpAsnExtended(BgpAsnExtended): {
      assert std.isNumber(BgpAsnExtended) : 'BgpAsnExtended must be a number',
      Properties+::: {
        BgpAsnExtended: BgpAsnExtended,
      },
    },
    withBgpAsn(BgpAsn): {
      assert std.isNumber(BgpAsn) : 'BgpAsn must be a number',
      Properties+::: {
        BgpAsn: BgpAsn,
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
    withCertificateArn(CertificateArn): {
      assert std.isString(CertificateArn) : 'CertificateArn must be a string',
      Properties+::: {
        CertificateArn: CertificateArn,
      },
    },
    withDeviceName(DeviceName): {
      assert std.isString(DeviceName) : 'DeviceName must be a string',
      Properties+::: {
        DeviceName: DeviceName,
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
