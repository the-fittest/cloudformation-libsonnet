{
  new(
    RelationalDatabaseName,
    RelationalDatabaseBlueprintId,
    RelationalDatabaseBundleId,
    MasterDatabaseName,
    MasterUsername,
  ): {
    local base = self,
    Properties: {
      RelationalDatabaseName:
        if !std.isString(RelationalDatabaseName) then (error 'RelationalDatabaseName must be a string')
        else if std.isEmpty(RelationalDatabaseName) then (error 'RelationalDatabaseName must be not empty')
        else if std.length(RelationalDatabaseName) < 2 then error ('RelationalDatabaseName should have at least 2 characters')
        else if std.length(RelationalDatabaseName) > 255 then error ('RelationalDatabaseName should have not more than 255 characters')
        else RelationalDatabaseName,
      RelationalDatabaseBlueprintId:
        if !std.isString(RelationalDatabaseBlueprintId) then (error 'RelationalDatabaseBlueprintId must be a string')
        else if std.isEmpty(RelationalDatabaseBlueprintId) then (error 'RelationalDatabaseBlueprintId must be not empty')
        else if std.length(RelationalDatabaseBlueprintId) < 1 then error ('RelationalDatabaseBlueprintId should have at least 1 characters')
        else if std.length(RelationalDatabaseBlueprintId) > 255 then error ('RelationalDatabaseBlueprintId should have not more than 255 characters')
        else RelationalDatabaseBlueprintId,
      RelationalDatabaseBundleId:
        if !std.isString(RelationalDatabaseBundleId) then (error 'RelationalDatabaseBundleId must be a string')
        else if std.isEmpty(RelationalDatabaseBundleId) then (error 'RelationalDatabaseBundleId must be not empty')
        else if std.length(RelationalDatabaseBundleId) < 1 then error ('RelationalDatabaseBundleId should have at least 1 characters')
        else if std.length(RelationalDatabaseBundleId) > 255 then error ('RelationalDatabaseBundleId should have not more than 255 characters')
        else RelationalDatabaseBundleId,
      MasterDatabaseName:
        if !std.isString(MasterDatabaseName) then (error 'MasterDatabaseName must be a string')
        else if std.isEmpty(MasterDatabaseName) then (error 'MasterDatabaseName must be not empty')
        else if std.length(MasterDatabaseName) < 1 then error ('MasterDatabaseName should have at least 1 characters')
        else if std.length(MasterDatabaseName) > 255 then error ('MasterDatabaseName should have not more than 255 characters')
        else MasterDatabaseName,
      MasterUsername:
        if !std.isString(MasterUsername) then (error 'MasterUsername must be a string')
        else if std.isEmpty(MasterUsername) then (error 'MasterUsername must be not empty')
        else if std.length(MasterUsername) < 1 then error ('MasterUsername should have at least 1 characters')
        else if std.length(MasterUsername) > 63 then error ('MasterUsername should have not more than 63 characters')
        else MasterUsername,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Database',
  },
  setDatabaseArn(DatabaseArn): {
    Properties+::: {
      DatabaseArn:
        if !std.isString(DatabaseArn) then (error 'DatabaseArn must be a string')
        else if std.isEmpty(DatabaseArn) then (error 'DatabaseArn must be not empty')
        else DatabaseArn,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else if std.length(AvailabilityZone) < 1 then error ('AvailabilityZone should have at least 1 characters')
        else if std.length(AvailabilityZone) > 255 then error ('AvailabilityZone should have not more than 255 characters')
        else AvailabilityZone,
    },
  },
  setMasterUserPassword(MasterUserPassword): {
    Properties+::: {
      MasterUserPassword:
        if !std.isString(MasterUserPassword) then (error 'MasterUserPassword must be a string')
        else if std.isEmpty(MasterUserPassword) then (error 'MasterUserPassword must be not empty')
        else if std.length(MasterUserPassword) < 1 then error ('MasterUserPassword should have at least 1 characters')
        else if std.length(MasterUserPassword) > 63 then error ('MasterUserPassword should have not more than 63 characters')
        else MasterUserPassword,
    },
  },
  setPreferredBackupWindow(PreferredBackupWindow): {
    Properties+::: {
      PreferredBackupWindow:
        if !std.isString(PreferredBackupWindow) then (error 'PreferredBackupWindow must be a string')
        else if std.isEmpty(PreferredBackupWindow) then (error 'PreferredBackupWindow must be not empty')
        else PreferredBackupWindow,
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
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setCaCertificateIdentifier(CaCertificateIdentifier): {
    Properties+::: {
      CaCertificateIdentifier:
        if !std.isString(CaCertificateIdentifier) then (error 'CaCertificateIdentifier must be a string')
        else if std.isEmpty(CaCertificateIdentifier) then (error 'CaCertificateIdentifier must be not empty')
        else CaCertificateIdentifier,
    },
  },
  setBackupRetention(BackupRetention): {
    Properties+::: {
      BackupRetention:
        if !std.isBoolean(BackupRetention) then (error 'BackupRetention must be a boolean') else BackupRetention,
    },
  },
  setRotateMasterUserPassword(RotateMasterUserPassword): {
    Properties+::: {
      RotateMasterUserPassword:
        if !std.isBoolean(RotateMasterUserPassword) then (error 'RotateMasterUserPassword must be a boolean') else RotateMasterUserPassword,
    },
  },
  setRelationalDatabaseParameters(RelationalDatabaseParameters): {
    Properties+::: {
      RelationalDatabaseParameters:
        if !std.isArray(RelationalDatabaseParameters) then (error 'RelationalDatabaseParameters must be an array')
        else RelationalDatabaseParameters,
    },
  },
  pushRelationalDatabaseParameters(RelationalDatabaseParameters): {
    Properties+::: {
      RelationalDatabaseParameters+: RelationalDatabaseParameters,
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
