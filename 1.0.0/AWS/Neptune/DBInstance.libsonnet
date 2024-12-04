{
  // AWS Neptune DBInstance
  DBInstance: {
    new(
      DBInstanceClass,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DBInstanceClass) : 'DBInstanceClass must be a string',
        DBInstanceClass: DBInstanceClass,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Neptune::DBInstance',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: {
        Endpoint: Endpoint,
      },
    },
    withPort(Port): {
      assert std.isString(Port) : 'Port must be a string',
      Properties+::: {
        Port: Port,
      },
    },
    withDBParameterGroupName(DBParameterGroupName): {
      assert std.isString(DBParameterGroupName) : 'DBParameterGroupName must be a string',
      Properties+::: {
        DBParameterGroupName: DBParameterGroupName,
      },
    },
    withAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
      assert std.isBoolean(AllowMajorVersionUpgrade) : 'AllowMajorVersionUpgrade must be a boolean',
      Properties+::: {
        AllowMajorVersionUpgrade: AllowMajorVersionUpgrade,
      },
    },
    withDBClusterIdentifier(DBClusterIdentifier): {
      assert std.isString(DBClusterIdentifier) : 'DBClusterIdentifier must be a string',
      Properties+::: {
        DBClusterIdentifier: DBClusterIdentifier,
      },
    },
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: {
        AvailabilityZone: AvailabilityZone,
      },
    },
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: {
        PreferredMaintenanceWindow: PreferredMaintenanceWindow,
      },
    },
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: {
        AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
      },
    },
    withDBSubnetGroupName(DBSubnetGroupName): {
      assert std.isString(DBSubnetGroupName) : 'DBSubnetGroupName must be a string',
      Properties+::: {
        DBSubnetGroupName: DBSubnetGroupName,
      },
    },
    withDBInstanceIdentifier(DBInstanceIdentifier): {
      assert std.isString(DBInstanceIdentifier) : 'DBInstanceIdentifier must be a string',
      Properties+::: {
        DBInstanceIdentifier: DBInstanceIdentifier,
      },
    },
    withDBSnapshotIdentifier(DBSnapshotIdentifier): {
      assert std.isString(DBSnapshotIdentifier) : 'DBSnapshotIdentifier must be a string',
      Properties+::: {
        DBSnapshotIdentifier: DBSnapshotIdentifier,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
  },
}
