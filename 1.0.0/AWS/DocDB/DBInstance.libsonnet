{
  new(
    DBInstanceClass,
    DBClusterIdentifier,
  ): {
    local base = self,
    Properties: {
      DBInstanceClass:
        if !std.isString(DBInstanceClass) then (error 'DBInstanceClass must be a string')
        else if std.isEmpty(DBInstanceClass) then (error 'DBInstanceClass must be not empty')
        else DBInstanceClass,
      DBClusterIdentifier:
        if !std.isString(DBClusterIdentifier) then (error 'DBClusterIdentifier must be a string')
        else if std.isEmpty(DBClusterIdentifier) then (error 'DBClusterIdentifier must be not empty')
        else DBClusterIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DocDB::DBInstance',
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isString(Port) then (error 'Port must be a string')
        else if std.isEmpty(Port) then (error 'Port must be not empty')
        else Port,
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
  setEnablePerformanceInsights(EnablePerformanceInsights): {
    Properties+::: {
      EnablePerformanceInsights:
        if !std.isBoolean(EnablePerformanceInsights) then (error 'EnablePerformanceInsights must be a boolean') else EnablePerformanceInsights,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
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
  setCACertificateIdentifier(CACertificateIdentifier): {
    Properties+::: {
      CACertificateIdentifier:
        if !std.isString(CACertificateIdentifier) then (error 'CACertificateIdentifier must be a string')
        else if std.isEmpty(CACertificateIdentifier) then (error 'CACertificateIdentifier must be not empty')
        else CACertificateIdentifier,
    },
  },
  setCertificateRotationRestart(CertificateRotationRestart): {
    Properties+::: {
      CertificateRotationRestart:
        if !std.isBoolean(CertificateRotationRestart) then (error 'CertificateRotationRestart must be a boolean') else CertificateRotationRestart,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
