local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ApiDestination: {
    '#': d.pkg(
      name='ApiDestination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource Type definition for AWS::Events::ApiDestination.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::ApiDestination Resource
        * ConnectionArn The arn of the connection.
        * InvocationEndpoint Url endpoint to invoke.
        * HttpMethod 
      |||,
      args=[
        d.arg('ConnectionArn', 'd.T.string'),
        d.arg('InvocationEndpoint', 'd.T.string'),
        d.arg('HttpMethod', 'd.T.string'),
      ]
    ),
    new(
      ConnectionArn,
      InvocationEndpoint,
      HttpMethod,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
        ConnectionArn: ConnectionArn,
        assert std.isString(InvocationEndpoint) : 'InvocationEndpoint must be a string',
        InvocationEndpoint: InvocationEndpoint,
        assert std.isString(HttpMethod) : 'HttpMethod must be a string',
        assert HttpMethod == 'GET' || HttpMethod == 'HEAD' || HttpMethod == 'POST' || HttpMethod == 'OPTIONS' || HttpMethod == 'PUT' || HttpMethod == 'DELETE' || HttpMethod == 'PATCH' : "HttpMethod must be either 'GET' or 'HEAD' or 'POST' or 'OPTIONS' or 'PUT' or 'DELETE' or 'PATCH'",
        HttpMethod: HttpMethod,
      },
      DependsOn:: [],
      Type: 'AWS::Events::ApiDestination',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInvocationRateLimitPerSecond': d.fn('`withInvocationRateLimitPerSecond` InvocationRateLimitPerSecond ', [d.arg('InvocationRateLimitPerSecond', d.T.integer)]),
    withInvocationRateLimitPerSecond(InvocationRateLimitPerSecond): {
      assert std.isNumber(InvocationRateLimitPerSecond) : 'InvocationRateLimitPerSecond must be a integer',
      Properties+::: { InvocationRateLimitPerSecond: InvocationRateLimitPerSecond },
    },
  },
  Archive: {
    '#': d.pkg(
      name='Archive',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource Type definition for AWS::Events::Archive',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::Archive Resource
        * SourceArn 
      |||,
      args=[
        d.arg('SourceArn', 'd.T.string'),
      ]
    ),
    new(
      SourceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SourceArn) : 'SourceArn must be a string',
        SourceArn: SourceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Events::Archive',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArchiveName': d.fn('`withArchiveName` ArchiveName ', [d.arg('ArchiveName', d.T.string)]),
    withArchiveName(ArchiveName): {
      assert std.isString(ArchiveName) : 'ArchiveName must be a string',
      Properties+::: { ArchiveName: ArchiveName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEventPattern': d.fn('`withEventPattern` EventPattern ', [d.arg('EventPattern', d.T.object)]),
    withEventPattern(EventPattern): {
      assert std.isObject(EventPattern) : 'EventPattern must be a object',
      Properties+::: { EventPattern: EventPattern },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRetentionDays': d.fn('`withRetentionDays` RetentionDays ', [d.arg('RetentionDays', d.T.integer)]),
    withRetentionDays(RetentionDays): {
      assert std.isNumber(RetentionDays) : 'RetentionDays must be a integer',
      Properties+::: { RetentionDays: RetentionDays },
    },
  },
  Connection: {
    '#': d.pkg(
      name='Connection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource Type definition for AWS::Events::Connection.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::Connection Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Events::Connection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withSecretArn': d.fn('`withSecretArn` SecretArn ', [d.arg('SecretArn', d.T.string)]),
    withSecretArn(SecretArn): {
      assert std.isString(SecretArn) : 'SecretArn must be a string',
      Properties+::: { SecretArn: SecretArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAuthorizationType': d.fn('`withAuthorizationType` AuthorizationType ', [d.arg('AuthorizationType', d.T.string)]),
    withAuthorizationType(AuthorizationType): {
      assert std.isString(AuthorizationType) : 'AuthorizationType must be a string',
      assert AuthorizationType == 'API_KEY' || AuthorizationType == 'BASIC' || AuthorizationType == 'OAUTH_CLIENT_CREDENTIALS' : "AuthorizationType must be either 'API_KEY' or 'BASIC' or 'OAUTH_CLIENT_CREDENTIALS'",
      Properties+::: { AuthorizationType: AuthorizationType },
    },
    '#withAuthParameters': d.fn('`withAuthParameters` AuthParameters ', [d.arg('AuthParameters', d.T.object)]),
    withAuthParameters(AuthParameters): {
      assert std.isObject(AuthParameters) : 'AuthParameters must be a object',
      Properties+::: { AuthParameters: AuthParameters },
    },
    '#withInvocationConnectivityParameters': d.fn('`withInvocationConnectivityParameters` InvocationConnectivityParameters ', [d.arg('InvocationConnectivityParameters', d.T.object)]),
    withInvocationConnectivityParameters(InvocationConnectivityParameters): {
      assert std.isObject(InvocationConnectivityParameters) : 'InvocationConnectivityParameters must be a object',
      Properties+::: { InvocationConnectivityParameters: InvocationConnectivityParameters },
    },
  },
  Endpoint: {
    '#': d.pkg(
      name='Endpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource Type definition for AWS::Events::Endpoint.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::Endpoint Resource
        * RoutingConfig 
        * EventBuses 
      |||,
      args=[
        d.arg('RoutingConfig', 'd.T.object'),
        d.arg('EventBuses', 'd.T.array'),
      ]
    ),
    new(
      RoutingConfig,
      EventBuses,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RoutingConfig) : 'RoutingConfig must be a object',
        RoutingConfig: RoutingConfig,
        assert std.isArray(EventBuses) : 'EventBuses must be a array',
        EventBuses: EventBuses,
      },
      DependsOn:: [],
      Type: 'AWS::Events::Endpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withReplicationConfig': d.fn('`withReplicationConfig` ReplicationConfig ', [d.arg('ReplicationConfig', d.T.object)]),
    withReplicationConfig(ReplicationConfig): {
      assert std.isObject(ReplicationConfig) : 'ReplicationConfig must be a object',
      Properties+::: { ReplicationConfig: ReplicationConfig },
    },
    '#withEndpointId': d.fn('`withEndpointId` EndpointId ', [d.arg('EndpointId', d.T.string)]),
    withEndpointId(EndpointId): {
      assert std.isString(EndpointId) : 'EndpointId must be a string',
      Properties+::: { EndpointId: EndpointId },
    },
    '#withEndpointUrl': d.fn('`withEndpointUrl` EndpointUrl ', [d.arg('EndpointUrl', d.T.string)]),
    withEndpointUrl(EndpointUrl): {
      assert std.isString(EndpointUrl) : 'EndpointUrl must be a string',
      Properties+::: { EndpointUrl: EndpointUrl },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'ACTIVE' || State == 'CREATING' || State == 'UPDATING' || State == 'DELETING' || State == 'CREATE_FAILED' || State == 'UPDATE_FAILED' : "State must be either 'ACTIVE' or 'CREATING' or 'UPDATING' or 'DELETING' or 'CREATE_FAILED' or 'UPDATE_FAILED'",
      Properties+::: { State: State },
    },
    '#withStateReason': d.fn('`withStateReason` StateReason ', [d.arg('StateReason', d.T.string)]),
    withStateReason(StateReason): {
      assert std.isString(StateReason) : 'StateReason must be a string',
      Properties+::: { StateReason: StateReason },
    },
  },
  EventBus: {
    '#': d.pkg(
      name='EventBus',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource type definition for AWS::Events::EventBus',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::EventBus Resource
        * Name The name of the event bus.
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
      Type: 'AWS::Events::EventBus',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEventSourceName': d.fn('`withEventSourceName` EventSourceName ', [d.arg('EventSourceName', d.T.string)]),
    withEventSourceName(EventSourceName): {
      assert std.isString(EventSourceName) : 'EventSourceName must be a string',
      Properties+::: { EventSourceName: EventSourceName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKmsKeyIdentifier': d.fn('`withKmsKeyIdentifier` KmsKeyIdentifier ', [d.arg('KmsKeyIdentifier', d.T.string)]),
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: { KmsKeyIdentifier: KmsKeyIdentifier },
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy')]),
    withPolicy(Policy): {
      // Type: object,string
      Properties+::: { Policy: Policy },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDeadLetterConfig': d.fn('`withDeadLetterConfig` DeadLetterConfig ', [d.arg('DeadLetterConfig', d.T.object)]),
    withDeadLetterConfig(DeadLetterConfig): {
      assert std.isObject(DeadLetterConfig) : 'DeadLetterConfig must be a object',
      Properties+::: { DeadLetterConfig: DeadLetterConfig },
    },
  },
  EventBusPolicy: {
    '#': d.pkg(
      name='EventBusPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource Type definition for AWS::Events::EventBusPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::EventBusPolicy Resource
        * StatementId 
      |||,
      args=[
        d.arg('StatementId', 'd.T.string'),
      ]
    ),
    new(
      StatementId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StatementId) : 'StatementId must be a string',
        StatementId: StatementId,
      },
      DependsOn:: [],
      Type: 'AWS::Events::EventBusPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEventBusName': d.fn('`withEventBusName` EventBusName ', [d.arg('EventBusName', d.T.string)]),
    withEventBusName(EventBusName): {
      assert std.isString(EventBusName) : 'EventBusName must be a string',
      Properties+::: { EventBusName: EventBusName },
    },
    '#withCondition': d.fn('`withCondition` Condition ', [d.arg('Condition', d.T.object)]),
    withCondition(Condition): {
      assert std.isObject(Condition) : 'Condition must be a object',
      Properties+::: { Condition: Condition },
    },
    '#withAction': d.fn('`withAction` Action ', [d.arg('Action', d.T.string)]),
    withAction(Action): {
      assert std.isString(Action) : 'Action must be a string',
      Properties+::: { Action: Action },
    },
    '#withStatement': d.fn('`withStatement` Statement ', [d.arg('Statement', d.T.object)]),
    withStatement(Statement): {
      assert std.isObject(Statement) : 'Statement must be a object',
      Properties+::: { Statement: Statement },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPrincipal': d.fn('`withPrincipal` Principal ', [d.arg('Principal', d.T.string)]),
    withPrincipal(Principal): {
      assert std.isString(Principal) : 'Principal must be a string',
      Properties+::: { Principal: Principal },
    },
  },
  Rule: {
    '#': d.pkg(
      name='Rule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Events.libsonnet',
      help='Resource Type definition for AWS::Events::Rule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Events::Rule Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Events::Rule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEventBusName': d.fn('`withEventBusName` EventBusName ', [d.arg('EventBusName', d.T.string)]),
    withEventBusName(EventBusName): {
      assert std.isString(EventBusName) : 'EventBusName must be a string',
      Properties+::: { EventBusName: EventBusName },
    },
    '#withEventPattern': d.fn('`withEventPattern` EventPattern ', [d.arg('EventPattern')]),
    withEventPattern(EventPattern): {
      // Type: string,object
      Properties+::: { EventPattern: EventPattern },
    },
    '#withScheduleExpression': d.fn('`withScheduleExpression` ScheduleExpression ', [d.arg('ScheduleExpression', d.T.string)]),
    withScheduleExpression(ScheduleExpression): {
      assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
      Properties+::: { ScheduleExpression: ScheduleExpression },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'DISABLED' || State == 'ENABLED' || State == 'ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS' : "State must be either 'DISABLED' or 'ENABLED' or 'ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS'",
      Properties+::: { State: State },
    },
    '#withTargets': d.fn('`withTargets` Targets ', [d.arg('Targets', d.T.array)]),
    withTargets(Targets): {
      assert std.isArray(Targets) : 'Targets must be a array',
      Properties+::: { Targets: Targets },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
}
