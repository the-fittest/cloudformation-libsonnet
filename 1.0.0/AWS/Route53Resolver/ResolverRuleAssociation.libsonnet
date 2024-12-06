{
  new(
    VPCId,
    ResolverRuleId,
  ): {
    local base = self,
    Properties: {
      VPCId:
        if !std.isString(VPCId) then (error 'VPCId must be a string')
        else if std.isEmpty(VPCId) then (error 'VPCId must be not empty')
        else VPCId,
      ResolverRuleId:
        if !std.isString(ResolverRuleId) then (error 'ResolverRuleId must be a string')
        else if std.isEmpty(ResolverRuleId) then (error 'ResolverRuleId must be not empty')
        else ResolverRuleId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::ResolverRuleAssociation',
  },
  setResolverRuleAssociationId(ResolverRuleAssociationId): {
    Properties+::: {
      ResolverRuleAssociationId:
        if !std.isString(ResolverRuleAssociationId) then (error 'ResolverRuleAssociationId must be a string')
        else if std.isEmpty(ResolverRuleAssociationId) then (error 'ResolverRuleAssociationId must be not empty')
        else ResolverRuleAssociationId,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
