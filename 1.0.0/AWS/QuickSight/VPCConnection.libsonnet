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
    Type: 'AWS::QuickSight::VPCConnection',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAvailabilityStatus(AvailabilityStatus): {
    Properties+::: {
      AvailabilityStatus:
        if !std.isString(AvailabilityStatus) then (error 'AvailabilityStatus must be a string')
        else if std.isEmpty(AvailabilityStatus) then (error 'AvailabilityStatus must be not empty')
        else if AvailabilityStatus != 'AVAILABLE' && AvailabilityStatus != 'UNAVAILABLE' && AvailabilityStatus != 'PARTIALLY_AVAILABLE' then (error "AvailabilityStatus should be 'AVAILABLE' or 'UNAVAILABLE' or 'PARTIALLY_AVAILABLE'")
        else AvailabilityStatus,
    },
  },
  setAwsAccountId(AwsAccountId): {
    Properties+::: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else if std.length(AwsAccountId) < 12 then error ('AwsAccountId should have at least 12 characters')
        else if std.length(AwsAccountId) > 12 then error ('AwsAccountId should have not more than 12 characters')
        else AwsAccountId,
    },
  },
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isString(CreatedTime) then (error 'CreatedTime must be a string')
        else if std.isEmpty(CreatedTime) then (error 'CreatedTime must be not empty')
        else CreatedTime,
    },
  },
  setDnsResolvers(DnsResolvers): {
    Properties+::: {
      DnsResolvers:
        if !std.isArray(DnsResolvers) then (error 'DnsResolvers must be an array')
        else DnsResolvers,
    },
  },
  setDnsResolversMixin(DnsResolvers): {
    Properties+::: {
      DnsResolvers+: DnsResolvers,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setNetworkInterfaces(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces:
        if !std.isArray(NetworkInterfaces) then (error 'NetworkInterfaces must be an array')
        else if std.length(NetworkInterfaces) > 15 then error ('NetworkInterfaces cannot have more than 15 items')
        else NetworkInterfaces,
    },
  },
  setNetworkInterfacesMixin(NetworkInterfaces): {
    Properties+::: {
      NetworkInterfaces+: NetworkInterfaces,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else if std.length(SecurityGroupIds) < 1 then error ('SecurityGroupIds cannot have less than 1 items')
        else if std.length(SecurityGroupIds) > 16 then error ('SecurityGroupIds cannot have more than 16 items')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATION_IN_PROGRESS' && Status != 'CREATION_SUCCESSFUL' && Status != 'CREATION_FAILED' && Status != 'UPDATE_IN_PROGRESS' && Status != 'UPDATE_SUCCESSFUL' && Status != 'UPDATE_FAILED' && Status != 'DELETION_IN_PROGRESS' && Status != 'DELETION_FAILED' && Status != 'DELETED' then (error "Status should be 'CREATION_IN_PROGRESS' or 'CREATION_SUCCESSFUL' or 'CREATION_FAILED' or 'UPDATE_IN_PROGRESS' or 'UPDATE_SUCCESSFUL' or 'UPDATE_FAILED' or 'DELETION_IN_PROGRESS' or 'DELETION_FAILED' or 'DELETED'")
        else Status,
    },
  },
  setSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else if std.length(SubnetIds) < 2 then error ('SubnetIds cannot have less than 2 items')
        else if std.length(SubnetIds) > 15 then error ('SubnetIds cannot have more than 15 items')
        else SubnetIds,
    },
  },
  setSubnetIdsMixin(SubnetIds): {
    Properties+::: {
      SubnetIds+: SubnetIds,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setVPCConnectionId(VPCConnectionId): {
    Properties+::: {
      VPCConnectionId:
        if !std.isString(VPCConnectionId) then (error 'VPCConnectionId must be a string')
        else if std.isEmpty(VPCConnectionId) then (error 'VPCConnectionId must be not empty')
        else if std.length(VPCConnectionId) < 1 then error ('VPCConnectionId should have at least 1 characters')
        else if std.length(VPCConnectionId) > 1000 then error ('VPCConnectionId should have not more than 1000 characters')
        else VPCConnectionId,
    },
  },
  setVPCId(VPCId): {
    Properties+::: {
      VPCId:
        if !std.isString(VPCId) then (error 'VPCId must be a string')
        else if std.isEmpty(VPCId) then (error 'VPCId must be not empty')
        else VPCId,
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
