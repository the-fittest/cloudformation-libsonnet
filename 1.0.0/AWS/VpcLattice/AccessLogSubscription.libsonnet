{
  new(
    DestinationArn,
  ): {
    local base = self,
    Properties: {
      DestinationArn:
        if !std.isString(DestinationArn) then (error 'DestinationArn must be a string')
        else if std.isEmpty(DestinationArn) then (error 'DestinationArn must be not empty')
        else if std.length(DestinationArn) < 20 then error ('DestinationArn should have at least 20 characters')
        else if std.length(DestinationArn) > 2048 then error ('DestinationArn should have not more than 2048 characters')
        else DestinationArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VpcLattice::AccessLogSubscription',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 21 then error ('Id should have at least 21 characters')
        else if std.length(Id) > 21 then error ('Id should have not more than 21 characters')
        else Id,
    },
  },
  setResourceArn(ResourceArn): {
    Properties+::: {
      ResourceArn:
        if !std.isString(ResourceArn) then (error 'ResourceArn must be a string')
        else if std.isEmpty(ResourceArn) then (error 'ResourceArn must be not empty')
        else if std.length(ResourceArn) < 20 then error ('ResourceArn should have at least 20 characters')
        else if std.length(ResourceArn) > 2048 then error ('ResourceArn should have not more than 2048 characters')
        else ResourceArn,
    },
  },
  setResourceId(ResourceId): {
    Properties+::: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else if std.length(ResourceId) < 20 then error ('ResourceId should have at least 20 characters')
        else if std.length(ResourceId) > 2048 then error ('ResourceId should have not more than 2048 characters')
        else ResourceId,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else if std.length(ResourceIdentifier) < 17 then error ('ResourceIdentifier should have at least 17 characters')
        else if std.length(ResourceIdentifier) > 2048 then error ('ResourceIdentifier should have not more than 2048 characters')
        else ResourceIdentifier,
    },
  },
  setServiceNetworkLogType(ServiceNetworkLogType): {
    Properties+::: {
      ServiceNetworkLogType:
        if !std.isString(ServiceNetworkLogType) then (error 'ServiceNetworkLogType must be a string')
        else if std.isEmpty(ServiceNetworkLogType) then (error 'ServiceNetworkLogType must be not empty')
        else if ServiceNetworkLogType != 'SERVICE' && ServiceNetworkLogType != 'RESOURCE' then (error "ServiceNetworkLogType should be 'SERVICE' or 'RESOURCE'")
        else ServiceNetworkLogType,
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
