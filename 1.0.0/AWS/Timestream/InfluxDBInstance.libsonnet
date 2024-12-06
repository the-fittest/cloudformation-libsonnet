{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Timestream::InfluxDBInstance',
  },
  setUsername(Username): {
    Properties+::: {
      Username:
        if !std.isString(Username) then (error 'Username must be a string')
        else if std.isEmpty(Username) then (error 'Username must be not empty')
        else if std.length(Username) < 1 then error ('Username should have at least 1 characters')
        else if std.length(Username) > 64 then error ('Username should have not more than 64 characters')
        else Username,
    },
  },
  setPassword(Password): {
    Properties+::: {
      Password:
        if !std.isString(Password) then (error 'Password must be a string')
        else if std.isEmpty(Password) then (error 'Password must be not empty')
        else if std.length(Password) < 8 then error ('Password should have at least 8 characters')
        else if std.length(Password) > 64 then error ('Password should have not more than 64 characters')
        else Password,
    },
  },
  setOrganization(Organization): {
    Properties+::: {
      Organization:
        if !std.isString(Organization) then (error 'Organization must be a string')
        else if std.isEmpty(Organization) then (error 'Organization must be not empty')
        else if std.length(Organization) < 1 then error ('Organization should have at least 1 characters')
        else if std.length(Organization) > 64 then error ('Organization should have not more than 64 characters')
        else Organization,
    },
  },
  setBucket(Bucket): {
    Properties+::: {
      Bucket:
        if !std.isString(Bucket) then (error 'Bucket must be a string')
        else if std.isEmpty(Bucket) then (error 'Bucket must be not empty')
        else if std.length(Bucket) < 2 then error ('Bucket should have at least 2 characters')
        else if std.length(Bucket) > 64 then error ('Bucket should have not more than 64 characters')
        else Bucket,
    },
  },
  setDbInstanceType(DbInstanceType): {
    Properties+::: {
      DbInstanceType:
        if !std.isString(DbInstanceType) then (error 'DbInstanceType must be a string')
        else if std.isEmpty(DbInstanceType) then (error 'DbInstanceType must be not empty')
        else if DbInstanceType != 'db.influx.medium' && DbInstanceType != 'db.influx.large' && DbInstanceType != 'db.influx.xlarge' && DbInstanceType != 'db.influx.2xlarge' && DbInstanceType != 'db.influx.4xlarge' && DbInstanceType != 'db.influx.8xlarge' && DbInstanceType != 'db.influx.12xlarge' && DbInstanceType != 'db.influx.16xlarge' then (error "DbInstanceType should be 'db.influx.medium' or 'db.influx.large' or 'db.influx.xlarge' or 'db.influx.2xlarge' or 'db.influx.4xlarge' or 'db.influx.8xlarge' or 'db.influx.12xlarge' or 'db.influx.16xlarge'")
        else DbInstanceType,
    },
  },
  setVpcSubnetIds(VpcSubnetIds): {
    Properties+::: {
      VpcSubnetIds:
        if !std.isArray(VpcSubnetIds) then (error 'VpcSubnetIds must be an array')
        else if std.length(VpcSubnetIds) < 1 then error ('VpcSubnetIds cannot have less than 1 items')
        else if std.length(VpcSubnetIds) > 3 then error ('VpcSubnetIds cannot have more than 3 items')
        else VpcSubnetIds,
    },
  },
  pushVpcSubnetIds(VpcSubnetIds): {
    Properties+::: {
      VpcSubnetIds+: VpcSubnetIds,
    },
  },
  setVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else if std.length(VpcSecurityGroupIds) < 1 then error ('VpcSecurityGroupIds cannot have less than 1 items')
        else if std.length(VpcSecurityGroupIds) > 5 then error ('VpcSecurityGroupIds cannot have more than 5 items')
        else VpcSecurityGroupIds,
    },
  },
  pushVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setDbStorageType(DbStorageType): {
    Properties+::: {
      DbStorageType:
        if !std.isString(DbStorageType) then (error 'DbStorageType must be a string')
        else if std.isEmpty(DbStorageType) then (error 'DbStorageType must be not empty')
        else if DbStorageType != 'InfluxIOIncludedT1' && DbStorageType != 'InfluxIOIncludedT2' && DbStorageType != 'InfluxIOIncludedT3' then (error "DbStorageType should be 'InfluxIOIncludedT1' or 'InfluxIOIncludedT2' or 'InfluxIOIncludedT3'")
        else DbStorageType,
    },
  },
  setAllocatedStorage(AllocatedStorage): {
    Properties+::: {
      AllocatedStorage:
        if !std.isNumber(AllocatedStorage) then (error 'AllocatedStorage must be an number')
        else if AllocatedStorage < 20 then error ('AllocatedStorage should be at least 20')
        else if AllocatedStorage > 16384 then error ('AllocatedStorage should be not more than 16384')
        else AllocatedStorage,
    },
  },
  setDbParameterGroupIdentifier(DbParameterGroupIdentifier): {
    Properties+::: {
      DbParameterGroupIdentifier:
        if !std.isString(DbParameterGroupIdentifier) then (error 'DbParameterGroupIdentifier must be a string')
        else if std.isEmpty(DbParameterGroupIdentifier) then (error 'DbParameterGroupIdentifier must be not empty')
        else if std.length(DbParameterGroupIdentifier) < 3 then error ('DbParameterGroupIdentifier should have at least 3 characters')
        else if std.length(DbParameterGroupIdentifier) > 64 then error ('DbParameterGroupIdentifier should have not more than 64 characters')
        else DbParameterGroupIdentifier,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else if Port < 1024 then error ('Port should be at least 1024')
        else if Port > 65535 then error ('Port should be not more than 65535')
        else Port,
    },
  },
  setLogDeliveryConfiguration(LogDeliveryConfiguration): {
    Properties+::: {
      LogDeliveryConfiguration:
        if !std.isObject(LogDeliveryConfiguration) then (error 'LogDeliveryConfiguration must be an object')
        else if !std.objectHas(LogDeliveryConfiguration, 'S3Configuration') then (error ' have attribute S3Configuration')
        else LogDeliveryConfiguration,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'AVAILABLE' && Status != 'DELETING' && Status != 'MODIFYING' && Status != 'UPDATING' && Status != 'UPDATING_DEPLOYMENT_TYPE' && Status != 'UPDATING_INSTANCE_TYPE' && Status != 'DELETED' && Status != 'FAILED' then (error "Status should be 'CREATING' or 'AVAILABLE' or 'DELETING' or 'MODIFYING' or 'UPDATING' or 'UPDATING_DEPLOYMENT_TYPE' or 'UPDATING_INSTANCE_TYPE' or 'DELETED' or 'FAILED'")
        else Status,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1011 then error ('Arn should have not more than 1011 characters')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 40 then error ('Name should have not more than 40 characters')
        else Name,
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
  setSecondaryAvailabilityZone(SecondaryAvailabilityZone): {
    Properties+::: {
      SecondaryAvailabilityZone:
        if !std.isString(SecondaryAvailabilityZone) then (error 'SecondaryAvailabilityZone must be a string')
        else if std.isEmpty(SecondaryAvailabilityZone) then (error 'SecondaryAvailabilityZone must be not empty')
        else SecondaryAvailabilityZone,
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
  setInfluxAuthParametersSecretArn(InfluxAuthParametersSecretArn): {
    Properties+::: {
      InfluxAuthParametersSecretArn:
        if !std.isString(InfluxAuthParametersSecretArn) then (error 'InfluxAuthParametersSecretArn must be a string')
        else if std.isEmpty(InfluxAuthParametersSecretArn) then (error 'InfluxAuthParametersSecretArn must be not empty')
        else InfluxAuthParametersSecretArn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 3 then error ('Id should have at least 3 characters')
        else if std.length(Id) > 64 then error ('Id should have not more than 64 characters')
        else Id,
    },
  },
  setDeploymentType(DeploymentType): {
    Properties+::: {
      DeploymentType:
        if !std.isString(DeploymentType) then (error 'DeploymentType must be a string')
        else if std.isEmpty(DeploymentType) then (error 'DeploymentType must be not empty')
        else if DeploymentType != 'SINGLE_AZ' && DeploymentType != 'WITH_MULTIAZ_STANDBY' then (error "DeploymentType should be 'SINGLE_AZ' or 'WITH_MULTIAZ_STANDBY'")
        else DeploymentType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
