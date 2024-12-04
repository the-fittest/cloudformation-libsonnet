{
  new(
    ServiceRoleArn,
    InstanceProfileArn,
    InstanceType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
      ServiceRoleArn: ServiceRoleArn,
      assert std.isString(InstanceProfileArn) : 'InstanceProfileArn must be a string',
      InstanceProfileArn: InstanceProfileArn,
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      InstanceType: InstanceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorksCM::Server',
  },
  withKeyPair(KeyPair): {
    assert std.isString(KeyPair) : 'KeyPair must be a string',
    Properties+::: {
      KeyPair: KeyPair,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withDisableAutomatedBackup(DisableAutomatedBackup): {
    assert std.isBoolean(DisableAutomatedBackup) : 'DisableAutomatedBackup must be a boolean',
    Properties+::: {
      DisableAutomatedBackup: DisableAutomatedBackup,
    },
  },
  withBackupId(BackupId): {
    assert std.isString(BackupId) : 'BackupId must be a string',
    Properties+::: {
      BackupId: BackupId,
    },
  },
  withEngineModel(EngineModel): {
    assert std.isString(EngineModel) : 'EngineModel must be a string',
    Properties+::: {
      EngineModel: EngineModel,
    },
  },
  withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
    Properties+::: {
      PreferredMaintenanceWindow: PreferredMaintenanceWindow,
    },
  },
  withAssociatePublicIpAddress(AssociatePublicIpAddress): {
    assert std.isBoolean(AssociatePublicIpAddress) : 'AssociatePublicIpAddress must be a boolean',
    Properties+::: {
      AssociatePublicIpAddress: AssociatePublicIpAddress,
    },
  },
  withCustomCertificate(CustomCertificate): {
    assert std.isString(CustomCertificate) : 'CustomCertificate must be a string',
    Properties+::: {
      CustomCertificate: CustomCertificate,
    },
  },
  withPreferredBackupWindow(PreferredBackupWindow): {
    assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
    Properties+::: {
      PreferredBackupWindow: PreferredBackupWindow,
    },
  },
  withSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
    },
  },
  withSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
  },
  withSubnetIdsMixin(SubnetIds): {
    Properties+::: {
      SubnetIds+: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
  },
  withCustomDomain(CustomDomain): {
    assert std.isString(CustomDomain) : 'CustomDomain must be a string',
    Properties+::: {
      CustomDomain: CustomDomain,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withCustomPrivateKey(CustomPrivateKey): {
    assert std.isString(CustomPrivateKey) : 'CustomPrivateKey must be a string',
    Properties+::: {
      CustomPrivateKey: CustomPrivateKey,
    },
  },
  withServerName(ServerName): {
    assert std.isString(ServerName) : 'ServerName must be a string',
    Properties+::: {
      ServerName: ServerName,
    },
  },
  withEngineAttributes(EngineAttributes): {
    Properties+::: {
      EngineAttributes: (if std.isArray(EngineAttributes) then EngineAttributes else [EngineAttributes]),
    },
  },
  withEngineAttributesMixin(EngineAttributes): {
    Properties+::: {
      EngineAttributes+: (if std.isArray(EngineAttributes) then EngineAttributes else [EngineAttributes]),
    },
  },
  withBackupRetentionCount(BackupRetentionCount): {
    assert std.isNumber(BackupRetentionCount) : 'BackupRetentionCount must be a number',
    Properties+::: {
      BackupRetentionCount: BackupRetentionCount,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    Properties+::: {
      Engine: Engine,
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
