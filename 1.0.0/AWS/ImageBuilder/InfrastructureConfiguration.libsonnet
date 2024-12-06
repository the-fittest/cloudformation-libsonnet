{
  new(
    Name,
    InstanceProfileName,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      InstanceProfileName:
        if !std.isString(InstanceProfileName) then (error 'InstanceProfileName must be a string')
        else if std.isEmpty(InstanceProfileName) then (error 'InstanceProfileName must be not empty')
        else InstanceProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ImageBuilder::InfrastructureConfiguration',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setInstanceTypes(InstanceTypes): {
    Properties+::: {
      InstanceTypes:
        if !std.isArray(InstanceTypes) then (error 'InstanceTypes must be an array')
        else InstanceTypes,
    },
  },
  pushInstanceTypes(InstanceTypes): {
    Properties+::: {
      InstanceTypes+: InstanceTypes,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setLogging(Logging): {
    Properties+::: {
      Logging:
        if !std.isObject(Logging) then (error 'Logging must be an object')
        else Logging,
    },
  },
  setSubnetId(SubnetId): {
    Properties+::: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
  },
  setKeyPair(KeyPair): {
    Properties+::: {
      KeyPair:
        if !std.isString(KeyPair) then (error 'KeyPair must be a string')
        else if std.isEmpty(KeyPair) then (error 'KeyPair must be not empty')
        else KeyPair,
    },
  },
  setTerminateInstanceOnFailure(TerminateInstanceOnFailure): {
    Properties+::: {
      TerminateInstanceOnFailure:
        if !std.isBoolean(TerminateInstanceOnFailure) then (error 'TerminateInstanceOnFailure must be a boolean') else TerminateInstanceOnFailure,
    },
  },
  setInstanceMetadataOptions(InstanceMetadataOptions): {
    Properties+::: {
      InstanceMetadataOptions:
        if !std.isObject(InstanceMetadataOptions) then (error 'InstanceMetadataOptions must be an object')
        else InstanceMetadataOptions,
    },
  },
  setSnsTopicArn(SnsTopicArn): {
    Properties+::: {
      SnsTopicArn:
        if !std.isString(SnsTopicArn) then (error 'SnsTopicArn must be a string')
        else if std.isEmpty(SnsTopicArn) then (error 'SnsTopicArn must be not empty')
        else SnsTopicArn,
    },
  },
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isObject(ResourceTags) then (error 'ResourceTags must be an object')
        else ResourceTags,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setPlacement(Placement): {
    Properties+::: {
      Placement:
        if !std.isObject(Placement) then (error 'Placement must be an object')
        else Placement,
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
