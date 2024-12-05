{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 1024 then error ('Name should have not more than 1024 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::Fleet',
  },
  setScalingPolicies(ScalingPolicies): {
    Properties+::: {
      ScalingPolicies:
        if !std.isArray(ScalingPolicies) then (error 'ScalingPolicies must be an array')
        else if std.length(ScalingPolicies) > 50 then error ('ScalingPolicies cannot have more than 50 items')
        else ScalingPolicies,
    },
  },
  setScalingPoliciesMixin(ScalingPolicies): {
    Properties+::: {
      ScalingPolicies+: ScalingPolicies,
    },
  },
  setAnywhereConfiguration(AnywhereConfiguration): {
    Properties+::: {
      AnywhereConfiguration: AnywhereConfiguration,
    },
  },
  setApplyCapacity(ApplyCapacity): {
    Properties+::: {
      ApplyCapacity:
        if !std.isString(ApplyCapacity) then (error 'ApplyCapacity must be a string')
        else if std.isEmpty(ApplyCapacity) then (error 'ApplyCapacity must be not empty')
        else if ApplyCapacity != 'ON_UPDATE' && ApplyCapacity != 'ON_CREATE_AND_UPDATE' then (error "ApplyCapacity should be 'ON_UPDATE' or 'ON_CREATE_AND_UPDATE'")
        else ApplyCapacity,
    },
  },
  setCertificateConfiguration(CertificateConfiguration): {
    Properties+::: {
      CertificateConfiguration:
        if !std.isObject(CertificateConfiguration) then (error 'CertificateConfiguration must be an object')
        else if !std.objectHas(CertificateConfiguration, 'CertificateType') then (error ' have attribute CertificateType')
        else CertificateConfiguration,
    },
  },
  setComputeType(ComputeType): {
    Properties+::: {
      ComputeType:
        if !std.isString(ComputeType) then (error 'ComputeType must be a string')
        else if std.isEmpty(ComputeType) then (error 'ComputeType must be not empty')
        else if ComputeType != 'EC2' && ComputeType != 'ANYWHERE' then (error "ComputeType should be 'EC2' or 'ANYWHERE'")
        else ComputeType,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setDesiredEC2Instances(DesiredEC2Instances): {
    Properties+::: {
      DesiredEC2Instances:
        if !std.isNumber(DesiredEC2Instances) then (error 'DesiredEC2Instances must be an number')
        else DesiredEC2Instances,
    },
  },
  setEC2InboundPermissions(EC2InboundPermissions): {
    Properties+::: {
      EC2InboundPermissions:
        if !std.isArray(EC2InboundPermissions) then (error 'EC2InboundPermissions must be an array')
        else if std.length(EC2InboundPermissions) > 50 then error ('EC2InboundPermissions cannot have more than 50 items')
        else EC2InboundPermissions,
    },
  },
  setEC2InboundPermissionsMixin(EC2InboundPermissions): {
    Properties+::: {
      EC2InboundPermissions+: EC2InboundPermissions,
    },
  },
  setEC2InstanceType(EC2InstanceType): {
    Properties+::: {
      EC2InstanceType:
        if !std.isString(EC2InstanceType) then (error 'EC2InstanceType must be a string')
        else if std.isEmpty(EC2InstanceType) then (error 'EC2InstanceType must be not empty')
        else EC2InstanceType,
    },
  },
  setFleetType(FleetType): {
    Properties+::: {
      FleetType:
        if !std.isString(FleetType) then (error 'FleetType must be a string')
        else if std.isEmpty(FleetType) then (error 'FleetType must be not empty')
        else if FleetType != 'ON_DEMAND' && FleetType != 'SPOT' then (error "FleetType should be 'ON_DEMAND' or 'SPOT'")
        else FleetType,
    },
  },
  setInstanceRoleARN(InstanceRoleARN): {
    Properties+::: {
      InstanceRoleARN:
        if !std.isString(InstanceRoleARN) then (error 'InstanceRoleARN must be a string')
        else if std.isEmpty(InstanceRoleARN) then (error 'InstanceRoleARN must be not empty')
        else if std.length(InstanceRoleARN) < 1 then error ('InstanceRoleARN should have at least 1 characters')
        else InstanceRoleARN,
    },
  },
  setInstanceRoleCredentialsProvider(InstanceRoleCredentialsProvider): {
    Properties+::: {
      InstanceRoleCredentialsProvider:
        if !std.isString(InstanceRoleCredentialsProvider) then (error 'InstanceRoleCredentialsProvider must be a string')
        else if std.isEmpty(InstanceRoleCredentialsProvider) then (error 'InstanceRoleCredentialsProvider must be not empty')
        else if InstanceRoleCredentialsProvider != 'SHARED_CREDENTIAL_FILE' then (error "InstanceRoleCredentialsProvider should be 'SHARED_CREDENTIAL_FILE'")
        else InstanceRoleCredentialsProvider,
    },
  },
  setLocations(Locations): {
    Properties+::: {
      Locations:
        if !std.isArray(Locations) then (error 'Locations must be an array')
        else if std.length(Locations) < 1 then error ('Locations cannot have less than 1 items')
        else if std.length(Locations) > 100 then error ('Locations cannot have more than 100 items')
        else Locations,
    },
  },
  setLocationsMixin(Locations): {
    Properties+::: {
      Locations+: Locations,
    },
  },
  setLogPaths(LogPaths): {
    Properties+::: {
      LogPaths:
        if !std.isArray(LogPaths) then (error 'LogPaths must be an array')
        else LogPaths,
    },
  },
  setLogPathsMixin(LogPaths): {
    Properties+::: {
      LogPaths+: LogPaths,
    },
  },
  setMaxSize(MaxSize): {
    Properties+::: {
      MaxSize:
        if !std.isNumber(MaxSize) then (error 'MaxSize must be an number')
        else MaxSize,
    },
  },
  setMetricGroups(MetricGroups): {
    Properties+::: {
      MetricGroups:
        if !std.isArray(MetricGroups) then (error 'MetricGroups must be an array')
        else if std.length(MetricGroups) > 1 then error ('MetricGroups cannot have more than 1 items')
        else MetricGroups,
    },
  },
  setMetricGroupsMixin(MetricGroups): {
    Properties+::: {
      MetricGroups+: MetricGroups,
    },
  },
  setMinSize(MinSize): {
    Properties+::: {
      MinSize:
        if !std.isNumber(MinSize) then (error 'MinSize must be an number')
        else MinSize,
    },
  },
  setNewGameSessionProtectionPolicy(NewGameSessionProtectionPolicy): {
    Properties+::: {
      NewGameSessionProtectionPolicy:
        if !std.isString(NewGameSessionProtectionPolicy) then (error 'NewGameSessionProtectionPolicy must be a string')
        else if std.isEmpty(NewGameSessionProtectionPolicy) then (error 'NewGameSessionProtectionPolicy must be not empty')
        else if NewGameSessionProtectionPolicy != 'FullProtection' && NewGameSessionProtectionPolicy != 'NoProtection' then (error "NewGameSessionProtectionPolicy should be 'FullProtection' or 'NoProtection'")
        else NewGameSessionProtectionPolicy,
    },
  },
  setPeerVpcAwsAccountId(PeerVpcAwsAccountId): {
    Properties+::: {
      PeerVpcAwsAccountId:
        if !std.isString(PeerVpcAwsAccountId) then (error 'PeerVpcAwsAccountId must be a string')
        else if std.isEmpty(PeerVpcAwsAccountId) then (error 'PeerVpcAwsAccountId must be not empty')
        else if std.length(PeerVpcAwsAccountId) < 1 then error ('PeerVpcAwsAccountId should have at least 1 characters')
        else if std.length(PeerVpcAwsAccountId) > 1024 then error ('PeerVpcAwsAccountId should have not more than 1024 characters')
        else PeerVpcAwsAccountId,
    },
  },
  setPeerVpcId(PeerVpcId): {
    Properties+::: {
      PeerVpcId:
        if !std.isString(PeerVpcId) then (error 'PeerVpcId must be a string')
        else if std.isEmpty(PeerVpcId) then (error 'PeerVpcId must be not empty')
        else if std.length(PeerVpcId) < 1 then error ('PeerVpcId should have at least 1 characters')
        else if std.length(PeerVpcId) > 1024 then error ('PeerVpcId should have not more than 1024 characters')
        else PeerVpcId,
    },
  },
  setResourceCreationLimitPolicy(ResourceCreationLimitPolicy): {
    Properties+::: {
      ResourceCreationLimitPolicy:
        if !std.isObject(ResourceCreationLimitPolicy) then (error 'ResourceCreationLimitPolicy must be an object')
        else ResourceCreationLimitPolicy,
    },
  },
  setFleetId(FleetId): {
    Properties+::: {
      FleetId:
        if !std.isString(FleetId) then (error 'FleetId must be a string')
        else if std.isEmpty(FleetId) then (error 'FleetId must be not empty')
        else FleetId,
    },
  },
  setBuildId(BuildId): {
    Properties+::: {
      BuildId:
        if !std.isString(BuildId) then (error 'BuildId must be a string')
        else if std.isEmpty(BuildId) then (error 'BuildId must be not empty')
        else BuildId,
    },
  },
  setScriptId(ScriptId): {
    Properties+::: {
      ScriptId:
        if !std.isString(ScriptId) then (error 'ScriptId must be a string')
        else if std.isEmpty(ScriptId) then (error 'ScriptId must be not empty')
        else ScriptId,
    },
  },
  setRuntimeConfiguration(RuntimeConfiguration): {
    Properties+::: {
      RuntimeConfiguration:
        if !std.isObject(RuntimeConfiguration) then (error 'RuntimeConfiguration must be an object')
        else RuntimeConfiguration,
    },
  },
  setServerLaunchParameters(ServerLaunchParameters): {
    Properties+::: {
      ServerLaunchParameters:
        if !std.isString(ServerLaunchParameters) then (error 'ServerLaunchParameters must be a string')
        else if std.isEmpty(ServerLaunchParameters) then (error 'ServerLaunchParameters must be not empty')
        else if std.length(ServerLaunchParameters) < 1 then error ('ServerLaunchParameters should have at least 1 characters')
        else if std.length(ServerLaunchParameters) > 1024 then error ('ServerLaunchParameters should have not more than 1024 characters')
        else ServerLaunchParameters,
    },
  },
  setServerLaunchPath(ServerLaunchPath): {
    Properties+::: {
      ServerLaunchPath:
        if !std.isString(ServerLaunchPath) then (error 'ServerLaunchPath must be a string')
        else if std.isEmpty(ServerLaunchPath) then (error 'ServerLaunchPath must be not empty')
        else if std.length(ServerLaunchPath) < 1 then error ('ServerLaunchPath should have at least 1 characters')
        else if std.length(ServerLaunchPath) > 1024 then error ('ServerLaunchPath should have not more than 1024 characters')
        else ServerLaunchPath,
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
