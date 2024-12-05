{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::InstanceProfile',
  },
  setInstanceProfileArn(InstanceProfileArn): {
    Properties+::: {
      InstanceProfileArn:
        if !std.isString(InstanceProfileArn) then (error 'InstanceProfileArn must be a string')
        else if std.isEmpty(InstanceProfileArn) then (error 'InstanceProfileArn must be not empty')
        else if std.length(InstanceProfileArn) < 1 then error ('InstanceProfileArn should have at least 1 characters')
        else if std.length(InstanceProfileArn) > 255 then error ('InstanceProfileArn should have not more than 255 characters')
        else InstanceProfileArn,
    },
  },
  setInstanceProfileIdentifier(InstanceProfileIdentifier): {
    Properties+::: {
      InstanceProfileIdentifier:
        if !std.isString(InstanceProfileIdentifier) then (error 'InstanceProfileIdentifier must be a string')
        else if std.isEmpty(InstanceProfileIdentifier) then (error 'InstanceProfileIdentifier must be not empty')
        else if std.length(InstanceProfileIdentifier) < 1 then error ('InstanceProfileIdentifier should have at least 1 characters')
        else if std.length(InstanceProfileIdentifier) > 255 then error ('InstanceProfileIdentifier should have not more than 255 characters')
        else InstanceProfileIdentifier,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else if std.length(AvailabilityZone) < 1 then error ('AvailabilityZone should have at least 1 characters')
        else if std.length(AvailabilityZone) > 255 then error ('AvailabilityZone should have not more than 255 characters')
        else AvailabilityZone,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setKmsKeyArn(KmsKeyArn): {
    Properties+::: {
      KmsKeyArn:
        if !std.isString(KmsKeyArn) then (error 'KmsKeyArn must be a string')
        else if std.isEmpty(KmsKeyArn) then (error 'KmsKeyArn must be not empty')
        else if std.length(KmsKeyArn) < 1 then error ('KmsKeyArn should have at least 1 characters')
        else if std.length(KmsKeyArn) > 255 then error ('KmsKeyArn should have not more than 255 characters')
        else KmsKeyArn,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setNetworkType(NetworkType): {
    Properties+::: {
      NetworkType:
        if !std.isString(NetworkType) then (error 'NetworkType must be a string')
        else if std.isEmpty(NetworkType) then (error 'NetworkType must be not empty')
        else if NetworkType != 'IPV4' && NetworkType != 'DUAL' then (error "NetworkType should be 'IPV4' or 'DUAL'")
        else NetworkType,
    },
  },
  setInstanceProfileName(InstanceProfileName): {
    Properties+::: {
      InstanceProfileName:
        if !std.isString(InstanceProfileName) then (error 'InstanceProfileName must be a string')
        else if std.isEmpty(InstanceProfileName) then (error 'InstanceProfileName must be not empty')
        else if std.length(InstanceProfileName) < 1 then error ('InstanceProfileName should have at least 1 characters')
        else if std.length(InstanceProfileName) > 255 then error ('InstanceProfileName should have not more than 255 characters')
        else InstanceProfileName,
    },
  },
  setInstanceProfileCreationTime(InstanceProfileCreationTime): {
    Properties+::: {
      InstanceProfileCreationTime:
        if !std.isString(InstanceProfileCreationTime) then (error 'InstanceProfileCreationTime must be a string')
        else if std.isEmpty(InstanceProfileCreationTime) then (error 'InstanceProfileCreationTime must be not empty')
        else if std.length(InstanceProfileCreationTime) < 1 then error ('InstanceProfileCreationTime should have at least 1 characters')
        else if std.length(InstanceProfileCreationTime) > 40 then error ('InstanceProfileCreationTime should have not more than 40 characters')
        else InstanceProfileCreationTime,
    },
  },
  setSubnetGroupIdentifier(SubnetGroupIdentifier): {
    Properties+::: {
      SubnetGroupIdentifier:
        if !std.isString(SubnetGroupIdentifier) then (error 'SubnetGroupIdentifier must be a string')
        else if std.isEmpty(SubnetGroupIdentifier) then (error 'SubnetGroupIdentifier must be not empty')
        else if std.length(SubnetGroupIdentifier) < 1 then error ('SubnetGroupIdentifier should have at least 1 characters')
        else if std.length(SubnetGroupIdentifier) > 255 then error ('SubnetGroupIdentifier should have not more than 255 characters')
        else SubnetGroupIdentifier,
    },
  },
  setVpcSecurityGroups(VpcSecurityGroups): {
    Properties+::: {
      VpcSecurityGroups:
        if !std.isArray(VpcSecurityGroups) then (error 'VpcSecurityGroups must be an array')
        else VpcSecurityGroups,
    },
  },
  setVpcSecurityGroupsMixin(VpcSecurityGroups): {
    Properties+::: {
      VpcSecurityGroups+: VpcSecurityGroups,
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
