{
  new(
    StackName,
    EntitlementName,
    ApplicationIdentifier,
  ): {
    local base = self,
    Properties: {
      StackName:
        if !std.isString(StackName) then (error 'StackName must be a string')
        else if std.isEmpty(StackName) then (error 'StackName must be not empty')
        else StackName,
      EntitlementName:
        if !std.isString(EntitlementName) then (error 'EntitlementName must be a string')
        else if std.isEmpty(EntitlementName) then (error 'EntitlementName must be not empty')
        else EntitlementName,
      ApplicationIdentifier:
        if !std.isString(ApplicationIdentifier) then (error 'ApplicationIdentifier must be a string')
        else if std.isEmpty(ApplicationIdentifier) then (error 'ApplicationIdentifier must be not empty')
        else ApplicationIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppStream::ApplicationEntitlementAssociation',
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
