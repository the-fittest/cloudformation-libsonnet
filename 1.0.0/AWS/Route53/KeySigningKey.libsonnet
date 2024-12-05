{
  new(
    Status,
    HostedZoneId,
    Name,
    KeyManagementServiceArn,
  ): {
    local base = self,
    Properties: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'INACTIVE' then (error "Status should be 'ACTIVE' or 'INACTIVE'")
        else Status,
      HostedZoneId:
        if !std.isString(HostedZoneId) then (error 'HostedZoneId must be a string')
        else if std.isEmpty(HostedZoneId) then (error 'HostedZoneId must be not empty')
        else HostedZoneId,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      KeyManagementServiceArn:
        if !std.isString(KeyManagementServiceArn) then (error 'KeyManagementServiceArn must be a string')
        else if std.isEmpty(KeyManagementServiceArn) then (error 'KeyManagementServiceArn must be not empty')
        else if std.length(KeyManagementServiceArn) < 1 then error ('KeyManagementServiceArn should have at least 1 characters')
        else if std.length(KeyManagementServiceArn) > 256 then error ('KeyManagementServiceArn should have not more than 256 characters')
        else KeyManagementServiceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53::KeySigningKey',
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
