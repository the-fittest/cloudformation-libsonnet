{
  new(
    ServiceRoleArn,
    InstanceProfileArn,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      ServiceRoleArn:
        if !std.isString(ServiceRoleArn) then (error 'ServiceRoleArn must be a string')
        else if std.isEmpty(ServiceRoleArn) then (error 'ServiceRoleArn must be not empty')
        else if std.length(ServiceRoleArn) > 10000 then error ('ServiceRoleArn should have not more than 10000 characters')
        else ServiceRoleArn,
      InstanceProfileArn:
        if !std.isString(InstanceProfileArn) then (error 'InstanceProfileArn must be a string')
        else if std.isEmpty(InstanceProfileArn) then (error 'InstanceProfileArn must be not empty')
        else if std.length(InstanceProfileArn) > 10000 then error ('InstanceProfileArn should have not more than 10000 characters')
        else InstanceProfileArn,
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else if std.length(InstanceType) > 10000 then error ('InstanceType should have not more than 10000 characters')
        else InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorksCM::Server',
  },
  setKeyPair(KeyPair): {
    Properties+::: {
      KeyPair:
        if !std.isString(KeyPair) then (error 'KeyPair must be a string')
        else if std.isEmpty(KeyPair) then (error 'KeyPair must be not empty')
        else if std.length(KeyPair) > 10000 then error ('KeyPair should have not more than 10000 characters')
        else KeyPair,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else if std.length(EngineVersion) > 10000 then error ('EngineVersion should have not more than 10000 characters')
        else EngineVersion,
    },
  },
  setDisableAutomatedBackup(DisableAutomatedBackup): {
    Properties+::: {
      DisableAutomatedBackup:
        if !std.isBoolean(DisableAutomatedBackup) then (error 'DisableAutomatedBackup must be a boolean') else DisableAutomatedBackup,
    },
  },
  setBackupId(BackupId): {
    Properties+::: {
      BackupId:
        if !std.isString(BackupId) then (error 'BackupId must be a string')
        else if std.isEmpty(BackupId) then (error 'BackupId must be not empty')
        else if std.length(BackupId) > 79 then error ('BackupId should have not more than 79 characters')
        else BackupId,
    },
  },
  setEngineModel(EngineModel): {
    Properties+::: {
      EngineModel:
        if !std.isString(EngineModel) then (error 'EngineModel must be a string')
        else if std.isEmpty(EngineModel) then (error 'EngineModel must be not empty')
        else if std.length(EngineModel) > 10000 then error ('EngineModel should have not more than 10000 characters')
        else EngineModel,
    },
  },
  setPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    Properties+::: {
      PreferredMaintenanceWindow:
        if !std.isString(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be a string')
        else if std.isEmpty(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be not empty')
        else if std.length(PreferredMaintenanceWindow) > 10000 then error ('PreferredMaintenanceWindow should have not more than 10000 characters')
        else PreferredMaintenanceWindow,
    },
  },
  setAssociatePublicIpAddress(AssociatePublicIpAddress): {
    Properties+::: {
      AssociatePublicIpAddress:
        if !std.isBoolean(AssociatePublicIpAddress) then (error 'AssociatePublicIpAddress must be a boolean') else AssociatePublicIpAddress,
    },
  },
  setCustomCertificate(CustomCertificate): {
    Properties+::: {
      CustomCertificate:
        if !std.isString(CustomCertificate) then (error 'CustomCertificate must be a string')
        else if std.isEmpty(CustomCertificate) then (error 'CustomCertificate must be not empty')
        else if std.length(CustomCertificate) > 2097152 then error ('CustomCertificate should have not more than 2097152 characters')
        else CustomCertificate,
    },
  },
  setPreferredBackupWindow(PreferredBackupWindow): {
    Properties+::: {
      PreferredBackupWindow:
        if !std.isString(PreferredBackupWindow) then (error 'PreferredBackupWindow must be a string')
        else if std.isEmpty(PreferredBackupWindow) then (error 'PreferredBackupWindow must be not empty')
        else if std.length(PreferredBackupWindow) > 10000 then error ('PreferredBackupWindow should have not more than 10000 characters')
        else PreferredBackupWindow,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else SubnetIds,
    },
  },
  pushSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds+: SubnetIds,
    },
  },
  setCustomDomain(CustomDomain): {
    Properties+::: {
      CustomDomain:
        if !std.isString(CustomDomain) then (error 'CustomDomain must be a string')
        else if std.isEmpty(CustomDomain) then (error 'CustomDomain must be not empty')
        else if std.length(CustomDomain) > 253 then error ('CustomDomain should have not more than 253 characters')
        else CustomDomain,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else if std.length(Endpoint) > 10000 then error ('Endpoint should have not more than 10000 characters')
        else Endpoint,
    },
  },
  setCustomPrivateKey(CustomPrivateKey): {
    Properties+::: {
      CustomPrivateKey:
        if !std.isString(CustomPrivateKey) then (error 'CustomPrivateKey must be a string')
        else if std.isEmpty(CustomPrivateKey) then (error 'CustomPrivateKey must be not empty')
        else if std.length(CustomPrivateKey) > 4096 then error ('CustomPrivateKey should have not more than 4096 characters')
        else CustomPrivateKey,
    },
  },
  setServerName(ServerName): {
    Properties+::: {
      ServerName:
        if !std.isString(ServerName) then (error 'ServerName must be a string')
        else if std.isEmpty(ServerName) then (error 'ServerName must be not empty')
        else if std.length(ServerName) < 1 then error ('ServerName should have at least 1 characters')
        else if std.length(ServerName) > 40 then error ('ServerName should have not more than 40 characters')
        else ServerName,
    },
  },
  setEngineAttributes(EngineAttributes): {
    Properties+::: {
      EngineAttributes:
        if !std.isArray(EngineAttributes) then (error 'EngineAttributes must be an array')
        else EngineAttributes,
    },
  },
  pushEngineAttributes(EngineAttributes): {
    Properties+::: {
      EngineAttributes+: EngineAttributes,
    },
  },
  setBackupRetentionCount(BackupRetentionCount): {
    Properties+::: {
      BackupRetentionCount:
        if !std.isNumber(BackupRetentionCount) then (error 'BackupRetentionCount must be an number')
        else BackupRetentionCount,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 10000 then error ('Arn should have not more than 10000 characters')
        else Arn,
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
  setEngine(Engine): {
    Properties+::: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else if std.length(Engine) > 10000 then error ('Engine should have not more than 10000 characters')
        else Engine,
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
