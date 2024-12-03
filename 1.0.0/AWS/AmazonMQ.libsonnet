local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Broker: {
    '#': d.pkg(
      name='Broker',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AmazonMQ.libsonnet',
      help='Resource Type definition for AWS::AmazonMQ::Broker',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AmazonMQ::Broker Resource
        * DeploymentMode 
        * HostInstanceType 
        * EngineType 
        * Users 
        * PubliclyAccessible 
        * BrokerName 
      |||,
      args=[
        d.arg('DeploymentMode', 'd.T.string'),
        d.arg('HostInstanceType', 'd.T.string'),
        d.arg('EngineType', 'd.T.string'),
        d.arg('Users', 'd.T.array'),
        d.arg('PubliclyAccessible', 'd.T.boolean'),
        d.arg('BrokerName', 'd.T.string'),
      ]
    ),
    new(
      DeploymentMode,
      HostInstanceType,
      EngineType,
      Users,
      PubliclyAccessible,
      BrokerName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeploymentMode) : 'DeploymentMode must be a string',
        DeploymentMode: DeploymentMode,
        assert std.isString(HostInstanceType) : 'HostInstanceType must be a string',
        HostInstanceType: HostInstanceType,
        assert std.isString(EngineType) : 'EngineType must be a string',
        EngineType: EngineType,
        assert std.isArray(Users) : 'Users must be a array',
        Users: Users,
        assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
        PubliclyAccessible: PubliclyAccessible,
        assert std.isString(BrokerName) : 'BrokerName must be a string',
        BrokerName: BrokerName,
      },
      DependsOn:: [],
      Type: 'AWS::AmazonMQ::Broker',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecurityGroups': d.fn('`withSecurityGroups` SecurityGroups ', [d.arg('SecurityGroups', d.T.array)]),
    withSecurityGroups(SecurityGroups): {
      assert std.isArray(SecurityGroups) : 'SecurityGroups must be a array',
      Properties+::: { SecurityGroups: SecurityGroups },
    },
    '#withDataReplicationPrimaryBrokerArn': d.fn('`withDataReplicationPrimaryBrokerArn` DataReplicationPrimaryBrokerArn ', [d.arg('DataReplicationPrimaryBrokerArn', d.T.string)]),
    withDataReplicationPrimaryBrokerArn(DataReplicationPrimaryBrokerArn): {
      assert std.isString(DataReplicationPrimaryBrokerArn) : 'DataReplicationPrimaryBrokerArn must be a string',
      Properties+::: { DataReplicationPrimaryBrokerArn: DataReplicationPrimaryBrokerArn },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.object)]),
    withConfiguration(Configuration): {
      assert std.isObject(Configuration) : 'Configuration must be a object',
      Properties+::: { Configuration: Configuration },
    },
    '#withAuthenticationStrategy': d.fn('`withAuthenticationStrategy` AuthenticationStrategy ', [d.arg('AuthenticationStrategy', d.T.string)]),
    withAuthenticationStrategy(AuthenticationStrategy): {
      assert std.isString(AuthenticationStrategy) : 'AuthenticationStrategy must be a string',
      Properties+::: { AuthenticationStrategy: AuthenticationStrategy },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withStompEndpoints': d.fn('`withStompEndpoints` StompEndpoints ', [d.arg('StompEndpoints', d.T.array)]),
    withStompEndpoints(StompEndpoints): {
      assert std.isArray(StompEndpoints) : 'StompEndpoints must be a array',
      Properties+::: { StompEndpoints: StompEndpoints },
    },
    '#withMqttEndpoints': d.fn('`withMqttEndpoints` MqttEndpoints ', [d.arg('MqttEndpoints', d.T.array)]),
    withMqttEndpoints(MqttEndpoints): {
      assert std.isArray(MqttEndpoints) : 'MqttEndpoints must be a array',
      Properties+::: { MqttEndpoints: MqttEndpoints },
    },
    '#withAmqpEndpoints': d.fn('`withAmqpEndpoints` AmqpEndpoints ', [d.arg('AmqpEndpoints', d.T.array)]),
    withAmqpEndpoints(AmqpEndpoints): {
      assert std.isArray(AmqpEndpoints) : 'AmqpEndpoints must be a array',
      Properties+::: { AmqpEndpoints: AmqpEndpoints },
    },
    '#withEncryptionOptions': d.fn('`withEncryptionOptions` EncryptionOptions ', [d.arg('EncryptionOptions', d.T.object)]),
    withEncryptionOptions(EncryptionOptions): {
      assert std.isObject(EncryptionOptions) : 'EncryptionOptions must be a object',
      Properties+::: { EncryptionOptions: EncryptionOptions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withConfigurationRevision': d.fn('`withConfigurationRevision` ConfigurationRevision ', [d.arg('ConfigurationRevision', d.T.integer)]),
    withConfigurationRevision(ConfigurationRevision): {
      assert std.isNumber(ConfigurationRevision) : 'ConfigurationRevision must be a integer',
      Properties+::: { ConfigurationRevision: ConfigurationRevision },
    },
    '#withStorageType': d.fn('`withStorageType` StorageType ', [d.arg('StorageType', d.T.string)]),
    withStorageType(StorageType): {
      assert std.isString(StorageType) : 'StorageType must be a string',
      Properties+::: { StorageType: StorageType },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withMaintenanceWindowStartTime': d.fn('`withMaintenanceWindowStartTime` MaintenanceWindowStartTime ', [d.arg('MaintenanceWindowStartTime', d.T.object)]),
    withMaintenanceWindowStartTime(MaintenanceWindowStartTime): {
      assert std.isObject(MaintenanceWindowStartTime) : 'MaintenanceWindowStartTime must be a object',
      Properties+::: { MaintenanceWindowStartTime: MaintenanceWindowStartTime },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withLogs': d.fn('`withLogs` Logs ', [d.arg('Logs', d.T.object)]),
    withLogs(Logs): {
      assert std.isObject(Logs) : 'Logs must be a object',
      Properties+::: { Logs: Logs },
    },
    '#withConfigurationId': d.fn('`withConfigurationId` ConfigurationId ', [d.arg('ConfigurationId', d.T.string)]),
    withConfigurationId(ConfigurationId): {
      assert std.isString(ConfigurationId) : 'ConfigurationId must be a string',
      Properties+::: { ConfigurationId: ConfigurationId },
    },
    '#withDataReplicationMode': d.fn('`withDataReplicationMode` DataReplicationMode ', [d.arg('DataReplicationMode', d.T.string)]),
    withDataReplicationMode(DataReplicationMode): {
      assert std.isString(DataReplicationMode) : 'DataReplicationMode must be a string',
      Properties+::: { DataReplicationMode: DataReplicationMode },
    },
    '#withWssEndpoints': d.fn('`withWssEndpoints` WssEndpoints ', [d.arg('WssEndpoints', d.T.array)]),
    withWssEndpoints(WssEndpoints): {
      assert std.isArray(WssEndpoints) : 'WssEndpoints must be a array',
      Properties+::: { WssEndpoints: WssEndpoints },
    },
    '#withIpAddresses': d.fn('`withIpAddresses` IpAddresses ', [d.arg('IpAddresses', d.T.array)]),
    withIpAddresses(IpAddresses): {
      assert std.isArray(IpAddresses) : 'IpAddresses must be a array',
      Properties+::: { IpAddresses: IpAddresses },
    },
    '#withOpenWireEndpoints': d.fn('`withOpenWireEndpoints` OpenWireEndpoints ', [d.arg('OpenWireEndpoints', d.T.array)]),
    withOpenWireEndpoints(OpenWireEndpoints): {
      assert std.isArray(OpenWireEndpoints) : 'OpenWireEndpoints must be a array',
      Properties+::: { OpenWireEndpoints: OpenWireEndpoints },
    },
    '#withLdapServerMetadata': d.fn('`withLdapServerMetadata` LdapServerMetadata ', [d.arg('LdapServerMetadata', d.T.object)]),
    withLdapServerMetadata(LdapServerMetadata): {
      assert std.isObject(LdapServerMetadata) : 'LdapServerMetadata must be a object',
      Properties+::: { LdapServerMetadata: LdapServerMetadata },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Configuration: {
    '#': d.pkg(
      name='Configuration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AmazonMQ.libsonnet',
      help='Resource Type definition for AWS::AmazonMQ::Configuration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AmazonMQ::Configuration Resource
        * EngineType The type of broker engine. Note: Currently, Amazon MQ only supports ACTIVEMQ for creating and editing broker configurations.
        * Data The base64-encoded XML configuration.
        * Name The name of the configuration.
      |||,
      args=[
        d.arg('EngineType', 'd.T.string'),
        d.arg('Data', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EngineType,
      Data,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EngineType) : 'EngineType must be a string',
        EngineType: EngineType,
        assert std.isString(Data) : 'Data must be a string',
        Data: Data,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AmazonMQ::Configuration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAuthenticationStrategy': d.fn('`withAuthenticationStrategy` AuthenticationStrategy ', [d.arg('AuthenticationStrategy', d.T.string)]),
    withAuthenticationStrategy(AuthenticationStrategy): {
      assert std.isString(AuthenticationStrategy) : 'AuthenticationStrategy must be a string',
      Properties+::: { AuthenticationStrategy: AuthenticationStrategy },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRevision': d.fn('`withRevision` Revision ', [d.arg('Revision', d.T.string)]),
    withRevision(Revision): {
      assert std.isString(Revision) : 'Revision must be a string',
      Properties+::: { Revision: Revision },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ConfigurationAssociation: {
    '#': d.pkg(
      name='ConfigurationAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AmazonMQ.libsonnet',
      help='Resource Type definition for AWS::AmazonMQ::ConfigurationAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AmazonMQ::ConfigurationAssociation Resource
        * Configuration 
        * Broker 
      |||,
      args=[
        d.arg('Configuration', 'd.T.object'),
        d.arg('Broker', 'd.T.string'),
      ]
    ),
    new(
      Configuration,
      Broker,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Configuration) : 'Configuration must be a object',
        Configuration: Configuration,
        assert std.isString(Broker) : 'Broker must be a string',
        Broker: Broker,
      },
      DependsOn:: [],
      Type: 'AWS::AmazonMQ::ConfigurationAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
