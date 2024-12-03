local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DataRepositoryAssociation: {
    '#': d.pkg(
      name='DataRepositoryAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FSx.libsonnet',
      help='Creates an Amazon FSx for Lustre data repository association (DRA). A data repository association is a link between a directory on the file system and an Amazon S3 bucket or prefix. You can have a maximum of 8 data repository associations on a file system. Data repository associations are supported on all FSx for Lustre 2.12 and newer file systems, excluding scratch_1 deployment type.  Each data repository association must have a unique Amazon FSx file system directory and a unique S3 bucket or prefix associated with it. You can configure a data repository association for automatic import only, for automatic export only, or for both. To learn more about linking a data repository to your file system, see [Linking your file system to an S3 bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FSx::DataRepositoryAssociation Resource
        * FileSystemId The ID of the file system on which the data repository association is configured.
        * FileSystemPath A path on the Amazon FSx for Lustre file system that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with DataRepositoryPath. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path /ns1/, then you cannot link another data repository with file system path /ns1/ns2. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.If you specify only a forward slash (/) as the file system path, you can link only one data repository to the file system. You can only specify &#34;/&#34; as the file system path for the first data repository associated with a file system.
        * DataRepositoryPath The path to the Amazon S3 data repository that will be linked to the file system. The path can be an S3 bucket or prefix in the format s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to.
      |||,
      args=[
        d.arg('FileSystemId', 'd.T.string'),
        d.arg('FileSystemPath', 'd.T.string'),
        d.arg('DataRepositoryPath', 'd.T.string'),
      ]
    ),
    new(
      FileSystemId,
      FileSystemPath,
      DataRepositoryPath,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
        assert std.isString(FileSystemPath) : 'FileSystemPath must be a string',
        FileSystemPath: FileSystemPath,
        assert std.isString(DataRepositoryPath) : 'DataRepositoryPath must be a string',
        DataRepositoryPath: DataRepositoryPath,
      },
      DependsOn:: [],
      Type: 'AWS::FSx::DataRepositoryAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
    '#withResourceARN': d.fn('`withResourceARN` ResourceARN ', [d.arg('ResourceARN', d.T.string)]),
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: { ResourceARN: ResourceARN },
    },
    '#withBatchImportMetaDataOnCreate': d.fn('`withBatchImportMetaDataOnCreate` BatchImportMetaDataOnCreate ', [d.arg('BatchImportMetaDataOnCreate', d.T.boolean)]),
    withBatchImportMetaDataOnCreate(BatchImportMetaDataOnCreate): {
      assert std.isBoolean(BatchImportMetaDataOnCreate) : 'BatchImportMetaDataOnCreate must be a boolean',
      Properties+::: { BatchImportMetaDataOnCreate: BatchImportMetaDataOnCreate },
    },
    '#withImportedFileChunkSize': d.fn('`withImportedFileChunkSize` ImportedFileChunkSize ', [d.arg('ImportedFileChunkSize', d.T.integer)]),
    withImportedFileChunkSize(ImportedFileChunkSize): {
      assert std.isNumber(ImportedFileChunkSize) : 'ImportedFileChunkSize must be a integer',
      Properties+::: { ImportedFileChunkSize: ImportedFileChunkSize },
    },
    '#withS3': d.fn('`withS3` S3 ', [d.arg('S3', d.T.object)]),
    withS3(S3): {
      assert std.isObject(S3) : 'S3 must be a object',
      Properties+::: { S3: S3 },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  FileSystem: {
    '#': d.pkg(
      name='FileSystem',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FSx.libsonnet',
      help='Resource Type definition for AWS::FSx::FileSystem',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FSx::FileSystem Resource
        * FileSystemType 
        * SubnetIds 
      |||,
      args=[
        d.arg('FileSystemType', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      FileSystemType,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemType) : 'FileSystemType must be a string',
        FileSystemType: FileSystemType,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::FSx::FileSystem',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStorageType': d.fn('`withStorageType` StorageType ', [d.arg('StorageType', d.T.string)]),
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: { StorageType: StorageType },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withStorageCapacity': d.fn('`withStorageCapacity` StorageCapacity ', [d.arg('StorageCapacity', d.T.integer)]),
    withStorageCapacity(StorageCapacity): {
      assert std.isNumber(StorageCapacity) : 'StorageCapacity must be a integer',
      Properties+::: { StorageCapacity: StorageCapacity },
    },
    '#withRootVolumeId': d.fn('`withRootVolumeId` RootVolumeId ', [d.arg('RootVolumeId', d.T.string)]),
    withRootVolumeId(RootVolumeId): {
      assert std.isString(RootVolumeId) : 'RootVolumeId must be a string',
      Properties+::: { RootVolumeId: RootVolumeId },
    },
    '#withLustreConfiguration': d.fn('`withLustreConfiguration` LustreConfiguration ', [d.arg('LustreConfiguration', d.T.object)]),
    withLustreConfiguration(LustreConfiguration): {
      assert std.isObject(LustreConfiguration) : 'LustreConfiguration must be a object',
      Properties+::: { LustreConfiguration: LustreConfiguration },
    },
    '#withBackupId': d.fn('`withBackupId` BackupId ', [d.arg('BackupId', d.T.string)]),
    withBackupId(BackupId): {
      assert std.isString(BackupId) : 'BackupId must be a string',
      Properties+::: { BackupId: BackupId },
    },
    '#withOntapConfiguration': d.fn('`withOntapConfiguration` OntapConfiguration ', [d.arg('OntapConfiguration', d.T.object)]),
    withOntapConfiguration(OntapConfiguration): {
      assert std.isObject(OntapConfiguration) : 'OntapConfiguration must be a object',
      Properties+::: { OntapConfiguration: OntapConfiguration },
    },
    '#withDNSName': d.fn('`withDNSName` DNSName ', [d.arg('DNSName', d.T.string)]),
    withDNSName(DNSName): {
      assert std.isString(DNSName) : 'DNSName must be a string',
      Properties+::: { DNSName: DNSName },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withWindowsConfiguration': d.fn('`withWindowsConfiguration` WindowsConfiguration ', [d.arg('WindowsConfiguration', d.T.object)]),
    withWindowsConfiguration(WindowsConfiguration): {
      assert std.isObject(WindowsConfiguration) : 'WindowsConfiguration must be a object',
      Properties+::: { WindowsConfiguration: WindowsConfiguration },
    },
    '#withFileSystemTypeVersion': d.fn('`withFileSystemTypeVersion` FileSystemTypeVersion ', [d.arg('FileSystemTypeVersion', d.T.string)]),
    withFileSystemTypeVersion(FileSystemTypeVersion): {
      assert std.isString(FileSystemTypeVersion) : 'FileSystemTypeVersion must be a string',
      Properties+::: { FileSystemTypeVersion: FileSystemTypeVersion },
    },
    '#withOpenZFSConfiguration': d.fn('`withOpenZFSConfiguration` OpenZFSConfiguration ', [d.arg('OpenZFSConfiguration', d.T.object)]),
    withOpenZFSConfiguration(OpenZFSConfiguration): {
      assert std.isObject(OpenZFSConfiguration) : 'OpenZFSConfiguration must be a object',
      Properties+::: { OpenZFSConfiguration: OpenZFSConfiguration },
    },
    '#withResourceARN': d.fn('`withResourceARN` ResourceARN ', [d.arg('ResourceARN', d.T.string)]),
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: { ResourceARN: ResourceARN },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLustreMountName': d.fn('`withLustreMountName` LustreMountName ', [d.arg('LustreMountName', d.T.string)]),
    withLustreMountName(LustreMountName): {
      assert std.isString(LustreMountName) : 'LustreMountName must be a string',
      Properties+::: { LustreMountName: LustreMountName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Snapshot: {
    '#': d.pkg(
      name='Snapshot',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FSx.libsonnet',
      help='Resource Type definition for AWS::FSx::Snapshot',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FSx::Snapshot Resource
        * VolumeId 
        * Name 
      |||,
      args=[
        d.arg('VolumeId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      VolumeId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(VolumeId) : 'VolumeId must be a string',
        VolumeId: VolumeId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::FSx::Snapshot',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResourceARN': d.fn('`withResourceARN` ResourceARN ', [d.arg('ResourceARN', d.T.string)]),
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: { ResourceARN: ResourceARN },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  StorageVirtualMachine: {
    '#': d.pkg(
      name='StorageVirtualMachine',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FSx.libsonnet',
      help='Resource Type definition for AWS::FSx::StorageVirtualMachine',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FSx::StorageVirtualMachine Resource
        * FileSystemId 
        * Name 
      |||,
      args=[
        d.arg('FileSystemId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      FileSystemId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::FSx::StorageVirtualMachine',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResourceARN': d.fn('`withResourceARN` ResourceARN ', [d.arg('ResourceARN', d.T.string)]),
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: { ResourceARN: ResourceARN },
    },
    '#withSvmAdminPassword': d.fn('`withSvmAdminPassword` SvmAdminPassword ', [d.arg('SvmAdminPassword', d.T.string)]),
    withSvmAdminPassword(SvmAdminPassword): {
      assert std.isString(SvmAdminPassword) : 'SvmAdminPassword must be a string',
      Properties+::: { SvmAdminPassword: SvmAdminPassword },
    },
    '#withStorageVirtualMachineId': d.fn('`withStorageVirtualMachineId` StorageVirtualMachineId ', [d.arg('StorageVirtualMachineId', d.T.string)]),
    withStorageVirtualMachineId(StorageVirtualMachineId): {
      assert std.isString(StorageVirtualMachineId) : 'StorageVirtualMachineId must be a string',
      Properties+::: { StorageVirtualMachineId: StorageVirtualMachineId },
    },
    '#withActiveDirectoryConfiguration': d.fn('`withActiveDirectoryConfiguration` ActiveDirectoryConfiguration ', [d.arg('ActiveDirectoryConfiguration', d.T.object)]),
    withActiveDirectoryConfiguration(ActiveDirectoryConfiguration): {
      assert std.isObject(ActiveDirectoryConfiguration) : 'ActiveDirectoryConfiguration must be a object',
      Properties+::: { ActiveDirectoryConfiguration: ActiveDirectoryConfiguration },
    },
    '#withRootVolumeSecurityStyle': d.fn('`withRootVolumeSecurityStyle` RootVolumeSecurityStyle ', [d.arg('RootVolumeSecurityStyle', d.T.string)]),
    withRootVolumeSecurityStyle(RootVolumeSecurityStyle): {
      assert std.isString(RootVolumeSecurityStyle) : 'RootVolumeSecurityStyle must be a string',
      Properties+::: { RootVolumeSecurityStyle: RootVolumeSecurityStyle },
    },
    '#withUUID': d.fn('`withUUID` UUID ', [d.arg('UUID', d.T.string)]),
    withUUID(UUID): {
      assert std.isString(UUID) : 'UUID must be a string',
      Properties+::: { UUID: UUID },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Volume: {
    '#': d.pkg(
      name='Volume',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FSx.libsonnet',
      help='Resource Type definition for AWS::FSx::Volume',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FSx::Volume Resource
        * Name 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::FSx::Volume',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOpenZFSConfiguration': d.fn('`withOpenZFSConfiguration` OpenZFSConfiguration ', [d.arg('OpenZFSConfiguration', d.T.object)]),
    withOpenZFSConfiguration(OpenZFSConfiguration): {
      assert std.isObject(OpenZFSConfiguration) : 'OpenZFSConfiguration must be a object',
      Properties+::: { OpenZFSConfiguration: OpenZFSConfiguration },
    },
    '#withResourceARN': d.fn('`withResourceARN` ResourceARN ', [d.arg('ResourceARN', d.T.string)]),
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: { ResourceARN: ResourceARN },
    },
    '#withVolumeId': d.fn('`withVolumeId` VolumeId ', [d.arg('VolumeId', d.T.string)]),
    withVolumeId(VolumeId): {
      assert std.isString(VolumeId) : 'VolumeId must be a string',
      Properties+::: { VolumeId: VolumeId },
    },
    '#withVolumeType': d.fn('`withVolumeType` VolumeType ', [d.arg('VolumeType', d.T.string)]),
    withVolumeType(VolumeType): {
      assert std.isString(VolumeType) : 'VolumeType must be a string',
      Properties+::: { VolumeType: VolumeType },
    },
    '#withBackupId': d.fn('`withBackupId` BackupId ', [d.arg('BackupId', d.T.string)]),
    withBackupId(BackupId): {
      assert std.isString(BackupId) : 'BackupId must be a string',
      Properties+::: { BackupId: BackupId },
    },
    '#withOntapConfiguration': d.fn('`withOntapConfiguration` OntapConfiguration ', [d.arg('OntapConfiguration', d.T.object)]),
    withOntapConfiguration(OntapConfiguration): {
      assert std.isObject(OntapConfiguration) : 'OntapConfiguration must be a object',
      Properties+::: { OntapConfiguration: OntapConfiguration },
    },
    '#withUUID': d.fn('`withUUID` UUID ', [d.arg('UUID', d.T.string)]),
    withUUID(UUID): {
      assert std.isString(UUID) : 'UUID must be a string',
      Properties+::: { UUID: UUID },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
