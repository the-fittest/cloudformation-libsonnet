{
  // AWS EC2 VerifiedAccessEndpoint
  VerifiedAccessEndpoint: {
    new(
      ApplicationDomain,
      AttachmentType,
      DomainCertificateArn,
      EndpointType,
      VerifiedAccessGroupId,
      EndpointDomainPrefix,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationDomain) : 'ApplicationDomain must be a string',
        ApplicationDomain: ApplicationDomain,
        assert std.isString(AttachmentType) : 'AttachmentType must be a string',
        AttachmentType: AttachmentType,
        assert std.isString(DomainCertificateArn) : 'DomainCertificateArn must be a string',
        DomainCertificateArn: DomainCertificateArn,
        assert std.isString(EndpointType) : 'EndpointType must be a string',
        EndpointType: EndpointType,
        assert std.isString(VerifiedAccessGroupId) : 'VerifiedAccessGroupId must be a string',
        VerifiedAccessGroupId: VerifiedAccessGroupId,
        assert std.isString(EndpointDomainPrefix) : 'EndpointDomainPrefix must be a string',
        EndpointDomainPrefix: EndpointDomainPrefix,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::VerifiedAccessEndpoint',
    },
    withVerifiedAccessEndpointId(VerifiedAccessEndpointId): {
      assert std.isString(VerifiedAccessEndpointId) : 'VerifiedAccessEndpointId must be a string',
      Properties+::: {
        VerifiedAccessEndpointId: VerifiedAccessEndpointId,
      },
    },
    withVerifiedAccessInstanceId(VerifiedAccessInstanceId): {
      assert std.isString(VerifiedAccessInstanceId) : 'VerifiedAccessInstanceId must be a string',
      Properties+::: {
        VerifiedAccessInstanceId: VerifiedAccessInstanceId,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withNetworkInterfaceOptions(NetworkInterfaceOptions): {
      assert std.isObject(NetworkInterfaceOptions) : 'NetworkInterfaceOptions must be a object',
      Properties+::: {
        NetworkInterfaceOptions: NetworkInterfaceOptions,
      },
    },
    withLoadBalancerOptions(LoadBalancerOptions): {
      assert std.isObject(LoadBalancerOptions) : 'LoadBalancerOptions must be a object',
      Properties+::: {
        LoadBalancerOptions: LoadBalancerOptions,
      },
    },
    withEndpointDomain(EndpointDomain): {
      assert std.isString(EndpointDomain) : 'EndpointDomain must be a string',
      Properties+::: {
        EndpointDomain: EndpointDomain,
      },
    },
    withDeviceValidationDomain(DeviceValidationDomain): {
      assert std.isString(DeviceValidationDomain) : 'DeviceValidationDomain must be a string',
      Properties+::: {
        DeviceValidationDomain: DeviceValidationDomain,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withLastUpdatedTime(LastUpdatedTime): {
      assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
      Properties+::: {
        LastUpdatedTime: LastUpdatedTime,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withPolicyDocument(PolicyDocument): {
      assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
      Properties+::: {
        PolicyDocument: PolicyDocument,
      },
    },
    withPolicyEnabled(PolicyEnabled): {
      assert std.isBoolean(PolicyEnabled) : 'PolicyEnabled must be a boolean',
      Properties+::: {
        PolicyEnabled: PolicyEnabled,
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
    withSseSpecification(SseSpecification): {
      assert std.isObject(SseSpecification) : 'SseSpecification must be a object',
      Properties+::: {
        SseSpecification: SseSpecification,
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
