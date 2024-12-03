local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessPoint: {
    '#': d.pkg(
      name='AccessPoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EFS.libsonnet',
      help='The AWS::EFS::AccessPoint resource creates an EFS access point. An access point is an application-specific view into an EFS file system that applies an operating system user and group, and a file system path, to any file system request made through the access point. The operating system user and group override any identity information provided by the NFS client. The file system path is exposed as the access points root directory. Applications using the access point can only access data in its own directory and below. To learn more, see [Mounting a file system using EFS access points](https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html). This operation requires permissions for the elasticfilesystem:CreateAccessPoint action.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EFS::AccessPoint Resource
        * FileSystemId The ID of the EFS file system that the access point applies to. Accepts only the ID format for input when specifying a file system, for example fs-0123456789abcedf2.
      |||,
      args=[
        d.arg('FileSystemId', 'd.T.string'),
      ]
    ),
    new(
      FileSystemId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
      },
      DependsOn:: [],
      Type: 'AWS::EFS::AccessPoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessPointId': d.fn('`withAccessPointId` AccessPointId ', [d.arg('AccessPointId', d.T.string)]),
    withAccessPointId(AccessPointId): {
      assert std.isString(AccessPointId) : 'AccessPointId must be a string',
      Properties+::: { AccessPointId: AccessPointId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withAccessPointTags': d.fn('`withAccessPointTags` AccessPointTags ', [d.arg('AccessPointTags', d.T.array)]),
    withAccessPointTags(AccessPointTags): {
      assert std.isArray(AccessPointTags) : 'AccessPointTags must be a array',
      Properties+::: { AccessPointTags: AccessPointTags },
    },
    '#withPosixUser': d.fn('`withPosixUser` PosixUser ', [d.arg('PosixUser', d.T.object)]),
    withPosixUser(PosixUser): {
      assert std.isObject(PosixUser) : 'PosixUser must be a object',
      Properties+::: { PosixUser: PosixUser },
    },
    '#withRootDirectory': d.fn('`withRootDirectory` RootDirectory ', [d.arg('RootDirectory', d.T.object)]),
    withRootDirectory(RootDirectory): {
      assert std.isObject(RootDirectory) : 'RootDirectory must be a object',
      Properties+::: { RootDirectory: RootDirectory },
    },
  },
  FileSystem: {
    '#': d.pkg(
      name='FileSystem',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EFS.libsonnet',
      help='The AWS::EFS::FileSystem resource creates a new, empty file system in EFSlong (EFS). You must create a mount target ([AWS::EFS::MountTarget](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html)) to mount your EFS file system on an EC2 or other AWS cloud compute resource.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EFS::FileSystem Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EFS::FileSystem',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFileSystemId': d.fn('`withFileSystemId` FileSystemId ', [d.arg('FileSystemId', d.T.string)]),
    withFileSystemId(FileSystemId): {
      assert std.isString(FileSystemId) : 'FileSystemId must be a string',
      Properties+::: { FileSystemId: FileSystemId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withEncrypted': d.fn('`withEncrypted` Encrypted ', [d.arg('Encrypted', d.T.boolean)]),
    withEncrypted(Encrypted): {
      assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
      Properties+::: { Encrypted: Encrypted },
    },
    '#withFileSystemTags': d.fn('`withFileSystemTags` FileSystemTags ', [d.arg('FileSystemTags', d.T.array)]),
    withFileSystemTags(FileSystemTags): {
      assert std.isArray(FileSystemTags) : 'FileSystemTags must be a array',
      Properties+::: { FileSystemTags: FileSystemTags },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withLifecyclePolicies': d.fn('`withLifecyclePolicies` LifecyclePolicies ', [d.arg('LifecyclePolicies', d.T.array)]),
    withLifecyclePolicies(LifecyclePolicies): {
      assert std.isArray(LifecyclePolicies) : 'LifecyclePolicies must be a array',
      Properties+::: { LifecyclePolicies: LifecyclePolicies },
    },
    '#withFileSystemProtection': d.fn('`withFileSystemProtection` FileSystemProtection ', [d.arg('FileSystemProtection', d.T.object)]),
    withFileSystemProtection(FileSystemProtection): {
      assert std.isObject(FileSystemProtection) : 'FileSystemProtection must be a object',
      Properties+::: { FileSystemProtection: FileSystemProtection },
    },
    '#withPerformanceMode': d.fn('`withPerformanceMode` PerformanceMode ', [d.arg('PerformanceMode', d.T.string)]),
    withPerformanceMode(PerformanceMode): {
      assert std.isString(PerformanceMode) : 'PerformanceMode must be a string',
      Properties+::: { PerformanceMode: PerformanceMode },
    },
    '#withProvisionedThroughputInMibps': d.fn('`withProvisionedThroughputInMibps` ProvisionedThroughputInMibps ', [d.arg('ProvisionedThroughputInMibps', d.T.integer)]),
    withProvisionedThroughputInMibps(ProvisionedThroughputInMibps): {
      // Type: number
      Properties+::: { ProvisionedThroughputInMibps: ProvisionedThroughputInMibps },
    },
    '#withThroughputMode': d.fn('`withThroughputMode` ThroughputMode ', [d.arg('ThroughputMode', d.T.string)]),
    withThroughputMode(ThroughputMode): {
      assert std.isString(ThroughputMode) : 'ThroughputMode must be a string',
      Properties+::: { ThroughputMode: ThroughputMode },
    },
    '#withFileSystemPolicy': d.fn('`withFileSystemPolicy` FileSystemPolicy ', [d.arg('FileSystemPolicy', d.T.object)]),
    withFileSystemPolicy(FileSystemPolicy): {
      assert std.isObject(FileSystemPolicy) : 'FileSystemPolicy must be a object',
      Properties+::: { FileSystemPolicy: FileSystemPolicy },
    },
    '#withBypassPolicyLockoutSafetyCheck': d.fn('`withBypassPolicyLockoutSafetyCheck` BypassPolicyLockoutSafetyCheck ', [d.arg('BypassPolicyLockoutSafetyCheck', d.T.boolean)]),
    withBypassPolicyLockoutSafetyCheck(BypassPolicyLockoutSafetyCheck): {
      assert std.isBoolean(BypassPolicyLockoutSafetyCheck) : 'BypassPolicyLockoutSafetyCheck must be a boolean',
      Properties+::: { BypassPolicyLockoutSafetyCheck: BypassPolicyLockoutSafetyCheck },
    },
    '#withBackupPolicy': d.fn('`withBackupPolicy` BackupPolicy ', [d.arg('BackupPolicy', d.T.object)]),
    withBackupPolicy(BackupPolicy): {
      assert std.isObject(BackupPolicy) : 'BackupPolicy must be a object',
      Properties+::: { BackupPolicy: BackupPolicy },
    },
    '#withAvailabilityZoneName': d.fn('`withAvailabilityZoneName` AvailabilityZoneName ', [d.arg('AvailabilityZoneName', d.T.string)]),
    withAvailabilityZoneName(AvailabilityZoneName): {
      assert std.isString(AvailabilityZoneName) : 'AvailabilityZoneName must be a string',
      Properties+::: { AvailabilityZoneName: AvailabilityZoneName },
    },
    '#withReplicationConfiguration': d.fn('`withReplicationConfiguration` ReplicationConfiguration ', [d.arg('ReplicationConfiguration', d.T.object)]),
    withReplicationConfiguration(ReplicationConfiguration): {
      assert std.isObject(ReplicationConfiguration) : 'ReplicationConfiguration must be a object',
      Properties+::: { ReplicationConfiguration: ReplicationConfiguration },
    },
  },
  MountTarget: {
    '#': d.pkg(
      name='MountTarget',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EFS.libsonnet',
      help='The AWS::EFS::MountTarget resource is an Amazon EFS resource that creates a mount target for an EFS file system. You can then mount the file system on Amazon EC2 instances or other resources by using the mount target.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EFS::MountTarget Resource
        * FileSystemId The ID of the file system for which to create the mount target.
        * SecurityGroups Up to five VPC security group IDs, of the form sg-xxxxxxxx. These must be for the same VPC as subnet specified.
        * SubnetId The ID of the subnet to add the mount target in. For One Zone file systems, use the subnet that is associated with the file systems Availability Zone.
      |||,
      args=[
        d.arg('FileSystemId', 'd.T.string'),
        d.arg('SecurityGroups', 'd.T.array'),
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      FileSystemId,
      SecurityGroups,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
        assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
        SecurityGroups: SecurityGroups,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::EFS::MountTarget',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIpAddress': d.fn('`withIpAddress` IpAddress ', [d.arg('IpAddress', d.T.string)]),
    withIpAddress(IpAddress): {
      assert std.isString(IpAddress) : 'IpAddress must be a string',
      Properties+::: { IpAddress: IpAddress },
    },
  },
}
