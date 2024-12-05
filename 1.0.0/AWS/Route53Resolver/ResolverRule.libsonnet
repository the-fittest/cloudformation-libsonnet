{
  new(
    RuleType,
  ): {
    local base = self,
    Properties: {
      RuleType:
        if !std.isString(RuleType) then (error 'RuleType must be a string')
        else if std.isEmpty(RuleType) then (error 'RuleType must be not empty')
        else if RuleType != 'FORWARD' && RuleType != 'SYSTEM' && RuleType != 'RECURSIVE' && RuleType != 'DELEGATE' then (error "RuleType should be 'FORWARD' or 'SYSTEM' or 'RECURSIVE' or 'DELEGATE'")
        else RuleType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::ResolverRule',
  },
  setResolverEndpointId(ResolverEndpointId): {
    Properties+::: {
      ResolverEndpointId:
        if !std.isString(ResolverEndpointId) then (error 'ResolverEndpointId must be a string')
        else if std.isEmpty(ResolverEndpointId) then (error 'ResolverEndpointId must be not empty')
        else if std.length(ResolverEndpointId) < 1 then error ('ResolverEndpointId should have at least 1 characters')
        else if std.length(ResolverEndpointId) > 64 then error ('ResolverEndpointId should have not more than 64 characters')
        else ResolverEndpointId,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 256 then error ('DomainName should have not more than 256 characters')
        else DomainName,
    },
  },
  setResolverRuleId(ResolverRuleId): {
    Properties+::: {
      ResolverRuleId:
        if !std.isString(ResolverRuleId) then (error 'ResolverRuleId must be a string')
        else if std.isEmpty(ResolverRuleId) then (error 'ResolverRuleId must be not empty')
        else ResolverRuleId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setTargetIps(TargetIps): {
    Properties+::: {
      TargetIps:
        if !std.isArray(TargetIps) then (error 'TargetIps must be an array')
        else TargetIps,
    },
  },
  setTargetIpsMixin(TargetIps): {
    Properties+::: {
      TargetIps+: TargetIps,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
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
