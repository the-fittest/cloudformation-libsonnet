local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CalculatedAttributeDefinition: {
    '#': d.pkg(
      name='CalculatedAttributeDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CustomerProfiles.libsonnet',
      help='A calculated attribute definition for Customer Profiles',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CustomerProfiles::CalculatedAttributeDefinition Resource
        * DomainName 
        * CalculatedAttributeName 
        * AttributeDetails 
        * Statistic 
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('CalculatedAttributeName', 'd.T.string'),
        d.arg('AttributeDetails', 'd.T.object'),
        d.arg('Statistic', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
      CalculatedAttributeName,
      AttributeDetails,
      Statistic,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(CalculatedAttributeName) : 'CalculatedAttributeName must be a string',
        CalculatedAttributeName: CalculatedAttributeName,
        assert std.isObject(AttributeDetails) : 'AttributeDetails must be a object',
        AttributeDetails: AttributeDetails,
        assert std.isString(Statistic) : 'Statistic must be a string',
        Statistic: Statistic,
      },
      DependsOn:: [],
      Type: 'AWS::CustomerProfiles::CalculatedAttributeDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withConditions': d.fn('`withConditions` Conditions ', [d.arg('Conditions', d.T.object)]),
    withConditions(Conditions): {
      assert std.isObject(Conditions) : 'Conditions must be a object',
      Properties+::: { Conditions: Conditions },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CustomerProfiles.libsonnet',
      help='A domain defined for 3rd party data source in Profile Service',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CustomerProfiles::Domain Resource
        * DomainName The unique name of the domain.
        * DefaultExpirationDays The default number of days until the data within the domain expires.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('DefaultExpirationDays', 'd.T.integer'),
      ]
    ),
    new(
      DomainName,
      DefaultExpirationDays,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isNumber(DefaultExpirationDays) : 'DefaultExpirationDays must be a integer',
        DefaultExpirationDays: DefaultExpirationDays,
      },
      DependsOn:: [],
      Type: 'AWS::CustomerProfiles::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeadLetterQueueUrl': d.fn('`withDeadLetterQueueUrl` DeadLetterQueueUrl ', [d.arg('DeadLetterQueueUrl', d.T.string)]),
    withDeadLetterQueueUrl(DeadLetterQueueUrl): {
      assert std.isString(DeadLetterQueueUrl) : 'DeadLetterQueueUrl must be a string',
      Properties+::: { DeadLetterQueueUrl: DeadLetterQueueUrl },
    },
    '#withDefaultEncryptionKey': d.fn('`withDefaultEncryptionKey` DefaultEncryptionKey ', [d.arg('DefaultEncryptionKey', d.T.string)]),
    withDefaultEncryptionKey(DefaultEncryptionKey): {
      assert std.isString(DefaultEncryptionKey) : 'DefaultEncryptionKey must be a string',
      Properties+::: { DefaultEncryptionKey: DefaultEncryptionKey },
    },
    '#withMatching': d.fn('`withMatching` Matching ', [d.arg('Matching', d.T.object)]),
    withMatching(Matching): {
      assert std.isObject(Matching) : 'Matching must be a object',
      Properties+::: { Matching: Matching },
    },
    '#withRuleBasedMatching': d.fn('`withRuleBasedMatching` RuleBasedMatching ', [d.arg('RuleBasedMatching', d.T.object)]),
    withRuleBasedMatching(RuleBasedMatching): {
      assert std.isObject(RuleBasedMatching) : 'RuleBasedMatching must be a object',
      Properties+::: { RuleBasedMatching: RuleBasedMatching },
    },
    '#withStats': d.fn('`withStats` Stats ', [d.arg('Stats', d.T.object)]),
    withStats(Stats): {
      assert std.isObject(Stats) : 'Stats must be a object',
      Properties+::: { Stats: Stats },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
  },
  EventStream: {
    '#': d.pkg(
      name='EventStream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CustomerProfiles.libsonnet',
      help='An Event Stream resource of Amazon Connect Customer Profiles',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CustomerProfiles::EventStream Resource
        * DomainName The unique name of the domain.
        * EventStreamName The name of the event stream.
        * Uri 
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('EventStreamName', 'd.T.string'),
        d.arg('Uri', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
      EventStreamName,
      Uri,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(EventStreamName) : 'EventStreamName must be a string',
        EventStreamName: EventStreamName,
        assert std.isString(Uri) : 'Uri must be a string',
        Uri: Uri,
      },
      DependsOn:: [],
      Type: 'AWS::CustomerProfiles::EventStream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEventStreamArn': d.fn('`withEventStreamArn` EventStreamArn ', [d.arg('EventStreamArn', d.T.string)]),
    withEventStreamArn(EventStreamArn): {
      assert std.isString(EventStreamArn) : 'EventStreamArn must be a string',
      Properties+::: { EventStreamArn: EventStreamArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'RUNNING' || State == 'STOPPED' : "State must be either 'RUNNING' or 'STOPPED'",
      Properties+::: { State: State },
    },
    '#withDestinationDetails': d.fn('`withDestinationDetails` DestinationDetails ', [d.arg('DestinationDetails', d.T.object)]),
    withDestinationDetails(DestinationDetails): {
      assert std.isObject(DestinationDetails) : 'DestinationDetails must be a object',
      Properties+::: { DestinationDetails: DestinationDetails },
    },
  },
  Integration: {
    '#': d.pkg(
      name='Integration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CustomerProfiles.libsonnet',
      help='The resource schema for creating an Amazon Connect Customer Profiles Integration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CustomerProfiles::Integration Resource
        * DomainName The unique name of the domain.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::CustomerProfiles::Integration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUri': d.fn('`withUri` Uri ', [d.arg('Uri', d.T.string)]),
    withUri(Uri): {
      assert std.isString(Uri) : 'Uri must be a string',
      Properties+::: { Uri: Uri },
    },
    '#withFlowDefinition': d.fn('`withFlowDefinition` FlowDefinition ', [d.arg('FlowDefinition', d.T.object)]),
    withFlowDefinition(FlowDefinition): {
      assert std.isObject(FlowDefinition) : 'FlowDefinition must be a object',
      Properties+::: { FlowDefinition: FlowDefinition },
    },
    '#withObjectTypeName': d.fn('`withObjectTypeName` ObjectTypeName ', [d.arg('ObjectTypeName', d.T.string)]),
    withObjectTypeName(ObjectTypeName): {
      assert std.isString(ObjectTypeName) : 'ObjectTypeName must be a string',
      Properties+::: { ObjectTypeName: ObjectTypeName },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withObjectTypeNames': d.fn('`withObjectTypeNames` ObjectTypeNames ', [d.arg('ObjectTypeNames', d.T.array)]),
    withObjectTypeNames(ObjectTypeNames): {
      assert std.isArray(ObjectTypeNames) : 'ObjectTypeNames must be a array',
      Properties+::: { ObjectTypeNames: ObjectTypeNames },
    },
    '#withEventTriggerNames': d.fn('`withEventTriggerNames` EventTriggerNames ', [d.arg('EventTriggerNames', d.T.array)]),
    withEventTriggerNames(EventTriggerNames): {
      assert std.isArray(EventTriggerNames) : 'EventTriggerNames must be a array',
      Properties+::: { EventTriggerNames: EventTriggerNames },
    },
  },
  ObjectType: {
    '#': d.pkg(
      name='ObjectType',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CustomerProfiles.libsonnet',
      help='An ObjectType resource of Amazon Connect Customer Profiles',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CustomerProfiles::ObjectType Resource
        * DomainName The unique name of the domain.
        * ObjectTypeName The name of the profile object type.
        * Description Description of the profile object type.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('ObjectTypeName', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
      ObjectTypeName,
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(ObjectTypeName) : 'ObjectTypeName must be a string',
        ObjectTypeName: ObjectTypeName,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::CustomerProfiles::ObjectType',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllowProfileCreation': d.fn('`withAllowProfileCreation` AllowProfileCreation ', [d.arg('AllowProfileCreation', d.T.boolean)]),
    withAllowProfileCreation(AllowProfileCreation): {
      assert std.isBoolean(AllowProfileCreation) : 'AllowProfileCreation must be a boolean',
      Properties+::: { AllowProfileCreation: AllowProfileCreation },
    },
    '#withEncryptionKey': d.fn('`withEncryptionKey` EncryptionKey ', [d.arg('EncryptionKey', d.T.string)]),
    withEncryptionKey(EncryptionKey): {
      assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
      Properties+::: { EncryptionKey: EncryptionKey },
    },
    '#withExpirationDays': d.fn('`withExpirationDays` ExpirationDays ', [d.arg('ExpirationDays', d.T.integer)]),
    withExpirationDays(ExpirationDays): {
      assert std.isNumber(ExpirationDays) : 'ExpirationDays must be a integer',
      Properties+::: { ExpirationDays: ExpirationDays },
    },
    '#withFields': d.fn('`withFields` Fields ', [d.arg('Fields', d.T.array)]),
    withFields(Fields): {
      assert std.isArray(Fields) : 'Fields must be a array',
      Properties+::: { Fields: Fields },
    },
    '#withKeys': d.fn('`withKeys` Keys ', [d.arg('Keys', d.T.array)]),
    withKeys(Keys): {
      assert std.isArray(Keys) : 'Keys must be a array',
      Properties+::: { Keys: Keys },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withLastUpdatedAt': d.fn('`withLastUpdatedAt` LastUpdatedAt ', [d.arg('LastUpdatedAt', d.T.string)]),
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: { LastUpdatedAt: LastUpdatedAt },
    },
    '#withSourceLastUpdatedTimestampFormat': d.fn('`withSourceLastUpdatedTimestampFormat` SourceLastUpdatedTimestampFormat ', [d.arg('SourceLastUpdatedTimestampFormat', d.T.string)]),
    withSourceLastUpdatedTimestampFormat(SourceLastUpdatedTimestampFormat): {
      assert std.isString(SourceLastUpdatedTimestampFormat) : 'SourceLastUpdatedTimestampFormat must be a string',
      Properties+::: { SourceLastUpdatedTimestampFormat: SourceLastUpdatedTimestampFormat },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTemplateId': d.fn('`withTemplateId` TemplateId ', [d.arg('TemplateId', d.T.string)]),
    withTemplateId(TemplateId): {
      assert std.isString(TemplateId) : 'TemplateId must be a string',
      Properties+::: { TemplateId: TemplateId },
    },
  },
  SegmentDefinition: {
    '#': d.pkg(
      name='SegmentDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CustomerProfiles.libsonnet',
      help='A segment definition resource of Amazon Connect Customer Profiles',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CustomerProfiles::SegmentDefinition Resource
        * DomainName The unique name of the domain.
        * DisplayName The display name of the segment definition.
        * SegmentDefinitionName The unique name of the segment definition.
        * SegmentGroups An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
        d.arg('DisplayName', 'd.T.string'),
        d.arg('SegmentDefinitionName', 'd.T.string'),
        d.arg('SegmentGroups', 'd.T.object'),
      ]
    ),
    new(
      DomainName,
      DisplayName,
      SegmentDefinitionName,
      SegmentGroups,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(SegmentDefinitionName) : 'SegmentDefinitionName must be a string',
        SegmentDefinitionName: SegmentDefinitionName,
        assert std.isObject(SegmentGroups) : 'SegmentGroups must be a object',
        SegmentGroups: SegmentGroups,
      },
      DependsOn:: [],
      Type: 'AWS::CustomerProfiles::SegmentDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSegmentDefinitionArn': d.fn('`withSegmentDefinitionArn` SegmentDefinitionArn ', [d.arg('SegmentDefinitionArn', d.T.string)]),
    withSegmentDefinitionArn(SegmentDefinitionArn): {
      assert std.isString(SegmentDefinitionArn) : 'SegmentDefinitionArn must be a string',
      Properties+::: { SegmentDefinitionArn: SegmentDefinitionArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
