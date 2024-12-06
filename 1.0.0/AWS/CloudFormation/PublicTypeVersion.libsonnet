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
    Type: 'AWS::CloudFormation::PublicTypeVersion',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setTypeVersionArn(TypeVersionArn): {
    Properties+::: {
      TypeVersionArn:
        if !std.isString(TypeVersionArn) then (error 'TypeVersionArn must be a string')
        else if std.isEmpty(TypeVersionArn) then (error 'TypeVersionArn must be not empty')
        else TypeVersionArn,
    },
  },
  setPublicVersionNumber(PublicVersionNumber): {
    Properties+::: {
      PublicVersionNumber:
        if !std.isString(PublicVersionNumber) then (error 'PublicVersionNumber must be a string')
        else if std.isEmpty(PublicVersionNumber) then (error 'PublicVersionNumber must be not empty')
        else if std.length(PublicVersionNumber) < 5 then error ('PublicVersionNumber should have at least 5 characters')
        else if std.length(PublicVersionNumber) > 64 then error ('PublicVersionNumber should have not more than 64 characters')
        else PublicVersionNumber,
    },
  },
  setPublisherId(PublisherId): {
    Properties+::: {
      PublisherId:
        if !std.isString(PublisherId) then (error 'PublisherId must be a string')
        else if std.isEmpty(PublisherId) then (error 'PublisherId must be not empty')
        else if std.length(PublisherId) < 1 then error ('PublisherId should have at least 1 characters')
        else if std.length(PublisherId) > 40 then error ('PublisherId should have not more than 40 characters')
        else PublisherId,
    },
  },
  setPublicTypeArn(PublicTypeArn): {
    Properties+::: {
      PublicTypeArn:
        if !std.isString(PublicTypeArn) then (error 'PublicTypeArn must be a string')
        else if std.isEmpty(PublicTypeArn) then (error 'PublicTypeArn must be not empty')
        else if std.length(PublicTypeArn) > 1024 then error ('PublicTypeArn should have not more than 1024 characters')
        else PublicTypeArn,
    },
  },
  setTypeName(TypeName): {
    Properties+::: {
      TypeName:
        if !std.isString(TypeName) then (error 'TypeName must be a string')
        else if std.isEmpty(TypeName) then (error 'TypeName must be not empty')
        else TypeName,
    },
  },
  setLogDeliveryBucket(LogDeliveryBucket): {
    Properties+::: {
      LogDeliveryBucket:
        if !std.isString(LogDeliveryBucket) then (error 'LogDeliveryBucket must be a string')
        else if std.isEmpty(LogDeliveryBucket) then (error 'LogDeliveryBucket must be not empty')
        else LogDeliveryBucket,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'RESOURCE' && Type != 'MODULE' && Type != 'HOOK' then (error "Type should be 'RESOURCE' or 'MODULE' or 'HOOK'")
        else Type,
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
