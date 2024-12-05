{
  new(
    OutpostId,
    SecurityGroupId,
    SubnetId,
  ): {
    local base = self,
    Properties: {
      OutpostId:
        if !std.isString(OutpostId) then (error 'OutpostId must be a string')
        else if std.isEmpty(OutpostId) then (error 'OutpostId must be not empty')
        else OutpostId,
      SecurityGroupId:
        if !std.isString(SecurityGroupId) then (error 'SecurityGroupId must be a string')
        else if std.isEmpty(SecurityGroupId) then (error 'SecurityGroupId must be not empty')
        else if std.length(SecurityGroupId) < 1 then error ('SecurityGroupId should have at least 1 characters')
        else if std.length(SecurityGroupId) > 100 then error ('SecurityGroupId should have not more than 100 characters')
        else SecurityGroupId,
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else if std.length(SubnetId) < 1 then error ('SubnetId should have at least 1 characters')
        else if std.length(SubnetId) > 100 then error ('SubnetId should have not more than 100 characters')
        else SubnetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3Outposts::Endpoint',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 5 then error ('Arn should have at least 5 characters')
        else if std.length(Arn) > 500 then error ('Arn should have not more than 500 characters')
        else Arn,
    },
  },
  setCidrBlock(CidrBlock): {
    Properties+::: {
      CidrBlock:
        if !std.isString(CidrBlock) then (error 'CidrBlock must be a string')
        else if std.isEmpty(CidrBlock) then (error 'CidrBlock must be not empty')
        else if std.length(CidrBlock) < 1 then error ('CidrBlock should have at least 1 characters')
        else if std.length(CidrBlock) > 20 then error ('CidrBlock should have not more than 20 characters')
        else CidrBlock,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 5 then error ('Id should have at least 5 characters')
        else if std.length(Id) > 500 then error ('Id should have not more than 500 characters')
        else Id,
    },
  },
  setNetworkInterfaces(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces:
        if !std.isArray(NetworkInterfaces) then (error 'NetworkInterfaces must be an array')
        else NetworkInterfaces,
    },
  },
  setNetworkInterfacesMixin(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces+: NetworkInterfaces,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'Available' && Status != 'Pending' && Status != 'Deleting' && Status != 'Create_Failed' && Status != 'Delete_Failed' then (error "Status should be 'Available' or 'Pending' or 'Deleting' or 'Create_Failed' or 'Delete_Failed'")
        else Status,
    },
  },
  setAccessType(AccessType): {
    Properties+::: {
      AccessType:
        if !std.isString(AccessType) then (error 'AccessType must be a string')
        else if std.isEmpty(AccessType) then (error 'AccessType must be not empty')
        else if AccessType != 'CustomerOwnedIp' && AccessType != 'Private' then (error "AccessType should be 'CustomerOwnedIp' or 'Private'")
        else AccessType,
    },
  },
  setCustomerOwnedIpv4Pool(CustomerOwnedIpv4Pool): {
    Properties+::: {
      CustomerOwnedIpv4Pool:
        if !std.isString(CustomerOwnedIpv4Pool) then (error 'CustomerOwnedIpv4Pool must be a string')
        else if std.isEmpty(CustomerOwnedIpv4Pool) then (error 'CustomerOwnedIpv4Pool must be not empty')
        else CustomerOwnedIpv4Pool,
    },
  },
  setFailedReason(FailedReason): {
    Properties+::: {
      FailedReason:
        if !std.isObject(FailedReason) then (error 'FailedReason must be an object')
        else FailedReason,
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
