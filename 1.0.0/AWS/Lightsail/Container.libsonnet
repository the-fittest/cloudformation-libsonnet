{
  new(
    ServiceName,
    Power,
    Scale,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ServiceName) : 'ServiceName must be a string',
      ServiceName: ServiceName,
      assert std.isString(Power) : 'Power must be a string',
      Power: Power,
      assert std.isNumber(Scale) : 'Scale must be a number',
      Scale: Scale,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Container',
  },
  withContainerArn(ContainerArn): {
    assert std.isString(ContainerArn) : 'ContainerArn must be a string',
    Properties+::: {
      ContainerArn: ContainerArn,
    },
  },
  withPublicDomainNames(PublicDomainNames): {
    Properties+::: {
      PublicDomainNames: (if std.isArray(PublicDomainNames) then PublicDomainNames else [PublicDomainNames]),
    },
  },
  withPublicDomainNamesMixin(PublicDomainNames): {
    Properties+::: {
      PublicDomainNames+: (if std.isArray(PublicDomainNames) then PublicDomainNames else [PublicDomainNames]),
    },
  },
  withContainerServiceDeployment(ContainerServiceDeployment): {
    assert std.isObject(ContainerServiceDeployment) : 'ContainerServiceDeployment must be a object',
    Properties+::: {
      ContainerServiceDeployment: ContainerServiceDeployment,
    },
  },
  withIsDisabled(IsDisabled): {
    assert std.isBoolean(IsDisabled) : 'IsDisabled must be a boolean',
    Properties+::: {
      IsDisabled: IsDisabled,
    },
  },
  withPrivateRegistryAccess(PrivateRegistryAccess): {
    assert std.isObject(PrivateRegistryAccess) : 'PrivateRegistryAccess must be a object',
    Properties+::: {
      PrivateRegistryAccess: PrivateRegistryAccess,
    },
  },
  withUrl(Url): {
    assert std.isString(Url) : 'Url must be a string',
    Properties+::: {
      Url: Url,
    },
  },
  withPrincipalArn(PrincipalArn): {
    assert std.isString(PrincipalArn) : 'PrincipalArn must be a string',
    Properties+::: {
      PrincipalArn: PrincipalArn,
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
