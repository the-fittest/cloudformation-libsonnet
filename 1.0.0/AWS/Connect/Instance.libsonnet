{
  new(
    IdentityManagementType,
    Attributes,
  ): {
    local base = self,
    Properties: {
      IdentityManagementType:
        if !std.isString(IdentityManagementType) then (error 'IdentityManagementType must be a string')
        else if std.isEmpty(IdentityManagementType) then (error 'IdentityManagementType must be not empty')
        else if IdentityManagementType != 'SAML' && IdentityManagementType != 'CONNECT_MANAGED' && IdentityManagementType != 'EXISTING_DIRECTORY' then (error "IdentityManagementType should be 'SAML' or 'CONNECT_MANAGED' or 'EXISTING_DIRECTORY'")
        else IdentityManagementType,
      Attributes:
        if !std.isObject(Attributes) then (error 'Attributes must be an object')
        else if !std.objectHas(Attributes, 'InboundCalls') then (error ' have attribute InboundCalls')
        else if !std.objectHas(Attributes, 'OutboundCalls') then (error ' have attribute OutboundCalls')
        else Attributes,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::Instance',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setInstanceAlias(InstanceAlias): {
    Properties+::: {
      InstanceAlias:
        if !std.isString(InstanceAlias) then (error 'InstanceAlias must be a string')
        else if std.isEmpty(InstanceAlias) then (error 'InstanceAlias must be not empty')
        else if std.length(InstanceAlias) < 1 then error ('InstanceAlias should have at least 1 characters')
        else if std.length(InstanceAlias) > 62 then error ('InstanceAlias should have not more than 62 characters')
        else InstanceAlias,
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
  setServiceRole(ServiceRole): {
    Properties+::: {
      ServiceRole:
        if !std.isString(ServiceRole) then (error 'ServiceRole must be a string')
        else if std.isEmpty(ServiceRole) then (error 'ServiceRole must be not empty')
        else ServiceRole,
    },
  },
  setInstanceStatus(InstanceStatus): {
    Properties+::: {
      InstanceStatus:
        if !std.isString(InstanceStatus) then (error 'InstanceStatus must be a string')
        else if std.isEmpty(InstanceStatus) then (error 'InstanceStatus must be not empty')
        else if InstanceStatus != 'CREATION_IN_PROGRESS' && InstanceStatus != 'CREATION_FAILED' && InstanceStatus != 'ACTIVE' then (error "InstanceStatus should be 'CREATION_IN_PROGRESS' or 'CREATION_FAILED' or 'ACTIVE'")
        else InstanceStatus,
    },
  },
  setDirectoryId(DirectoryId): {
    Properties+::: {
      DirectoryId:
        if !std.isString(DirectoryId) then (error 'DirectoryId must be a string')
        else if std.isEmpty(DirectoryId) then (error 'DirectoryId must be not empty')
        else if std.length(DirectoryId) < 12 then error ('DirectoryId should have at least 12 characters')
        else if std.length(DirectoryId) > 12 then error ('DirectoryId should have not more than 12 characters')
        else DirectoryId,
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
