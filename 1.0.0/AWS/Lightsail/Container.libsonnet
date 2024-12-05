{
  new(
    ServiceName,
    Power,
    Scale,
  ): {
    local base = self,
    Properties: {
      ServiceName:
        if !std.isString(ServiceName) then (error 'ServiceName must be a string')
        else if std.isEmpty(ServiceName) then (error 'ServiceName must be not empty')
        else if std.length(ServiceName) < 1 then error ('ServiceName should have at least 1 characters')
        else if std.length(ServiceName) > 63 then error ('ServiceName should have not more than 63 characters')
        else ServiceName,
      Power:
        if !std.isString(Power) then (error 'Power must be a string')
        else if std.isEmpty(Power) then (error 'Power must be not empty')
        else Power,
      Scale:
        if !std.isNumber(Scale) then (error 'Scale must be an number')
        else if Scale < 1 then error ('Scale should be at least 1')
        else if Scale > 20 then error ('Scale should be not more than 20')
        else Scale,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Container',
  },
  setContainerArn(ContainerArn): {
    Properties+::: {
      ContainerArn:
        if !std.isString(ContainerArn) then (error 'ContainerArn must be a string')
        else if std.isEmpty(ContainerArn) then (error 'ContainerArn must be not empty')
        else ContainerArn,
    },
  },
  setPublicDomainNames(PublicDomainNames): {
    Properties+::: {
      PublicDomainNames:
        if !std.isArray(PublicDomainNames) then (error 'PublicDomainNames must be an array')
        else PublicDomainNames,
    },
  },
  setPublicDomainNamesMixin(PublicDomainNames): {
    Properties+::: {
      PublicDomainNames+: PublicDomainNames,
    },
  },
  setContainerServiceDeployment(ContainerServiceDeployment): {
    Properties+::: {
      ContainerServiceDeployment:
        if !std.isObject(ContainerServiceDeployment) then (error 'ContainerServiceDeployment must be an object')
        else ContainerServiceDeployment,
    },
  },
  setIsDisabled(IsDisabled): {
    Properties+::: {
      IsDisabled:
        if !std.isBoolean(IsDisabled) then (error 'IsDisabled must be a boolean') else IsDisabled,
    },
  },
  setPrivateRegistryAccess(PrivateRegistryAccess): {
    Properties+::: {
      PrivateRegistryAccess:
        if !std.isObject(PrivateRegistryAccess) then (error 'PrivateRegistryAccess must be an object')
        else PrivateRegistryAccess,
    },
  },
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else Url,
    },
  },
  setPrincipalArn(PrincipalArn): {
    Properties+::: {
      PrincipalArn:
        if !std.isString(PrincipalArn) then (error 'PrincipalArn must be a string')
        else if std.isEmpty(PrincipalArn) then (error 'PrincipalArn must be not empty')
        else PrincipalArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
