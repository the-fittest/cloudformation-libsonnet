{
  new(
    IpamId,
  ): {
    local base = self,
    Properties: {
      IpamId:
        if !std.isString(IpamId) then (error 'IpamId must be a string')
        else if std.isEmpty(IpamId) then (error 'IpamId must be not empty')
        else IpamId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::IPAMScope',
  },
  setIpamScopeId(IpamScopeId): {
    Properties+::: {
      IpamScopeId:
        if !std.isString(IpamScopeId) then (error 'IpamScopeId must be a string')
        else if std.isEmpty(IpamScopeId) then (error 'IpamScopeId must be not empty')
        else IpamScopeId,
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
  setIpamArn(IpamArn): {
    Properties+::: {
      IpamArn:
        if !std.isString(IpamArn) then (error 'IpamArn must be a string')
        else if std.isEmpty(IpamArn) then (error 'IpamArn must be not empty')
        else IpamArn,
    },
  },
  setIpamScopeType(IpamScopeType): {
    Properties+::: {
      IpamScopeType:
        if !std.isString(IpamScopeType) then (error 'IpamScopeType must be a string')
        else if std.isEmpty(IpamScopeType) then (error 'IpamScopeType must be not empty')
        else if IpamScopeType != 'public' && IpamScopeType != 'private' then (error "IpamScopeType should be 'public' or 'private'")
        else IpamScopeType,
    },
  },
  setIsDefault(IsDefault): {
    Properties+::: {
      IsDefault:
        if !std.isBoolean(IsDefault) then (error 'IsDefault must be a boolean') else IsDefault,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setPoolCount(PoolCount): {
    Properties+::: {
      PoolCount:
        if !std.isNumber(PoolCount) then (error 'PoolCount must be an number')
        else PoolCount,
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
