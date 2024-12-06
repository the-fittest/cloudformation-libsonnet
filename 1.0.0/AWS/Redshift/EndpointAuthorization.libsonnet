{
  new(
    ClusterIdentifier,
    Account,
  ): {
    local base = self,
    Properties: {
      ClusterIdentifier:
        if !std.isString(ClusterIdentifier) then (error 'ClusterIdentifier must be a string')
        else if std.isEmpty(ClusterIdentifier) then (error 'ClusterIdentifier must be not empty')
        else ClusterIdentifier,
      Account:
        if !std.isString(Account) then (error 'Account must be a string')
        else if std.isEmpty(Account) then (error 'Account must be not empty')
        else Account,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::EndpointAuthorization',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setGrantee(Grantee): {
    Properties+::: {
      Grantee:
        if !std.isString(Grantee) then (error 'Grantee must be a string')
        else if std.isEmpty(Grantee) then (error 'Grantee must be not empty')
        else Grantee,
    },
  },
  setGrantor(Grantor): {
    Properties+::: {
      Grantor:
        if !std.isString(Grantor) then (error 'Grantor must be a string')
        else if std.isEmpty(Grantor) then (error 'Grantor must be not empty')
        else Grantor,
    },
  },
  setEndpointCount(EndpointCount): {
    Properties+::: {
      EndpointCount:
        if !std.isNumber(EndpointCount) then (error 'EndpointCount must be an number')
        else EndpointCount,
    },
  },
  setAuthorizeTime(AuthorizeTime): {
    Properties+::: {
      AuthorizeTime:
        if !std.isString(AuthorizeTime) then (error 'AuthorizeTime must be a string')
        else if std.isEmpty(AuthorizeTime) then (error 'AuthorizeTime must be not empty')
        else AuthorizeTime,
    },
  },
  setAllowedVPCs(AllowedVPCs): {
    Properties+::: {
      AllowedVPCs:
        if !std.isArray(AllowedVPCs) then (error 'AllowedVPCs must be an array')
        else AllowedVPCs,
    },
  },
  pushAllowedVPCs(AllowedVPCs): {
    Properties+::: {
      AllowedVPCs+: AllowedVPCs,
    },
  },
  setForce(Force): {
    Properties+::: {
      Force:
        if !std.isBoolean(Force) then (error 'Force must be a boolean') else Force,
    },
  },
  setAllowedAllVPCs(AllowedAllVPCs): {
    Properties+::: {
      AllowedAllVPCs:
        if !std.isBoolean(AllowedAllVPCs) then (error 'AllowedAllVPCs must be a boolean') else AllowedAllVPCs,
    },
  },
  setVpcIds(VpcIds): {
    Properties+::: {
      VpcIds:
        if !std.isArray(VpcIds) then (error 'VpcIds must be an array')
        else VpcIds,
    },
  },
  pushVpcIds(VpcIds): {
    Properties+::: {
      VpcIds+: VpcIds,
    },
  },
  setClusterStatus(ClusterStatus): {
    Properties+::: {
      ClusterStatus:
        if !std.isString(ClusterStatus) then (error 'ClusterStatus must be a string')
        else if std.isEmpty(ClusterStatus) then (error 'ClusterStatus must be not empty')
        else ClusterStatus,
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
