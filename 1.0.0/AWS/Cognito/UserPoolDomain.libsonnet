{
  new(
    UserPoolId,
    Domain,
  ): {
    local base = self,
    Properties: {
      UserPoolId:
        if !std.isString(UserPoolId) then (error 'UserPoolId must be a string')
        else if std.isEmpty(UserPoolId) then (error 'UserPoolId must be not empty')
        else UserPoolId,
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else Domain,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolDomain',
  },
  setCloudFrontDistribution(CloudFrontDistribution): {
    Properties+::: {
      CloudFrontDistribution:
        if !std.isString(CloudFrontDistribution) then (error 'CloudFrontDistribution must be a string')
        else if std.isEmpty(CloudFrontDistribution) then (error 'CloudFrontDistribution must be not empty')
        else CloudFrontDistribution,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setManagedLoginVersion(ManagedLoginVersion): {
    Properties+::: {
      ManagedLoginVersion:
        if !std.isNumber(ManagedLoginVersion) then (error 'ManagedLoginVersion must be an number')
        else ManagedLoginVersion,
    },
  },
  setCustomDomainConfig(CustomDomainConfig): {
    Properties+::: {
      CustomDomainConfig:
        if !std.isObject(CustomDomainConfig) then (error 'CustomDomainConfig must be an object')
        else CustomDomainConfig,
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
