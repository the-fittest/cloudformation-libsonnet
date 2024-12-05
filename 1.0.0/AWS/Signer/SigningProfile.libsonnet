{
  new(
    PlatformId,
  ): {
    local base = self,
    Properties: {
      PlatformId:
        if !std.isString(PlatformId) then (error 'PlatformId must be a string')
        else if std.isEmpty(PlatformId) then (error 'PlatformId must be not empty')
        else if PlatformId != 'AWSLambda-SHA384-ECDSA' && PlatformId != 'Notation-OCI-SHA384-ECDSA' then (error "PlatformId should be 'AWSLambda-SHA384-ECDSA' or 'Notation-OCI-SHA384-ECDSA'")
        else PlatformId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Signer::SigningProfile',
  },
  setProfileName(ProfileName): {
    Properties+::: {
      ProfileName:
        if !std.isString(ProfileName) then (error 'ProfileName must be a string')
        else if std.isEmpty(ProfileName) then (error 'ProfileName must be not empty')
        else if std.length(ProfileName) < 2 then error ('ProfileName should have at least 2 characters')
        else if std.length(ProfileName) > 64 then error ('ProfileName should have not more than 64 characters')
        else ProfileName,
    },
  },
  setProfileVersion(ProfileVersion): {
    Properties+::: {
      ProfileVersion:
        if !std.isString(ProfileVersion) then (error 'ProfileVersion must be a string')
        else if std.isEmpty(ProfileVersion) then (error 'ProfileVersion must be not empty')
        else ProfileVersion,
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
  setProfileVersionArn(ProfileVersionArn): {
    Properties+::: {
      ProfileVersionArn:
        if !std.isString(ProfileVersionArn) then (error 'ProfileVersionArn must be a string')
        else if std.isEmpty(ProfileVersionArn) then (error 'ProfileVersionArn must be not empty')
        else ProfileVersionArn,
    },
  },
  setSignatureValidityPeriod(SignatureValidityPeriod): {
    Properties+::: {
      SignatureValidityPeriod:
        if !std.isObject(SignatureValidityPeriod) then (error 'SignatureValidityPeriod must be an object')
        else SignatureValidityPeriod,
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
