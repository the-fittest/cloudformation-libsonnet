{
  new(
    DBInstanceClass,
  ): {
    local base = self,
    Properties: {
      DBInstanceClass:
        if !std.isString(DBInstanceClass) then (error 'DBInstanceClass must be a string')
        else if std.isEmpty(DBInstanceClass) then (error 'DBInstanceClass must be not empty')
        else DBInstanceClass,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Neptune::DBInstance',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isString(Port) then (error 'Port must be a string')
        else if std.isEmpty(Port) then (error 'Port must be not empty')
        else Port,
    },
  },
  setDBParameterGroupName(DBParameterGroupName): {
    Properties+::: {
      DBParameterGroupName:
        if !std.isString(DBParameterGroupName) then (error 'DBParameterGroupName must be a string')
        else if std.isEmpty(DBParameterGroupName) then (error 'DBParameterGroupName must be not empty')
        else DBParameterGroupName,
    },
  },
  setAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
    Properties+::: {
      AllowMajorVersionUpgrade:
        if !std.isBoolean(AllowMajorVersionUpgrade) then (error 'AllowMajorVersionUpgrade must be a boolean') else AllowMajorVersionUpgrade,
    },
  },
  setDBClusterIdentifier(DBClusterIdentifier): {
    Properties+::: {
      DBClusterIdentifier:
        if !std.isString(DBClusterIdentifier) then (error 'DBClusterIdentifier must be a string')
        else if std.isEmpty(DBClusterIdentifier) then (error 'DBClusterIdentifier must be not empty')
        else DBClusterIdentifier,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
  },
  setPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    Properties+::: {
      PreferredMaintenanceWindow:
        if !std.isString(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be a string')
        else if std.isEmpty(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be not empty')
        else PreferredMaintenanceWindow,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setDBSubnetGroupName(DBSubnetGroupName): {
    Properties+::: {
      DBSubnetGroupName:
        if !std.isString(DBSubnetGroupName) then (error 'DBSubnetGroupName must be a string')
        else if std.isEmpty(DBSubnetGroupName) then (error 'DBSubnetGroupName must be not empty')
        else DBSubnetGroupName,
    },
  },
  setDBInstanceIdentifier(DBInstanceIdentifier): {
    Properties+::: {
      DBInstanceIdentifier:
        if !std.isString(DBInstanceIdentifier) then (error 'DBInstanceIdentifier must be a string')
        else if std.isEmpty(DBInstanceIdentifier) then (error 'DBInstanceIdentifier must be not empty')
        else DBInstanceIdentifier,
    },
  },
  setDBSnapshotIdentifier(DBSnapshotIdentifier): {
    Properties+::: {
      DBSnapshotIdentifier:
        if !std.isString(DBSnapshotIdentifier) then (error 'DBSnapshotIdentifier must be a string')
        else if std.isEmpty(DBSnapshotIdentifier) then (error 'DBSnapshotIdentifier must be not empty')
        else DBSnapshotIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
