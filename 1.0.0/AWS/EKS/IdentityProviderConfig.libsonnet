{
  new(
    Type,
    ClusterName,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'oidc' then (error "Type should be 'oidc'")
        else Type,
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else ClusterName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::IdentityProviderConfig',
  },
  setIdentityProviderConfigName(IdentityProviderConfigName): {
    Properties+::: {
      IdentityProviderConfigName:
        if !std.isString(IdentityProviderConfigName) then (error 'IdentityProviderConfigName must be a string')
        else if std.isEmpty(IdentityProviderConfigName) then (error 'IdentityProviderConfigName must be not empty')
        else IdentityProviderConfigName,
    },
  },
  setOidc(Oidc): {
    Properties+::: {
      Oidc:
        if !std.isObject(Oidc) then (error 'Oidc must be an object')
        else if !std.objectHas(Oidc, 'ClientId') then (error ' have attribute ClientId')
        else if !std.objectHas(Oidc, 'IssuerUrl') then (error ' have attribute IssuerUrl')
        else Oidc,
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
  setIdentityProviderConfigArn(IdentityProviderConfigArn): {
    Properties+::: {
      IdentityProviderConfigArn:
        if !std.isString(IdentityProviderConfigArn) then (error 'IdentityProviderConfigArn must be a string')
        else if std.isEmpty(IdentityProviderConfigArn) then (error 'IdentityProviderConfigArn must be not empty')
        else IdentityProviderConfigArn,
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
