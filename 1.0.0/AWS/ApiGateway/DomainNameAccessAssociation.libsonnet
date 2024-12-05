{
  new(
    DomainNameArn,
    AccessAssociationSource,
    AccessAssociationSourceType,
  ): {
    local base = self,
    Properties: {
      DomainNameArn:
        if !std.isString(DomainNameArn) then (error 'DomainNameArn must be a string')
        else if std.isEmpty(DomainNameArn) then (error 'DomainNameArn must be not empty')
        else DomainNameArn,
      AccessAssociationSource:
        if !std.isString(AccessAssociationSource) then (error 'AccessAssociationSource must be a string')
        else if std.isEmpty(AccessAssociationSource) then (error 'AccessAssociationSource must be not empty')
        else AccessAssociationSource,
      AccessAssociationSourceType:
        if !std.isString(AccessAssociationSourceType) then (error 'AccessAssociationSourceType must be a string')
        else if std.isEmpty(AccessAssociationSourceType) then (error 'AccessAssociationSourceType must be not empty')
        else if AccessAssociationSourceType != 'VPCE' then (error "AccessAssociationSourceType should be 'VPCE'")
        else AccessAssociationSourceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::DomainNameAccessAssociation',
  },
  setDomainNameAccessAssociationArn(DomainNameAccessAssociationArn): {
    Properties+::: {
      DomainNameAccessAssociationArn:
        if !std.isString(DomainNameAccessAssociationArn) then (error 'DomainNameAccessAssociationArn must be a string')
        else if std.isEmpty(DomainNameAccessAssociationArn) then (error 'DomainNameAccessAssociationArn must be not empty')
        else DomainNameAccessAssociationArn,
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
