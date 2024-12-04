{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Timestream::InfluxDBInstance',
  },
  withUsername(Username): {
    assert std.isString(Username) : 'Username must be a string',
    Properties+::: {
      Username: Username,
    },
  },
  withPassword(Password): {
    assert std.isString(Password) : 'Password must be a string',
    Properties+::: {
      Password: Password,
    },
  },
  withOrganization(Organization): {
    assert std.isString(Organization) : 'Organization must be a string',
    Properties+::: {
      Organization: Organization,
    },
  },
  withBucket(Bucket): {
    assert std.isString(Bucket) : 'Bucket must be a string',
    Properties+::: {
      Bucket: Bucket,
    },
  },
  withDbInstanceType(DbInstanceType): {
    assert std.isString(DbInstanceType) : 'DbInstanceType must be a string',
    assert DbInstanceType == 'db.influx.medium' || DbInstanceType == 'db.influx.large' || DbInstanceType == 'db.influx.xlarge' || DbInstanceType == 'db.influx.2xlarge' || DbInstanceType == 'db.influx.4xlarge' || DbInstanceType == 'db.influx.8xlarge' || DbInstanceType == 'db.influx.12xlarge' || DbInstanceType == 'db.influx.16xlarge' : "DbInstanceType should be 'db.influx.medium' or 'db.influx.large' or 'db.influx.xlarge' or 'db.influx.2xlarge' or 'db.influx.4xlarge' or 'db.influx.8xlarge' or 'db.influx.12xlarge' or 'db.influx.16xlarge'",
    Properties+::: {
      DbInstanceType: DbInstanceType,
    },
  },
  withVpcSubnetIds(VpcSubnetIds): {
    Properties+::: {
      VpcSubnetIds: (if std.isArray(VpcSubnetIds) then VpcSubnetIds else [VpcSubnetIds]),
    },
  },
  withVpcSubnetIdsMixin(VpcSubnetIds): {
    Properties+::: {
      VpcSubnetIds+: (if std.isArray(VpcSubnetIds) then VpcSubnetIds else [VpcSubnetIds]),
    },
  },
  withVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withPubliclyAccessible(PubliclyAccessible): {
    assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
    Properties+::: {
      PubliclyAccessible: PubliclyAccessible,
    },
  },
  withDbStorageType(DbStorageType): {
    assert std.isString(DbStorageType) : 'DbStorageType must be a string',
    assert DbStorageType == 'InfluxIOIncludedT1' || DbStorageType == 'InfluxIOIncludedT2' || DbStorageType == 'InfluxIOIncludedT3' : "DbStorageType should be 'InfluxIOIncludedT1' or 'InfluxIOIncludedT2' or 'InfluxIOIncludedT3'",
    Properties+::: {
      DbStorageType: DbStorageType,
    },
  },
  withAllocatedStorage(AllocatedStorage): {
    assert std.isNumber(AllocatedStorage) : 'AllocatedStorage must be a number',
    Properties+::: {
      AllocatedStorage: AllocatedStorage,
    },
  },
  withDbParameterGroupIdentifier(DbParameterGroupIdentifier): {
    assert std.isString(DbParameterGroupIdentifier) : 'DbParameterGroupIdentifier must be a string',
    Properties+::: {
      DbParameterGroupIdentifier: DbParameterGroupIdentifier,
    },
  },
  withPort(Port): {
    assert std.isNumber(Port) : 'Port must be a number',
    Properties+::: {
      Port: Port,
    },
  },
  withLogDeliveryConfiguration(LogDeliveryConfiguration): {
    assert std.isObject(LogDeliveryConfiguration) : 'LogDeliveryConfiguration must be a object',
    Properties+::: {
      LogDeliveryConfiguration: LogDeliveryConfiguration,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATING' || Status == 'AVAILABLE' || Status == 'DELETING' || Status == 'MODIFYING' || Status == 'UPDATING' || Status == 'UPDATING_DEPLOYMENT_TYPE' || Status == 'UPDATING_INSTANCE_TYPE' || Status == 'DELETED' || Status == 'FAILED' : "Status should be 'CREATING' or 'AVAILABLE' or 'DELETING' or 'MODIFYING' or 'UPDATING' or 'UPDATING_DEPLOYMENT_TYPE' or 'UPDATING_INSTANCE_TYPE' or 'DELETED' or 'FAILED'",
    Properties+::: {
      Status: Status,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withSecondaryAvailabilityZone(SecondaryAvailabilityZone): {
    assert std.isString(SecondaryAvailabilityZone) : 'SecondaryAvailabilityZone must be a string',
    Properties+::: {
      SecondaryAvailabilityZone: SecondaryAvailabilityZone,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withInfluxAuthParametersSecretArn(InfluxAuthParametersSecretArn): {
    assert std.isString(InfluxAuthParametersSecretArn) : 'InfluxAuthParametersSecretArn must be a string',
    Properties+::: {
      InfluxAuthParametersSecretArn: InfluxAuthParametersSecretArn,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withDeploymentType(DeploymentType): {
    assert std.isString(DeploymentType) : 'DeploymentType must be a string',
    assert DeploymentType == 'SINGLE_AZ' || DeploymentType == 'WITH_MULTIAZ_STANDBY' : "DeploymentType should be 'SINGLE_AZ' or 'WITH_MULTIAZ_STANDBY'",
    Properties+::: {
      DeploymentType: DeploymentType,
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
}
