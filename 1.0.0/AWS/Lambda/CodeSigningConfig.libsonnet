{
  new(
    AllowedPublishers,
  ): {
    local base = self,
    Properties: {
      AllowedPublishers:
        if !std.isObject(AllowedPublishers) then (error 'AllowedPublishers must be an object')
        else if !std.objectHas(AllowedPublishers, 'SigningProfileVersionArns') then (error ' have attribute SigningProfileVersionArns')
        else AllowedPublishers,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::CodeSigningConfig',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setCodeSigningPolicies(CodeSigningPolicies): {
    Properties+::: {
      CodeSigningPolicies:
        if !std.isObject(CodeSigningPolicies) then (error 'CodeSigningPolicies must be an object')
        else if !std.objectHas(CodeSigningPolicies, 'UntrustedArtifactOnDeployment') then (error ' have attribute UntrustedArtifactOnDeployment')
        else CodeSigningPolicies,
    },
  },
  setCodeSigningConfigId(CodeSigningConfigId): {
    Properties+::: {
      CodeSigningConfigId:
        if !std.isString(CodeSigningConfigId) then (error 'CodeSigningConfigId must be a string')
        else if std.isEmpty(CodeSigningConfigId) then (error 'CodeSigningConfigId must be not empty')
        else CodeSigningConfigId,
    },
  },
  setCodeSigningConfigArn(CodeSigningConfigArn): {
    Properties+::: {
      CodeSigningConfigArn:
        if !std.isString(CodeSigningConfigArn) then (error 'CodeSigningConfigArn must be a string')
        else if std.isEmpty(CodeSigningConfigArn) then (error 'CodeSigningConfigArn must be not empty')
        else CodeSigningConfigArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
