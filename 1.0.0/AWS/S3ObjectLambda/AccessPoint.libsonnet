{
  new(
    ObjectLambdaConfiguration,
  ): {
    local base = self,
    Properties: {
      ObjectLambdaConfiguration:
        if !std.isObject(ObjectLambdaConfiguration) then (error 'ObjectLambdaConfiguration must be an object')
        else if !std.objectHas(ObjectLambdaConfiguration, 'SupportingAccessPoint') then (error ' have attribute SupportingAccessPoint')
        else if !std.objectHas(ObjectLambdaConfiguration, 'TransformationConfigurations') then (error ' have attribute TransformationConfigurations')
        else ObjectLambdaConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3ObjectLambda::AccessPoint',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 45 then error ('Name should have not more than 45 characters')
        else Name,
    },
  },
  setAlias(Alias): {
    Properties+::: {
      Alias:
        if !std.isObject(Alias) then (error 'Alias must be an object')
        else if !std.objectHas(Alias, 'Value') then (error ' have attribute Value')
        else Alias,
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
  setCreationDate(CreationDate): {
    Properties+::: {
      CreationDate:
        if !std.isString(CreationDate) then (error 'CreationDate must be a string')
        else if std.isEmpty(CreationDate) then (error 'CreationDate must be not empty')
        else CreationDate,
    },
  },
  setPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
    Properties+::: {
      PublicAccessBlockConfiguration:
        if !std.isObject(PublicAccessBlockConfiguration) then (error 'PublicAccessBlockConfiguration must be an object')
        else PublicAccessBlockConfiguration,
    },
  },
  setPolicyStatus(PolicyStatus): {
    Properties+::: {
      PolicyStatus:
        if !std.isObject(PolicyStatus) then (error 'PolicyStatus must be an object')
        else PolicyStatus,
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
