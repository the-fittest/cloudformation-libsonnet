{
  new(
    ObjectLambdaAccessPoint,
    PolicyDocument,
  ): {
    local base = self,
    Properties: {
      ObjectLambdaAccessPoint:
        if !std.isString(ObjectLambdaAccessPoint) then (error 'ObjectLambdaAccessPoint must be a string')
        else if std.isEmpty(ObjectLambdaAccessPoint) then (error 'ObjectLambdaAccessPoint must be not empty')
        else if std.length(ObjectLambdaAccessPoint) < 3 then error ('ObjectLambdaAccessPoint should have at least 3 characters')
        else if std.length(ObjectLambdaAccessPoint) > 45 then error ('ObjectLambdaAccessPoint should have not more than 45 characters')
        else ObjectLambdaAccessPoint,
      PolicyDocument:
        if !std.isObject(PolicyDocument) then (error 'PolicyDocument must be an object')
        else PolicyDocument,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3ObjectLambda::AccessPointPolicy',
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
