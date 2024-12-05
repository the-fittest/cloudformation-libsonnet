{
  new(
    ClusterName,
    RoleArn,
    Namespace,
    ServiceAccount,
  ): {
    local base = self,
    Properties: {
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else ClusterName,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      Namespace:
        if !std.isString(Namespace) then (error 'Namespace must be a string')
        else if std.isEmpty(Namespace) then (error 'Namespace must be not empty')
        else Namespace,
      ServiceAccount:
        if !std.isString(ServiceAccount) then (error 'ServiceAccount must be a string')
        else if std.isEmpty(ServiceAccount) then (error 'ServiceAccount must be not empty')
        else ServiceAccount,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EKS::PodIdentityAssociation',
  },
  setAssociationArn(AssociationArn): {
    Properties+::: {
      AssociationArn:
        if !std.isString(AssociationArn) then (error 'AssociationArn must be a string')
        else if std.isEmpty(AssociationArn) then (error 'AssociationArn must be not empty')
        else AssociationArn,
    },
  },
  setAssociationId(AssociationId): {
    Properties+::: {
      AssociationId:
        if !std.isString(AssociationId) then (error 'AssociationId must be a string')
        else if std.isEmpty(AssociationId) then (error 'AssociationId must be not empty')
        else if std.length(AssociationId) < 1 then error ('AssociationId should have at least 1 characters')
        else AssociationId,
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
