{
  new(
    Aggregation,
    Pattern,
    ProtectionGroupId,
  ): {
    local base = self,
    Properties: {
      Aggregation:
        if !std.isString(Aggregation) then (error 'Aggregation must be a string')
        else if std.isEmpty(Aggregation) then (error 'Aggregation must be not empty')
        else if Aggregation != 'SUM' && Aggregation != 'MEAN' && Aggregation != 'MAX' then (error "Aggregation should be 'SUM' or 'MEAN' or 'MAX'")
        else Aggregation,
      Pattern:
        if !std.isString(Pattern) then (error 'Pattern must be a string')
        else if std.isEmpty(Pattern) then (error 'Pattern must be not empty')
        else if Pattern != 'ALL' && Pattern != 'ARBITRARY' && Pattern != 'BY_RESOURCE_TYPE' then (error "Pattern should be 'ALL' or 'ARBITRARY' or 'BY_RESOURCE_TYPE'")
        else Pattern,
      ProtectionGroupId:
        if !std.isString(ProtectionGroupId) then (error 'ProtectionGroupId must be a string')
        else if std.isEmpty(ProtectionGroupId) then (error 'ProtectionGroupId must be not empty')
        else if std.length(ProtectionGroupId) < 1 then error ('ProtectionGroupId should have at least 1 characters')
        else if std.length(ProtectionGroupId) > 36 then error ('ProtectionGroupId should have not more than 36 characters')
        else ProtectionGroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Shield::ProtectionGroup',
  },
  setProtectionGroupArn(ProtectionGroupArn): {
    Properties+::: {
      ProtectionGroupArn:
        if !std.isString(ProtectionGroupArn) then (error 'ProtectionGroupArn must be a string')
        else if std.isEmpty(ProtectionGroupArn) then (error 'ProtectionGroupArn must be not empty')
        else ProtectionGroupArn,
    },
  },
  setMembers(Members): {
    Properties+::: {
      Members:
        if !std.isArray(Members) then (error 'Members must be an array')
        else if std.length(Members) > 10000 then error ('Members cannot have more than 10000 items')
        else Members,
    },
  },
  pushMembers(Members): {
    Properties+::: {
      Members+: Members,
    },
  },
  setResourceType(ResourceType): {
    Properties+::: {
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else if ResourceType != 'CLOUDFRONT_DISTRIBUTION' && ResourceType != 'ROUTE_53_HOSTED_ZONE' && ResourceType != 'ELASTIC_IP_ALLOCATION' && ResourceType != 'CLASSIC_LOAD_BALANCER' && ResourceType != 'APPLICATION_LOAD_BALANCER' && ResourceType != 'GLOBAL_ACCELERATOR' then (error "ResourceType should be 'CLOUDFRONT_DISTRIBUTION' or 'ROUTE_53_HOSTED_ZONE' or 'ELASTIC_IP_ALLOCATION' or 'CLASSIC_LOAD_BALANCER' or 'APPLICATION_LOAD_BALANCER' or 'GLOBAL_ACCELERATOR'")
        else ResourceType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
