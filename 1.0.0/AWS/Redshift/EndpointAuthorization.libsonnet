{
  new(
    ClusterIdentifier,
    Account,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ClusterIdentifier) : 'ClusterIdentifier must be a string',
      ClusterIdentifier: ClusterIdentifier,
      assert std.isString(Account) : 'Account must be a string',
      Account: Account,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::EndpointAuthorization',
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withGrantee(Grantee): {
    assert std.isString(Grantee) : 'Grantee must be a string',
    Properties+::: {
      Grantee: Grantee,
    },
  },
  withGrantor(Grantor): {
    assert std.isString(Grantor) : 'Grantor must be a string',
    Properties+::: {
      Grantor: Grantor,
    },
  },
  withEndpointCount(EndpointCount): {
    assert std.isNumber(EndpointCount) : 'EndpointCount must be a number',
    Properties+::: {
      EndpointCount: EndpointCount,
    },
  },
  withAuthorizeTime(AuthorizeTime): {
    assert std.isString(AuthorizeTime) : 'AuthorizeTime must be a string',
    Properties+::: {
      AuthorizeTime: AuthorizeTime,
    },
  },
  withAllowedVPCs(AllowedVPCs): {
    Properties+::: {
      AllowedVPCs: (if std.isArray(AllowedVPCs) then AllowedVPCs else [AllowedVPCs]),
    },
  },
  withAllowedVPCsMixin(AllowedVPCs): {
    Properties+::: {
      AllowedVPCs+: (if std.isArray(AllowedVPCs) then AllowedVPCs else [AllowedVPCs]),
    },
  },
  withForce(Force): {
    assert std.isBoolean(Force) : 'Force must be a boolean',
    Properties+::: {
      Force: Force,
    },
  },
  withAllowedAllVPCs(AllowedAllVPCs): {
    assert std.isBoolean(AllowedAllVPCs) : 'AllowedAllVPCs must be a boolean',
    Properties+::: {
      AllowedAllVPCs: AllowedAllVPCs,
    },
  },
  withVpcIds(VpcIds): {
    Properties+::: {
      VpcIds: (if std.isArray(VpcIds) then VpcIds else [VpcIds]),
    },
  },
  withVpcIdsMixin(VpcIds): {
    Properties+::: {
      VpcIds+: (if std.isArray(VpcIds) then VpcIds else [VpcIds]),
    },
  },
  withClusterStatus(ClusterStatus): {
    assert std.isString(ClusterStatus) : 'ClusterStatus must be a string',
    Properties+::: {
      ClusterStatus: ClusterStatus,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
