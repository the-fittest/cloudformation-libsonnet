local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Agent: {
    '#': d.pkg(
      name='Agent',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::Agent.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::Agent Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::Agent',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAgentName': d.fn('`withAgentName` AgentName ', [d.arg('AgentName', d.T.string)]),
    withAgentName(AgentName): {
      assert std.isString(AgentName) : 'AgentName must be a string',
      Properties+::: { AgentName: AgentName },
    },
    '#withActivationKey': d.fn('`withActivationKey` ActivationKey ', [d.arg('ActivationKey', d.T.string)]),
    withActivationKey(ActivationKey): {
      assert std.isString(ActivationKey) : 'ActivationKey must be a string',
      Properties+::: { ActivationKey: ActivationKey },
    },
    '#withSecurityGroupArns': d.fn('`withSecurityGroupArns` SecurityGroupArns ', [d.arg('SecurityGroupArns', d.T.array)]),
    withSecurityGroupArns(SecurityGroupArns): {
      assert std.isArray(SecurityGroupArns) : 'SecurityGroupArns must be a array',
      Properties+::: { SecurityGroupArns: SecurityGroupArns },
    },
    '#withSubnetArns': d.fn('`withSubnetArns` SubnetArns ', [d.arg('SubnetArns', d.T.array)]),
    withSubnetArns(SubnetArns): {
      assert std.isArray(SubnetArns) : 'SubnetArns must be a array',
      Properties+::: { SubnetArns: SubnetArns },
    },
    '#withVpcEndpointId': d.fn('`withVpcEndpointId` VpcEndpointId ', [d.arg('VpcEndpointId', d.T.string)]),
    withVpcEndpointId(VpcEndpointId): {
      assert std.isString(VpcEndpointId) : 'VpcEndpointId must be a string',
      Properties+::: { VpcEndpointId: VpcEndpointId },
    },
    '#withEndpointType': d.fn('`withEndpointType` EndpointType ', [d.arg('EndpointType', d.T.string)]),
    withEndpointType(EndpointType): {
      assert std.isString(EndpointType) : 'EndpointType must be a string',
      assert EndpointType == 'FIPS' || EndpointType == 'PUBLIC' || EndpointType == 'PRIVATE_LINK' : "EndpointType must be either 'FIPS' or 'PUBLIC' or 'PRIVATE_LINK'",
      Properties+::: { EndpointType: EndpointType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAgentArn': d.fn('`withAgentArn` AgentArn ', [d.arg('AgentArn', d.T.string)]),
    withAgentArn(AgentArn): {
      assert std.isString(AgentArn) : 'AgentArn must be a string',
      Properties+::: { AgentArn: AgentArn },
    },
  },
  LocationAzureBlob: {
    '#': d.pkg(
      name='LocationAzureBlob',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationAzureBlob.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationAzureBlob Resource
        * AzureBlobAuthenticationType The specific authentication type that you want DataSync to use to access your Azure Blob Container.
        * AgentArns The Amazon Resource Names (ARNs) of agents to use for an Azure Blob Location.
      |||,
      args=[
        d.arg('AzureBlobAuthenticationType', 'd.T.string'),
        d.arg('AgentArns', 'd.T.array'),
      ]
    ),
    new(
      AzureBlobAuthenticationType,
      AgentArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AzureBlobAuthenticationType) : 'AzureBlobAuthenticationType must be a string',
        assert AzureBlobAuthenticationType == 'SAS' : "AzureBlobAuthenticationType must be either 'SAS'",
        AzureBlobAuthenticationType: AzureBlobAuthenticationType,
        assert std.isArray(AgentArns) : 'AgentArns must be a array',
        AgentArns: AgentArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationAzureBlob',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAzureBlobSasConfiguration': d.fn('`withAzureBlobSasConfiguration` AzureBlobSasConfiguration ', [d.arg('AzureBlobSasConfiguration', d.T.object)]),
    withAzureBlobSasConfiguration(AzureBlobSasConfiguration): {
      assert std.isObject(AzureBlobSasConfiguration) : 'AzureBlobSasConfiguration must be a object',
      Properties+::: { AzureBlobSasConfiguration: AzureBlobSasConfiguration },
    },
    '#withAzureBlobContainerUrl': d.fn('`withAzureBlobContainerUrl` AzureBlobContainerUrl ', [d.arg('AzureBlobContainerUrl', d.T.string)]),
    withAzureBlobContainerUrl(AzureBlobContainerUrl): {
      assert std.isString(AzureBlobContainerUrl) : 'AzureBlobContainerUrl must be a string',
      Properties+::: { AzureBlobContainerUrl: AzureBlobContainerUrl },
    },
    '#withAzureBlobType': d.fn('`withAzureBlobType` AzureBlobType ', [d.arg('AzureBlobType', d.T.string)]),
    withAzureBlobType(AzureBlobType): {
      assert std.isString(AzureBlobType) : 'AzureBlobType must be a string',
      assert AzureBlobType == 'BLOCK' : "AzureBlobType must be either 'BLOCK'",
      Properties+::: { AzureBlobType: AzureBlobType },
    },
    '#withAzureAccessTier': d.fn('`withAzureAccessTier` AzureAccessTier ', [d.arg('AzureAccessTier', d.T.string)]),
    withAzureAccessTier(AzureAccessTier): {
      assert std.isString(AzureAccessTier) : 'AzureAccessTier must be a string',
      assert AzureAccessTier == 'HOT' || AzureAccessTier == 'COOL' || AzureAccessTier == 'ARCHIVE' : "AzureAccessTier must be either 'HOT' or 'COOL' or 'ARCHIVE'",
      Properties+::: { AzureAccessTier: AzureAccessTier },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationEFS: {
    '#': d.pkg(
      name='LocationEFS',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationEFS.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationEFS Resource
        * Ec2Config 
      |||,
      args=[
        d.arg('Ec2Config', 'd.T.object'),
      ]
    ),
    new(
      Ec2Config,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Ec2Config) : 'Ec2Config must be a object',
        Ec2Config: Ec2Config,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationEFS',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEfsFilesystemArn': d.fn('`withEfsFilesystemArn` EfsFilesystemArn ', [d.arg('EfsFilesystemArn', d.T.string)]),
    withEfsFilesystemArn(EfsFilesystemArn): {
      assert std.isString(EfsFilesystemArn) : 'EfsFilesystemArn must be a string',
      Properties+::: { EfsFilesystemArn: EfsFilesystemArn },
    },
    '#withAccessPointArn': d.fn('`withAccessPointArn` AccessPointArn ', [d.arg('AccessPointArn', d.T.string)]),
    withAccessPointArn(AccessPointArn): {
      assert std.isString(AccessPointArn) : 'AccessPointArn must be a string',
      Properties+::: { AccessPointArn: AccessPointArn },
    },
    '#withFileSystemAccessRoleArn': d.fn('`withFileSystemAccessRoleArn` FileSystemAccessRoleArn ', [d.arg('FileSystemAccessRoleArn', d.T.string)]),
    withFileSystemAccessRoleArn(FileSystemAccessRoleArn): {
      assert std.isString(FileSystemAccessRoleArn) : 'FileSystemAccessRoleArn must be a string',
      Properties+::: { FileSystemAccessRoleArn: FileSystemAccessRoleArn },
    },
    '#withInTransitEncryption': d.fn('`withInTransitEncryption` InTransitEncryption ', [d.arg('InTransitEncryption', d.T.string)]),
    withInTransitEncryption(InTransitEncryption): {
      assert std.isString(InTransitEncryption) : 'InTransitEncryption must be a string',
      assert InTransitEncryption == 'NONE' || InTransitEncryption == 'TLS1_2' : "InTransitEncryption must be either 'NONE' or 'TLS1_2'",
      Properties+::: { InTransitEncryption: InTransitEncryption },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationFSxLustre: {
    '#': d.pkg(
      name='LocationFSxLustre',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationFSxLustre.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationFSxLustre Resource
        * SecurityGroupArns The ARNs of the security groups that are to use to configure the FSx for Lustre file system.
      |||,
      args=[
        d.arg('SecurityGroupArns', 'd.T.array'),
      ]
    ),
    new(
      SecurityGroupArns,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SecurityGroupArns) : 'SecurityGroupArns must be a array',
        SecurityGroupArns: SecurityGroupArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationFSxLustre',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFsxFilesystemArn': d.fn('`withFsxFilesystemArn` FsxFilesystemArn ', [d.arg('FsxFilesystemArn', d.T.string)]),
    withFsxFilesystemArn(FsxFilesystemArn): {
      assert std.isString(FsxFilesystemArn) : 'FsxFilesystemArn must be a string',
      Properties+::: { FsxFilesystemArn: FsxFilesystemArn },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationFSxONTAP: {
    '#': d.pkg(
      name='LocationFSxONTAP',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationFSxONTAP.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationFSxONTAP Resource
        * SecurityGroupArns The ARNs of the security groups that are to use to configure the FSx ONTAP file system.
        * StorageVirtualMachineArn The Amazon Resource Name (ARN) for the FSx ONTAP SVM.
      |||,
      args=[
        d.arg('SecurityGroupArns', 'd.T.array'),
        d.arg('StorageVirtualMachineArn', 'd.T.string'),
      ]
    ),
    new(
      SecurityGroupArns,
      StorageVirtualMachineArn,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SecurityGroupArns) : 'SecurityGroupArns must be a array',
        SecurityGroupArns: SecurityGroupArns,
        assert std.isString(StorageVirtualMachineArn) : 'StorageVirtualMachineArn must be a string',
        StorageVirtualMachineArn: StorageVirtualMachineArn,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationFSxONTAP',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFsxFilesystemArn': d.fn('`withFsxFilesystemArn` FsxFilesystemArn ', [d.arg('FsxFilesystemArn', d.T.string)]),
    withFsxFilesystemArn(FsxFilesystemArn): {
      assert std.isString(FsxFilesystemArn) : 'FsxFilesystemArn must be a string',
      Properties+::: { FsxFilesystemArn: FsxFilesystemArn },
    },
    '#withProtocol': d.fn('`withProtocol` Protocol ', [d.arg('Protocol', d.T.object)]),
    withProtocol(Protocol): {
      assert std.isObject(Protocol) : 'Protocol must be a object',
      Properties+::: { Protocol: Protocol },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationFSxOpenZFS: {
    '#': d.pkg(
      name='LocationFSxOpenZFS',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationFSxOpenZFS.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationFSxOpenZFS Resource
        * SecurityGroupArns The ARNs of the security groups that are to use to configure the FSx OpenZFS file system.
        * Protocol 
      |||,
      args=[
        d.arg('SecurityGroupArns', 'd.T.array'),
        d.arg('Protocol', 'd.T.object'),
      ]
    ),
    new(
      SecurityGroupArns,
      Protocol,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SecurityGroupArns) : 'SecurityGroupArns must be a array',
        SecurityGroupArns: SecurityGroupArns,
        assert std.isObject(Protocol) : 'Protocol must be a object',
        Protocol: Protocol,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationFSxOpenZFS',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFsxFilesystemArn': d.fn('`withFsxFilesystemArn` FsxFilesystemArn ', [d.arg('FsxFilesystemArn', d.T.string)]),
    withFsxFilesystemArn(FsxFilesystemArn): {
      assert std.isString(FsxFilesystemArn) : 'FsxFilesystemArn must be a string',
      Properties+::: { FsxFilesystemArn: FsxFilesystemArn },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationFSxWindows: {
    '#': d.pkg(
      name='LocationFSxWindows',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationFSxWindows.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationFSxWindows Resource
        * User The user who has the permissions to access files and folders in the FSx for Windows file system.
        * SecurityGroupArns The ARNs of the security groups that are to use to configure the FSx for Windows file system.
      |||,
      args=[
        d.arg('User', 'd.T.string'),
        d.arg('SecurityGroupArns', 'd.T.array'),
      ]
    ),
    new(
      User,
      SecurityGroupArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(User) : 'User must be a string',
        User: User,
        assert std.isArray(SecurityGroupArns) : 'SecurityGroupArns must be a array',
        SecurityGroupArns: SecurityGroupArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationFSxWindows',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withFsxFilesystemArn': d.fn('`withFsxFilesystemArn` FsxFilesystemArn ', [d.arg('FsxFilesystemArn', d.T.string)]),
    withFsxFilesystemArn(FsxFilesystemArn): {
      assert std.isString(FsxFilesystemArn) : 'FsxFilesystemArn must be a string',
      Properties+::: { FsxFilesystemArn: FsxFilesystemArn },
    },
    '#withPassword': d.fn('`withPassword` Password ', [d.arg('Password', d.T.string)]),
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: { Password: Password },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationHDFS: {
    '#': d.pkg(
      name='LocationHDFS',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationHDFS.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationHDFS Resource
        * NameNodes An array of Name Node(s) of the HDFS location.
        * AuthenticationType The authentication mode used to determine identity of user.
        * AgentArns ARN(s) of the agent(s) to use for an HDFS location.
      |||,
      args=[
        d.arg('NameNodes', 'd.T.array'),
        d.arg('AuthenticationType', 'd.T.string'),
        d.arg('AgentArns', 'd.T.array'),
      ]
    ),
    new(
      NameNodes,
      AuthenticationType,
      AgentArns,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(NameNodes) : 'NameNodes must be a array',
        NameNodes: NameNodes,
        assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
        assert AuthenticationType == 'SIMPLE' || AuthenticationType == 'KERBEROS' : "AuthenticationType must be either 'SIMPLE' or 'KERBEROS'",
        AuthenticationType: AuthenticationType,
        assert std.isArray(AgentArns) : 'AgentArns must be a array',
        AgentArns: AgentArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationHDFS',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBlockSize': d.fn('`withBlockSize` BlockSize ', [d.arg('BlockSize', d.T.integer)]),
    withBlockSize(BlockSize): {
      assert std.isNumber(BlockSize) : 'BlockSize must be a integer',
      Properties+::: { BlockSize: BlockSize },
    },
    '#withReplicationFactor': d.fn('`withReplicationFactor` ReplicationFactor ', [d.arg('ReplicationFactor', d.T.integer)]),
    withReplicationFactor(ReplicationFactor): {
      assert std.isNumber(ReplicationFactor) : 'ReplicationFactor must be a integer',
      Properties+::: { ReplicationFactor: ReplicationFactor },
    },
    '#withKmsKeyProviderUri': d.fn('`withKmsKeyProviderUri` KmsKeyProviderUri ', [d.arg('KmsKeyProviderUri', d.T.string)]),
    withKmsKeyProviderUri(KmsKeyProviderUri): {
      assert std.isString(KmsKeyProviderUri) : 'KmsKeyProviderUri must be a string',
      Properties+::: { KmsKeyProviderUri: KmsKeyProviderUri },
    },
    '#withQopConfiguration': d.fn('`withQopConfiguration` QopConfiguration ', [d.arg('QopConfiguration', d.T.object)]),
    withQopConfiguration(QopConfiguration): {
      assert std.isObject(QopConfiguration) : 'QopConfiguration must be a object',
      Properties+::: { QopConfiguration: QopConfiguration },
    },
    '#withSimpleUser': d.fn('`withSimpleUser` SimpleUser ', [d.arg('SimpleUser', d.T.string)]),
    withSimpleUser(SimpleUser): {
      assert std.isString(SimpleUser) : 'SimpleUser must be a string',
      Properties+::: { SimpleUser: SimpleUser },
    },
    '#withKerberosPrincipal': d.fn('`withKerberosPrincipal` KerberosPrincipal ', [d.arg('KerberosPrincipal', d.T.string)]),
    withKerberosPrincipal(KerberosPrincipal): {
      assert std.isString(KerberosPrincipal) : 'KerberosPrincipal must be a string',
      Properties+::: { KerberosPrincipal: KerberosPrincipal },
    },
    '#withKerberosKeytab': d.fn('`withKerberosKeytab` KerberosKeytab ', [d.arg('KerberosKeytab', d.T.string)]),
    withKerberosKeytab(KerberosKeytab): {
      assert std.isString(KerberosKeytab) : 'KerberosKeytab must be a string',
      Properties+::: { KerberosKeytab: KerberosKeytab },
    },
    '#withKerberosKrb5Conf': d.fn('`withKerberosKrb5Conf` KerberosKrb5Conf ', [d.arg('KerberosKrb5Conf', d.T.string)]),
    withKerberosKrb5Conf(KerberosKrb5Conf): {
      assert std.isString(KerberosKrb5Conf) : 'KerberosKrb5Conf must be a string',
      Properties+::: { KerberosKrb5Conf: KerberosKrb5Conf },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationNFS: {
    '#': d.pkg(
      name='LocationNFS',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationNFS',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationNFS Resource
        * OnPremConfig 
      |||,
      args=[
        d.arg('OnPremConfig', 'd.T.object'),
      ]
    ),
    new(
      OnPremConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(OnPremConfig) : 'OnPremConfig must be a object',
        OnPremConfig: OnPremConfig,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationNFS',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMountOptions': d.fn('`withMountOptions` MountOptions ', [d.arg('MountOptions', d.T.object)]),
    withMountOptions(MountOptions): {
      assert std.isObject(MountOptions) : 'MountOptions must be a object',
      Properties+::: { MountOptions: MountOptions },
    },
    '#withServerHostname': d.fn('`withServerHostname` ServerHostname ', [d.arg('ServerHostname', d.T.string)]),
    withServerHostname(ServerHostname): {
      assert std.isString(ServerHostname) : 'ServerHostname must be a string',
      Properties+::: { ServerHostname: ServerHostname },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationObjectStorage: {
    '#': d.pkg(
      name='LocationObjectStorage',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationObjectStorage.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationObjectStorage Resource
        * AgentArns The Amazon Resource Name (ARN) of the agents associated with the self-managed object storage server location.
      |||,
      args=[
        d.arg('AgentArns', 'd.T.array'),
      ]
    ),
    new(
      AgentArns,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(AgentArns) : 'AgentArns must be a array',
        AgentArns: AgentArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationObjectStorage',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessKey': d.fn('`withAccessKey` AccessKey ', [d.arg('AccessKey', d.T.string)]),
    withAccessKey(AccessKey): {
      assert std.isString(AccessKey) : 'AccessKey must be a string',
      Properties+::: { AccessKey: AccessKey },
    },
    '#withBucketName': d.fn('`withBucketName` BucketName ', [d.arg('BucketName', d.T.string)]),
    withBucketName(BucketName): {
      assert std.isString(BucketName) : 'BucketName must be a string',
      Properties+::: { BucketName: BucketName },
    },
    '#withSecretKey': d.fn('`withSecretKey` SecretKey ', [d.arg('SecretKey', d.T.string)]),
    withSecretKey(SecretKey): {
      assert std.isString(SecretKey) : 'SecretKey must be a string',
      Properties+::: { SecretKey: SecretKey },
    },
    '#withServerCertificate': d.fn('`withServerCertificate` ServerCertificate ', [d.arg('ServerCertificate', d.T.string)]),
    withServerCertificate(ServerCertificate): {
      assert std.isString(ServerCertificate) : 'ServerCertificate must be a string',
      Properties+::: { ServerCertificate: ServerCertificate },
    },
    '#withServerHostname': d.fn('`withServerHostname` ServerHostname ', [d.arg('ServerHostname', d.T.string)]),
    withServerHostname(ServerHostname): {
      assert std.isString(ServerHostname) : 'ServerHostname must be a string',
      Properties+::: { ServerHostname: ServerHostname },
    },
    '#withServerPort': d.fn('`withServerPort` ServerPort ', [d.arg('ServerPort', d.T.integer)]),
    withServerPort(ServerPort): {
      assert std.isNumber(ServerPort) : 'ServerPort must be a integer',
      Properties+::: { ServerPort: ServerPort },
    },
    '#withServerProtocol': d.fn('`withServerProtocol` ServerProtocol ', [d.arg('ServerProtocol', d.T.string)]),
    withServerProtocol(ServerProtocol): {
      assert std.isString(ServerProtocol) : 'ServerProtocol must be a string',
      assert ServerProtocol == 'HTTPS' || ServerProtocol == 'HTTP' : "ServerProtocol must be either 'HTTPS' or 'HTTP'",
      Properties+::: { ServerProtocol: ServerProtocol },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationS3: {
    '#': d.pkg(
      name='LocationS3',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationS3',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationS3 Resource
        * S3Config 
      |||,
      args=[
        d.arg('S3Config', 'd.T.object'),
      ]
    ),
    new(
      S3Config,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(S3Config) : 'S3Config must be a object',
        S3Config: S3Config,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationS3',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withS3BucketArn': d.fn('`withS3BucketArn` S3BucketArn ', [d.arg('S3BucketArn', d.T.string)]),
    withS3BucketArn(S3BucketArn): {
      assert std.isString(S3BucketArn) : 'S3BucketArn must be a string',
      Properties+::: { S3BucketArn: S3BucketArn },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withS3StorageClass': d.fn('`withS3StorageClass` S3StorageClass ', [d.arg('S3StorageClass', d.T.string)]),
    withS3StorageClass(S3StorageClass): {
      assert std.isString(S3StorageClass) : 'S3StorageClass must be a string',
      assert S3StorageClass == 'STANDARD' || S3StorageClass == 'STANDARD_IA' || S3StorageClass == 'ONEZONE_IA' || S3StorageClass == 'INTELLIGENT_TIERING' || S3StorageClass == 'GLACIER' || S3StorageClass == 'GLACIER_INSTANT_RETRIEVAL' || S3StorageClass == 'DEEP_ARCHIVE' : "S3StorageClass must be either 'STANDARD' or 'STANDARD_IA' or 'ONEZONE_IA' or 'INTELLIGENT_TIERING' or 'GLACIER' or 'GLACIER_INSTANT_RETRIEVAL' or 'DEEP_ARCHIVE'",
      Properties+::: { S3StorageClass: S3StorageClass },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  LocationSMB: {
    '#': d.pkg(
      name='LocationSMB',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::LocationSMB.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::LocationSMB Resource
        * User The user who can mount the share, has the permissions to access files and folders in the SMB share.
        * AgentArns The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB) location.
      |||,
      args=[
        d.arg('User', 'd.T.string'),
        d.arg('AgentArns', 'd.T.array'),
      ]
    ),
    new(
      User,
      AgentArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(User) : 'User must be a string',
        User: User,
        assert std.isArray(AgentArns) : 'AgentArns must be a array',
        AgentArns: AgentArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::LocationSMB',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomain': d.fn('`withDomain` Domain ', [d.arg('Domain', d.T.string)]),
    withDomain(Domain): {
      assert std.isString(Domain) : 'Domain must be a string',
      Properties+::: { Domain: Domain },
    },
    '#withMountOptions': d.fn('`withMountOptions` MountOptions ', [d.arg('MountOptions', d.T.object)]),
    withMountOptions(MountOptions): {
      assert std.isObject(MountOptions) : 'MountOptions must be a object',
      Properties+::: { MountOptions: MountOptions },
    },
    '#withPassword': d.fn('`withPassword` Password ', [d.arg('Password', d.T.string)]),
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: { Password: Password },
    },
    '#withServerHostname': d.fn('`withServerHostname` ServerHostname ', [d.arg('ServerHostname', d.T.string)]),
    withServerHostname(ServerHostname): {
      assert std.isString(ServerHostname) : 'ServerHostname must be a string',
      Properties+::: { ServerHostname: ServerHostname },
    },
    '#withSubdirectory': d.fn('`withSubdirectory` Subdirectory ', [d.arg('Subdirectory', d.T.string)]),
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: { Subdirectory: Subdirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withLocationUri': d.fn('`withLocationUri` LocationUri ', [d.arg('LocationUri', d.T.string)]),
    withLocationUri(LocationUri): {
      assert std.isString(LocationUri) : 'LocationUri must be a string',
      Properties+::: { LocationUri: LocationUri },
    },
  },
  StorageSystem: {
    '#': d.pkg(
      name='StorageSystem',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::StorageSystem.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::StorageSystem Resource
        * ServerConfiguration 
        * SystemType The type of on-premises storage system that DataSync Discovery will analyze.
        * AgentArns The ARN of the DataSync agent that connects to and reads from the on-premises storage systems management interface.
      |||,
      args=[
        d.arg('ServerConfiguration', 'd.T.object'),
        d.arg('SystemType', 'd.T.string'),
        d.arg('AgentArns', 'd.T.array'),
      ]
    ),
    new(
      ServerConfiguration,
      SystemType,
      AgentArns,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ServerConfiguration) : 'ServerConfiguration must be a object',
        ServerConfiguration: ServerConfiguration,
        assert std.isString(SystemType) : 'SystemType must be a string',
        assert SystemType == 'NetAppONTAP' : "SystemType must be either 'NetAppONTAP'",
        SystemType: SystemType,
        assert std.isArray(AgentArns) : 'AgentArns must be a array',
        AgentArns: AgentArns,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::StorageSystem',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withServerCredentials': d.fn('`withServerCredentials` ServerCredentials ', [d.arg('ServerCredentials', d.T.object)]),
    withServerCredentials(ServerCredentials): {
      assert std.isObject(ServerCredentials) : 'ServerCredentials must be a object',
      Properties+::: { ServerCredentials: ServerCredentials },
    },
    '#withSecretsManagerArn': d.fn('`withSecretsManagerArn` SecretsManagerArn ', [d.arg('SecretsManagerArn', d.T.string)]),
    withSecretsManagerArn(SecretsManagerArn): {
      assert std.isString(SecretsManagerArn) : 'SecretsManagerArn must be a string',
      Properties+::: { SecretsManagerArn: SecretsManagerArn },
    },
    '#withCloudWatchLogGroupArn': d.fn('`withCloudWatchLogGroupArn` CloudWatchLogGroupArn ', [d.arg('CloudWatchLogGroupArn', d.T.string)]),
    withCloudWatchLogGroupArn(CloudWatchLogGroupArn): {
      assert std.isString(CloudWatchLogGroupArn) : 'CloudWatchLogGroupArn must be a string',
      Properties+::: { CloudWatchLogGroupArn: CloudWatchLogGroupArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withStorageSystemArn': d.fn('`withStorageSystemArn` StorageSystemArn ', [d.arg('StorageSystemArn', d.T.string)]),
    withStorageSystemArn(StorageSystemArn): {
      assert std.isString(StorageSystemArn) : 'StorageSystemArn must be a string',
      Properties+::: { StorageSystemArn: StorageSystemArn },
    },
    '#withConnectivityStatus': d.fn('`withConnectivityStatus` ConnectivityStatus ', [d.arg('ConnectivityStatus', d.T.string)]),
    withConnectivityStatus(ConnectivityStatus): {
      assert std.isString(ConnectivityStatus) : 'ConnectivityStatus must be a string',
      assert ConnectivityStatus == 'PASS' || ConnectivityStatus == 'FAIL' || ConnectivityStatus == 'UNKNOWN' : "ConnectivityStatus must be either 'PASS' or 'FAIL' or 'UNKNOWN'",
      Properties+::: { ConnectivityStatus: ConnectivityStatus },
    },
  },
  Task: {
    '#': d.pkg(
      name='Task',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DataSync.libsonnet',
      help='Resource schema for AWS::DataSync::Task.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DataSync::Task Resource
        * DestinationLocationArn The ARN of an AWS storage resources location.
        * SourceLocationArn The ARN of the source location for the task.
      |||,
      args=[
        d.arg('DestinationLocationArn', 'd.T.string'),
        d.arg('SourceLocationArn', 'd.T.string'),
      ]
    ),
    new(
      DestinationLocationArn,
      SourceLocationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DestinationLocationArn) : 'DestinationLocationArn must be a string',
        DestinationLocationArn: DestinationLocationArn,
        assert std.isString(SourceLocationArn) : 'SourceLocationArn must be a string',
        SourceLocationArn: SourceLocationArn,
      },
      DependsOn:: [],
      Type: 'AWS::DataSync::Task',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withExcludes': d.fn('`withExcludes` Excludes ', [d.arg('Excludes', d.T.array)]),
    withExcludes(Excludes): {
      assert std.isArray(Excludes) : 'Excludes must be a array',
      Properties+::: { Excludes: Excludes },
    },
    '#withIncludes': d.fn('`withIncludes` Includes ', [d.arg('Includes', d.T.array)]),
    withIncludes(Includes): {
      assert std.isArray(Includes) : 'Includes must be a array',
      Properties+::: { Includes: Includes },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCloudWatchLogGroupArn': d.fn('`withCloudWatchLogGroupArn` CloudWatchLogGroupArn ', [d.arg('CloudWatchLogGroupArn', d.T.string)]),
    withCloudWatchLogGroupArn(CloudWatchLogGroupArn): {
      assert std.isString(CloudWatchLogGroupArn) : 'CloudWatchLogGroupArn must be a string',
      Properties+::: { CloudWatchLogGroupArn: CloudWatchLogGroupArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withOptions': d.fn('`withOptions` Options ', [d.arg('Options', d.T.object)]),
    withOptions(Options): {
      assert std.isObject(Options) : 'Options must be a object',
      Properties+::: { Options: Options },
    },
    '#withTaskReportConfig': d.fn('`withTaskReportConfig` TaskReportConfig ', [d.arg('TaskReportConfig', d.T.object)]),
    withTaskReportConfig(TaskReportConfig): {
      assert std.isObject(TaskReportConfig) : 'TaskReportConfig must be a object',
      Properties+::: { TaskReportConfig: TaskReportConfig },
    },
    '#withManifestConfig': d.fn('`withManifestConfig` ManifestConfig ', [d.arg('ManifestConfig', d.T.object)]),
    withManifestConfig(ManifestConfig): {
      assert std.isObject(ManifestConfig) : 'ManifestConfig must be a object',
      Properties+::: { ManifestConfig: ManifestConfig },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
    '#withTaskArn': d.fn('`withTaskArn` TaskArn ', [d.arg('TaskArn', d.T.string)]),
    withTaskArn(TaskArn): {
      assert std.isString(TaskArn) : 'TaskArn must be a string',
      Properties+::: { TaskArn: TaskArn },
    },
    '#withTaskMode': d.fn('`withTaskMode` TaskMode ', [d.arg('TaskMode', d.T.string)]),
    withTaskMode(TaskMode): {
      assert std.isString(TaskMode) : 'TaskMode must be a string',
      assert TaskMode == 'BASIC' || TaskMode == 'ENHANCED' : "TaskMode must be either 'BASIC' or 'ENHANCED'",
      Properties+::: { TaskMode: TaskMode },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'AVAILABLE' || Status == 'CREATING' || Status == 'QUEUED' || Status == 'RUNNING' || Status == 'UNAVAILABLE' : "Status must be either 'AVAILABLE' or 'CREATING' or 'QUEUED' or 'RUNNING' or 'UNAVAILABLE'",
      Properties+::: { Status: Status },
    },
    '#withSourceNetworkInterfaceArns': d.fn('`withSourceNetworkInterfaceArns` SourceNetworkInterfaceArns ', [d.arg('SourceNetworkInterfaceArns', d.T.array)]),
    withSourceNetworkInterfaceArns(SourceNetworkInterfaceArns): {
      assert std.isArray(SourceNetworkInterfaceArns) : 'SourceNetworkInterfaceArns must be a array',
      Properties+::: { SourceNetworkInterfaceArns: SourceNetworkInterfaceArns },
    },
    '#withDestinationNetworkInterfaceArns': d.fn('`withDestinationNetworkInterfaceArns` DestinationNetworkInterfaceArns ', [d.arg('DestinationNetworkInterfaceArns', d.T.array)]),
    withDestinationNetworkInterfaceArns(DestinationNetworkInterfaceArns): {
      assert std.isArray(DestinationNetworkInterfaceArns) : 'DestinationNetworkInterfaceArns must be a array',
      Properties+::: { DestinationNetworkInterfaceArns: DestinationNetworkInterfaceArns },
    },
  },
}
