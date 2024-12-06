{
  new(
    OutpostArn,
    PreferredInstanceType,
    Name,
  ): {
    local base = self,
    Properties: {
      OutpostArn:
        if !std.isString(OutpostArn) then (error 'OutpostArn must be a string')
        else if std.isEmpty(OutpostArn) then (error 'OutpostArn must be not empty')
        else if std.length(OutpostArn) < 1 then error ('OutpostArn should have at least 1 characters')
        else if std.length(OutpostArn) > 1024 then error ('OutpostArn should have not more than 1024 characters')
        else OutpostArn,
      PreferredInstanceType:
        if !std.isString(PreferredInstanceType) then (error 'PreferredInstanceType must be a string')
        else if std.isEmpty(PreferredInstanceType) then (error 'PreferredInstanceType must be not empty')
        else if std.length(PreferredInstanceType) < 1 then error ('PreferredInstanceType should have at least 1 characters')
        else if std.length(PreferredInstanceType) > 255 then error ('PreferredInstanceType should have not more than 255 characters')
        else PreferredInstanceType,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::OutpostResolver',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 64 then error ('Id should have not more than 64 characters')
        else Id,
    },
  },
  setCreatorRequestId(CreatorRequestId): {
    Properties+::: {
      CreatorRequestId:
        if !std.isString(CreatorRequestId) then (error 'CreatorRequestId must be a string')
        else if std.isEmpty(CreatorRequestId) then (error 'CreatorRequestId must be not empty')
        else if std.length(CreatorRequestId) < 1 then error ('CreatorRequestId should have at least 1 characters')
        else if std.length(CreatorRequestId) > 255 then error ('CreatorRequestId should have not more than 255 characters')
        else CreatorRequestId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1024 then error ('Arn should have not more than 1024 characters')
        else Arn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'OPERATIONAL' && Status != 'DELETING' && Status != 'UPDATING' && Status != 'ACTION_NEEDED' && Status != 'FAILED_CREATION' && Status != 'FAILED_DELETION' then (error "Status should be 'CREATING' or 'OPERATIONAL' or 'DELETING' or 'UPDATING' or 'ACTION_NEEDED' or 'FAILED_CREATION' or 'FAILED_DELETION'")
        else Status,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else StatusMessage,
    },
  },
  setInstanceCount(InstanceCount): {
    Properties+::: {
      InstanceCount:
        if !std.isNumber(InstanceCount) then (error 'InstanceCount must be an number')
        else if InstanceCount < 4 then error ('InstanceCount should be at least 4')
        else if InstanceCount > 256 then error ('InstanceCount should be not more than 256')
        else InstanceCount,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else if std.length(CreationTime) < 20 then error ('CreationTime should have at least 20 characters')
        else if std.length(CreationTime) > 40 then error ('CreationTime should have not more than 40 characters')
        else CreationTime,
    },
  },
  setModificationTime(ModificationTime): {
    Properties+::: {
      ModificationTime:
        if !std.isString(ModificationTime) then (error 'ModificationTime must be a string')
        else if std.isEmpty(ModificationTime) then (error 'ModificationTime must be not empty')
        else if std.length(ModificationTime) < 20 then error ('ModificationTime should have at least 20 characters')
        else if std.length(ModificationTime) > 40 then error ('ModificationTime should have not more than 40 characters')
        else ModificationTime,
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
