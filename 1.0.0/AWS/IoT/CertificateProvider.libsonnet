{
  new(
    LambdaFunctionArn,
    AccountDefaultForOperations,
  ): {
    local base = self,
    Properties: {
      LambdaFunctionArn:
        if !std.isString(LambdaFunctionArn) then (error 'LambdaFunctionArn must be a string')
        else if std.isEmpty(LambdaFunctionArn) then (error 'LambdaFunctionArn must be not empty')
        else if std.length(LambdaFunctionArn) < 1 then error ('LambdaFunctionArn should have at least 1 characters')
        else if std.length(LambdaFunctionArn) > 170 then error ('LambdaFunctionArn should have not more than 170 characters')
        else LambdaFunctionArn,
      AccountDefaultForOperations:
        if !std.isArray(AccountDefaultForOperations) then (error 'AccountDefaultForOperations must be an array')
        else if std.length(AccountDefaultForOperations) < 1 then error ('AccountDefaultForOperations cannot have less than 1 items')
        else if std.length(AccountDefaultForOperations) > 1 then error ('AccountDefaultForOperations cannot have more than 1 items')
        else AccountDefaultForOperations,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::CertificateProvider',
  },
  setCertificateProviderName(CertificateProviderName): {
    Properties+::: {
      CertificateProviderName:
        if !std.isString(CertificateProviderName) then (error 'CertificateProviderName must be a string')
        else if std.isEmpty(CertificateProviderName) then (error 'CertificateProviderName must be not empty')
        else if std.length(CertificateProviderName) < 1 then error ('CertificateProviderName should have at least 1 characters')
        else if std.length(CertificateProviderName) > 128 then error ('CertificateProviderName should have not more than 128 characters')
        else CertificateProviderName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
