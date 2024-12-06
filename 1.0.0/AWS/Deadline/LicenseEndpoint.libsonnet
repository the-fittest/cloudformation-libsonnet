{
  new(
    SecurityGroupIds,
    SubnetIds,
    VpcId,
  ): {
    local base = self,
    Properties: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else if std.length(SecurityGroupIds) < 1 then error ('SecurityGroupIds cannot have less than 1 items')
        else if std.length(SecurityGroupIds) > 10 then error ('SecurityGroupIds cannot have more than 10 items')
        else SecurityGroupIds,
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else if std.length(SubnetIds) < 1 then error ('SubnetIds cannot have less than 1 items')
        else if std.length(SubnetIds) > 10 then error ('SubnetIds cannot have more than 10 items')
        else SubnetIds,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) < 1 then error ('VpcId should have at least 1 characters')
        else if std.length(VpcId) > 32 then error ('VpcId should have not more than 32 characters')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::LicenseEndpoint',
  },
  setDnsName(DnsName): {
    Properties+::: {
      DnsName:
        if !std.isString(DnsName) then (error 'DnsName must be a string')
        else if std.isEmpty(DnsName) then (error 'DnsName must be not empty')
        else DnsName,
    },
  },
  setLicenseEndpointId(LicenseEndpointId): {
    Properties+::: {
      LicenseEndpointId:
        if !std.isString(LicenseEndpointId) then (error 'LicenseEndpointId must be a string')
        else if std.isEmpty(LicenseEndpointId) then (error 'LicenseEndpointId must be not empty')
        else LicenseEndpointId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATE_IN_PROGRESS' && Status != 'DELETE_IN_PROGRESS' && Status != 'READY' && Status != 'NOT_READY' then (error "Status should be 'CREATE_IN_PROGRESS' or 'DELETE_IN_PROGRESS' or 'READY' or 'NOT_READY'")
        else Status,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else if std.length(StatusMessage) > 1024 then error ('StatusMessage should have not more than 1024 characters')
        else StatusMessage,
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
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
