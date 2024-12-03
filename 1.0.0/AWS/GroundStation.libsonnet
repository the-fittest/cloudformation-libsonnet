local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Config: {
    '#': d.pkg(
      name='Config',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GroundStation.libsonnet',
      help='AWS Ground Station config resource type for CloudFormation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GroundStation::Config Resource
        * Name 
        * ConfigData 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ConfigData', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ConfigData,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(ConfigData) : 'ConfigData must be a object',
        ConfigData: ConfigData,
      },
      DependsOn:: [],
      Type: 'AWS::GroundStation::Config',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  DataflowEndpointGroup: {
    '#': d.pkg(
      name='DataflowEndpointGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GroundStation.libsonnet',
      help='AWS Ground Station DataflowEndpointGroup schema for CloudFormation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GroundStation::DataflowEndpointGroup Resource
        * EndpointDetails 
      |||,
      args=[
        d.arg('EndpointDetails', 'd.T.array'),
      ]
    ),
    new(
      EndpointDetails,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(EndpointDetails) : 'EndpointDetails must be a array',
        EndpointDetails: EndpointDetails,
      },
      DependsOn:: [],
      Type: 'AWS::GroundStation::DataflowEndpointGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withContactPrePassDurationSeconds': d.fn('`withContactPrePassDurationSeconds` ContactPrePassDurationSeconds ', [d.arg('ContactPrePassDurationSeconds', d.T.integer)]),
    withContactPrePassDurationSeconds(ContactPrePassDurationSeconds): {
      assert std.isNumber(ContactPrePassDurationSeconds) : 'ContactPrePassDurationSeconds must be a integer',
      Properties+::: { ContactPrePassDurationSeconds: ContactPrePassDurationSeconds },
    },
    '#withContactPostPassDurationSeconds': d.fn('`withContactPostPassDurationSeconds` ContactPostPassDurationSeconds ', [d.arg('ContactPostPassDurationSeconds', d.T.integer)]),
    withContactPostPassDurationSeconds(ContactPostPassDurationSeconds): {
      assert std.isNumber(ContactPostPassDurationSeconds) : 'ContactPostPassDurationSeconds must be a integer',
      Properties+::: { ContactPostPassDurationSeconds: ContactPostPassDurationSeconds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MissionProfile: {
    '#': d.pkg(
      name='MissionProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GroundStation.libsonnet',
      help='AWS Ground Station Mission Profile resource type for CloudFormation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GroundStation::MissionProfile Resource
        * Name A name used to identify a mission profile.
        * MinimumViableContactDurationSeconds Visibilities with shorter duration than the specified minimum viable contact duration will be ignored when searching for available contacts.
        * DataflowEdges 
        * TrackingConfigArn 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('MinimumViableContactDurationSeconds', 'd.T.integer'),
        d.arg('DataflowEdges', 'd.T.array'),
        d.arg('TrackingConfigArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      MinimumViableContactDurationSeconds,
      DataflowEdges,
      TrackingConfigArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isNumber(MinimumViableContactDurationSeconds) : 'MinimumViableContactDurationSeconds must be a integer',
        MinimumViableContactDurationSeconds: MinimumViableContactDurationSeconds,
        assert std.isArray(DataflowEdges) : 'DataflowEdges must be a array',
        DataflowEdges: DataflowEdges,
        assert std.isString(TrackingConfigArn) : 'TrackingConfigArn must be a string',
        TrackingConfigArn: TrackingConfigArn,
      },
      DependsOn:: [],
      Type: 'AWS::GroundStation::MissionProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactPrePassDurationSeconds': d.fn('`withContactPrePassDurationSeconds` ContactPrePassDurationSeconds ', [d.arg('ContactPrePassDurationSeconds', d.T.integer)]),
    withContactPrePassDurationSeconds(ContactPrePassDurationSeconds): {
      assert std.isNumber(ContactPrePassDurationSeconds) : 'ContactPrePassDurationSeconds must be a integer',
      Properties+::: { ContactPrePassDurationSeconds: ContactPrePassDurationSeconds },
    },
    '#withContactPostPassDurationSeconds': d.fn('`withContactPostPassDurationSeconds` ContactPostPassDurationSeconds ', [d.arg('ContactPostPassDurationSeconds', d.T.integer)]),
    withContactPostPassDurationSeconds(ContactPostPassDurationSeconds): {
      assert std.isNumber(ContactPostPassDurationSeconds) : 'ContactPostPassDurationSeconds must be a integer',
      Properties+::: { ContactPostPassDurationSeconds: ContactPostPassDurationSeconds },
    },
    '#withStreamsKmsKey': d.fn('`withStreamsKmsKey` StreamsKmsKey ', [d.arg('StreamsKmsKey', d.T.object)]),
    withStreamsKmsKey(StreamsKmsKey): {
      assert std.isObject(StreamsKmsKey) : 'StreamsKmsKey must be a object',
      Properties+::: { StreamsKmsKey: StreamsKmsKey },
    },
    '#withStreamsKmsRole': d.fn('`withStreamsKmsRole` StreamsKmsRole ', [d.arg('StreamsKmsRole', d.T.string)]),
    withStreamsKmsRole(StreamsKmsRole): {
      assert std.isString(StreamsKmsRole) : 'StreamsKmsRole must be a string',
      Properties+::: { StreamsKmsRole: StreamsKmsRole },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
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
    '#withRegion': d.fn('`withRegion` Region ', [d.arg('Region', d.T.string)]),
    withRegion(Region): {
      assert std.isString(Region) : 'Region must be a string',
      Properties+::: { Region: Region },
    },
  },
}
