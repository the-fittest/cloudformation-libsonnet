{
  new(
    ResourceId,
    AutodefinedReverseFlag,
  ): {
    local base = self,
    Properties: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else if std.length(ResourceId) < 1 then error ('ResourceId should have at least 1 characters')
        else if std.length(ResourceId) > 64 then error ('ResourceId should have not more than 64 characters')
        else ResourceId,
      AutodefinedReverseFlag:
        if !std.isString(AutodefinedReverseFlag) then (error 'AutodefinedReverseFlag must be a string')
        else if std.isEmpty(AutodefinedReverseFlag) then (error 'AutodefinedReverseFlag must be not empty')
        else if AutodefinedReverseFlag != 'DISABLE' then (error "AutodefinedReverseFlag should be 'DISABLE'")
        else AutodefinedReverseFlag,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::ResolverConfig',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 64 then error ('Id should have not more than 64 characters')
        else Id,
    },
  },
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else if std.length(OwnerId) < 12 then error ('OwnerId should have at least 12 characters')
        else if std.length(OwnerId) > 32 then error ('OwnerId should have not more than 32 characters')
        else OwnerId,
    },
  },
  setAutodefinedReverse(AutodefinedReverse): {
    Properties+::: {
      AutodefinedReverse:
        if !std.isString(AutodefinedReverse) then (error 'AutodefinedReverse must be a string')
        else if std.isEmpty(AutodefinedReverse) then (error 'AutodefinedReverse must be not empty')
        else if AutodefinedReverse != 'ENABLING' && AutodefinedReverse != 'ENABLED' && AutodefinedReverse != 'DISABLING' && AutodefinedReverse != 'DISABLED' then (error "AutodefinedReverse should be 'ENABLING' or 'ENABLED' or 'DISABLING' or 'DISABLED'")
        else AutodefinedReverse,
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
