local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AgentStatus: {
    '#': d.pkg(
      name='AgentStatus',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::AgentStatus',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::AgentStatus Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * Name The name of the status.
        * State The state of the status.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('State', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Name,
      State,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(State) : 'State must be a string',
        assert State == 'ENABLED' || State == 'DISABLED' : "State must be either 'ENABLED' or 'DISABLED'",
        State: State,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::AgentStatus',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAgentStatusArn': d.fn('`withAgentStatusArn` AgentStatusArn ', [d.arg('AgentStatusArn', d.T.string)]),
    withAgentStatusArn(AgentStatusArn): {
      assert std.isString(AgentStatusArn) : 'AgentStatusArn must be a string',
      Properties+::: { AgentStatusArn: AgentStatusArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisplayOrder': d.fn('`withDisplayOrder` DisplayOrder ', [d.arg('DisplayOrder', d.T.integer)]),
    withDisplayOrder(DisplayOrder): {
      assert std.isNumber(DisplayOrder) : 'DisplayOrder must be a integer',
      Properties+::: { DisplayOrder: DisplayOrder },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'ROUTABLE' || Type == 'CUSTOM' || Type == 'OFFLINE' : "Type must be either 'ROUTABLE' or 'CUSTOM' or 'OFFLINE'",
      Properties+::: { Type: Type },
    },
    '#withResetOrderNumber': d.fn('`withResetOrderNumber` ResetOrderNumber ', [d.arg('ResetOrderNumber', d.T.boolean)]),
    withResetOrderNumber(ResetOrderNumber): {
      assert std.isBoolean(ResetOrderNumber) : 'ResetOrderNumber must be a boolean',
      Properties+::: { ResetOrderNumber: ResetOrderNumber },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLastModifiedRegion': d.fn('`withLastModifiedRegion` LastModifiedRegion ', [d.arg('LastModifiedRegion', d.T.string)]),
    withLastModifiedRegion(LastModifiedRegion): {
      assert std.isString(LastModifiedRegion) : 'LastModifiedRegion must be a string',
      Properties+::: { LastModifiedRegion: LastModifiedRegion },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.integer)]),
    withLastModifiedTime(LastModifiedTime): {
      // Type: number
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  ApprovedOrigin: {
    '#': d.pkg(
      name='ApprovedOrigin',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::ApprovedOrigin',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::ApprovedOrigin Resource
        * Origin 
        * InstanceId 
      |||,
      args=[
        d.arg('Origin', 'd.T.string'),
        d.arg('InstanceId', 'd.T.string'),
      ]
    ),
    new(
      Origin,
      InstanceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Origin) : 'Origin must be a string',
        Origin: Origin,
        assert std.isString(InstanceId) : 'InstanceId must be a string',
        InstanceId: InstanceId,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::ApprovedOrigin',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  ContactFlow: {
    '#': d.pkg(
      name='ContactFlow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::ContactFlow',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::ContactFlow Resource
        * InstanceArn The identifier of the Amazon Connect instance (ARN).
        * Content The content of the contact flow in JSON format.
        * Name The name of the contact flow.
        * Type The type of the contact flow.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Content', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Content,
      Name,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Content) : 'Content must be a string',
        Content: Content,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'CONTACT_FLOW' || Type == 'CUSTOMER_QUEUE' || Type == 'CUSTOMER_HOLD' || Type == 'CUSTOMER_WHISPER' || Type == 'AGENT_HOLD' || Type == 'AGENT_WHISPER' || Type == 'OUTBOUND_WHISPER' || Type == 'AGENT_TRANSFER' || Type == 'QUEUE_TRANSFER' || Type == 'CAMPAIGN' : "Type must be either 'CONTACT_FLOW' or 'CUSTOMER_QUEUE' or 'CUSTOMER_HOLD' or 'CUSTOMER_WHISPER' or 'AGENT_HOLD' or 'AGENT_WHISPER' or 'OUTBOUND_WHISPER' or 'AGENT_TRANSFER' or 'QUEUE_TRANSFER' or 'CAMPAIGN'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::ContactFlow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactFlowArn': d.fn('`withContactFlowArn` ContactFlowArn ', [d.arg('ContactFlowArn', d.T.string)]),
    withContactFlowArn(ContactFlowArn): {
      assert std.isString(ContactFlowArn) : 'ContactFlowArn must be a string',
      Properties+::: { ContactFlowArn: ContactFlowArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'ACTIVE' || State == 'ARCHIVED' : "State must be either 'ACTIVE' or 'ARCHIVED'",
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ContactFlowModule: {
    '#': d.pkg(
      name='ContactFlowModule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::ContactFlowModule.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::ContactFlowModule Resource
        * InstanceArn The identifier of the Amazon Connect instance (ARN).
        * Name The name of the contact flow module.
        * Content The content of the contact flow module in JSON format.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Content', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Name,
      Content,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Content) : 'Content must be a string',
        Content: Content,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::ContactFlowModule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactFlowModuleArn': d.fn('`withContactFlowModuleArn` ContactFlowModuleArn ', [d.arg('ContactFlowModuleArn', d.T.string)]),
    withContactFlowModuleArn(ContactFlowModuleArn): {
      assert std.isString(ContactFlowModuleArn) : 'ContactFlowModuleArn must be a string',
      Properties+::: { ContactFlowModuleArn: ContactFlowModuleArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EmailAddress: {
    '#': d.pkg(
      name='EmailAddress',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::EmailAddress',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::EmailAddress Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * EmailAddress Email address to be created for this instance
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('EmailAddress', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      EmailAddress,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(EmailAddress) : 'EmailAddress must be a string',
        EmailAddress: EmailAddress,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::EmailAddress',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEmailAddressArn': d.fn('`withEmailAddressArn` EmailAddressArn ', [d.arg('EmailAddressArn', d.T.string)]),
    withEmailAddressArn(EmailAddressArn): {
      assert std.isString(EmailAddressArn) : 'EmailAddressArn must be a string',
      Properties+::: { EmailAddressArn: EmailAddressArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EvaluationForm: {
    '#': d.pkg(
      name='EvaluationForm',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Creates an evaluation form for the specified CON instance.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::EvaluationForm Resource
        * Title A title of the evaluation form.
        * InstanceArn The identifier of the Amazon Connect instance.
        * Items Items that are part of the evaluation form. The total number of sections and questions must not exceed 100 each. Questions must be contained in a section.*Minimum size*: 1*Maximum size*: 100
        * Status The status of the evaluation form.*Allowed values*: DRAFT | ACTIVE
      |||,
      args=[
        d.arg('Title', 'd.T.string'),
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Items', 'd.T.array'),
        d.arg('Status', 'd.T.string'),
      ]
    ),
    new(
      Title,
      InstanceArn,
      Items,
      Status,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Title) : 'Title must be a string',
        Title: Title,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isArray(Items) : 'Items must be a array',
        Items: Items,
        assert std.isString(Status) : 'Status must be a string',
        assert Status == 'DRAFT' || Status == 'ACTIVE' : "Status must be either 'DRAFT' or 'ACTIVE'",
        Status: Status,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::EvaluationForm',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEvaluationFormArn': d.fn('`withEvaluationFormArn` EvaluationFormArn ', [d.arg('EvaluationFormArn', d.T.string)]),
    withEvaluationFormArn(EvaluationFormArn): {
      assert std.isString(EvaluationFormArn) : 'EvaluationFormArn must be a string',
      Properties+::: { EvaluationFormArn: EvaluationFormArn },
    },
    '#withScoringStrategy': d.fn('`withScoringStrategy` ScoringStrategy ', [d.arg('ScoringStrategy', d.T.object)]),
    withScoringStrategy(ScoringStrategy): {
      assert std.isObject(ScoringStrategy) : 'ScoringStrategy must be a object',
      Properties+::: { ScoringStrategy: ScoringStrategy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  HoursOfOperation: {
    '#': d.pkg(
      name='HoursOfOperation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::HoursOfOperation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::HoursOfOperation Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * Name The name of the hours of operation.
        * TimeZone The time zone of the hours of operation.
        * Config Configuration information for the hours of operation: day, start time, and end time.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('TimeZone', 'd.T.string'),
        d.arg('Config', 'd.T.array'),
      ]
    ),
    new(
      InstanceArn,
      Name,
      TimeZone,
      Config,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(TimeZone) : 'TimeZone must be a string',
        TimeZone: TimeZone,
        assert std.isArray(Config) : 'Config must be a array',
        Config: Config,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::HoursOfOperation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withHoursOfOperationArn': d.fn('`withHoursOfOperationArn` HoursOfOperationArn ', [d.arg('HoursOfOperationArn', d.T.string)]),
    withHoursOfOperationArn(HoursOfOperationArn): {
      assert std.isString(HoursOfOperationArn) : 'HoursOfOperationArn must be a string',
      Properties+::: { HoursOfOperationArn: HoursOfOperationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withHoursOfOperationOverrides': d.fn('`withHoursOfOperationOverrides` HoursOfOperationOverrides ', [d.arg('HoursOfOperationOverrides', d.T.array)]),
    withHoursOfOperationOverrides(HoursOfOperationOverrides): {
      assert std.isArray(HoursOfOperationOverrides) : 'HoursOfOperationOverrides must be a array',
      Properties+::: { HoursOfOperationOverrides: HoursOfOperationOverrides },
    },
  },
  Instance: {
    '#': d.pkg(
      name='Instance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::Instance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::Instance Resource
        * IdentityManagementType Specifies the type of directory integration for new instance.
        * Attributes The attributes for the instance.
      |||,
      args=[
        d.arg('IdentityManagementType', 'd.T.string'),
        d.arg('Attributes', 'd.T.object'),
      ]
    ),
    new(
      IdentityManagementType,
      Attributes,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IdentityManagementType) : 'IdentityManagementType must be a string',
        assert IdentityManagementType == 'SAML' || IdentityManagementType == 'CONNECT_MANAGED' || IdentityManagementType == 'EXISTING_DIRECTORY' : "IdentityManagementType must be either 'SAML' or 'CONNECT_MANAGED' or 'EXISTING_DIRECTORY'",
        IdentityManagementType: IdentityManagementType,
        assert std.isObject(Attributes) : 'Attributes must be a object',
        Attributes: Attributes,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::Instance',
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
    '#withInstanceAlias': d.fn('`withInstanceAlias` InstanceAlias ', [d.arg('InstanceAlias', d.T.string)]),
    withInstanceAlias(InstanceAlias): {
      assert std.isString(InstanceAlias) : 'InstanceAlias must be a string',
      Properties+::: { InstanceAlias: InstanceAlias },
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withServiceRole': d.fn('`withServiceRole` ServiceRole ', [d.arg('ServiceRole', d.T.string)]),
    withServiceRole(ServiceRole): {
      assert std.isString(ServiceRole) : 'ServiceRole must be a string',
      Properties+::: { ServiceRole: ServiceRole },
    },
    '#withInstanceStatus': d.fn('`withInstanceStatus` InstanceStatus ', [d.arg('InstanceStatus', d.T.string)]),
    withInstanceStatus(InstanceStatus): {
      assert std.isString(InstanceStatus) : 'InstanceStatus must be a string',
      assert InstanceStatus == 'CREATION_IN_PROGRESS' || InstanceStatus == 'CREATION_FAILED' || InstanceStatus == 'ACTIVE' : "InstanceStatus must be either 'CREATION_IN_PROGRESS' or 'CREATION_FAILED' or 'ACTIVE'",
      Properties+::: { InstanceStatus: InstanceStatus },
    },
    '#withDirectoryId': d.fn('`withDirectoryId` DirectoryId ', [d.arg('DirectoryId', d.T.string)]),
    withDirectoryId(DirectoryId): {
      assert std.isString(DirectoryId) : 'DirectoryId must be a string',
      Properties+::: { DirectoryId: DirectoryId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  InstanceStorageConfig: {
    '#': d.pkg(
      name='InstanceStorageConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::InstanceStorageConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::InstanceStorageConfig Resource
        * InstanceArn Connect Instance ID with which the storage config will be associated
        * ResourceType 
        * StorageType 
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('ResourceType', 'd.T.string'),
        d.arg('StorageType', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      ResourceType,
      StorageType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        ResourceType: ResourceType,
        assert std.isString(StorageType) : 'StorageType must be a string',
        StorageType: StorageType,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::InstanceStorageConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
    '#withS3Config': d.fn('`withS3Config` S3Config ', [d.arg('S3Config', d.T.object)]),
    withS3Config(S3Config): {
      assert std.isObject(S3Config) : 'S3Config must be a object',
      Properties+::: { S3Config: S3Config },
    },
    '#withKinesisVideoStreamConfig': d.fn('`withKinesisVideoStreamConfig` KinesisVideoStreamConfig ', [d.arg('KinesisVideoStreamConfig', d.T.object)]),
    withKinesisVideoStreamConfig(KinesisVideoStreamConfig): {
      assert std.isObject(KinesisVideoStreamConfig) : 'KinesisVideoStreamConfig must be a object',
      Properties+::: { KinesisVideoStreamConfig: KinesisVideoStreamConfig },
    },
    '#withKinesisStreamConfig': d.fn('`withKinesisStreamConfig` KinesisStreamConfig ', [d.arg('KinesisStreamConfig', d.T.object)]),
    withKinesisStreamConfig(KinesisStreamConfig): {
      assert std.isObject(KinesisStreamConfig) : 'KinesisStreamConfig must be a object',
      Properties+::: { KinesisStreamConfig: KinesisStreamConfig },
    },
    '#withKinesisFirehoseConfig': d.fn('`withKinesisFirehoseConfig` KinesisFirehoseConfig ', [d.arg('KinesisFirehoseConfig', d.T.object)]),
    withKinesisFirehoseConfig(KinesisFirehoseConfig): {
      assert std.isObject(KinesisFirehoseConfig) : 'KinesisFirehoseConfig must be a object',
      Properties+::: { KinesisFirehoseConfig: KinesisFirehoseConfig },
    },
  },
  IntegrationAssociation: {
    '#': d.pkg(
      name='IntegrationAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::IntegrationAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::IntegrationAssociation Resource
        * InstanceId 
        * IntegrationType 
        * IntegrationArn 
      |||,
      args=[
        d.arg('InstanceId', 'd.T.string'),
        d.arg('IntegrationType', 'd.T.string'),
        d.arg('IntegrationArn', 'd.T.string'),
      ]
    ),
    new(
      InstanceId,
      IntegrationType,
      IntegrationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceId) : 'InstanceId must be a string',
        InstanceId: InstanceId,
        assert std.isString(IntegrationType) : 'IntegrationType must be a string',
        IntegrationType: IntegrationType,
        assert std.isString(IntegrationArn) : 'IntegrationArn must be a string',
        IntegrationArn: IntegrationArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::IntegrationAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIntegrationAssociationId': d.fn('`withIntegrationAssociationId` IntegrationAssociationId ', [d.arg('IntegrationAssociationId', d.T.string)]),
    withIntegrationAssociationId(IntegrationAssociationId): {
      assert std.isString(IntegrationAssociationId) : 'IntegrationAssociationId must be a string',
      Properties+::: { IntegrationAssociationId: IntegrationAssociationId },
    },
  },
  PhoneNumber: {
    '#': d.pkg(
      name='PhoneNumber',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::PhoneNumber',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::PhoneNumber Resource
        * TargetArn The ARN of the target the phone number is claimed to.
      |||,
      args=[
        d.arg('TargetArn', 'd.T.string'),
      ]
    ),
    new(
      TargetArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::PhoneNumber',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPhoneNumberArn': d.fn('`withPhoneNumberArn` PhoneNumberArn ', [d.arg('PhoneNumberArn', d.T.string)]),
    withPhoneNumberArn(PhoneNumberArn): {
      assert std.isString(PhoneNumberArn) : 'PhoneNumberArn must be a string',
      Properties+::: { PhoneNumberArn: PhoneNumberArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withCountryCode': d.fn('`withCountryCode` CountryCode ', [d.arg('CountryCode', d.T.string)]),
    withCountryCode(CountryCode): {
      assert std.isString(CountryCode) : 'CountryCode must be a string',
      Properties+::: { CountryCode: CountryCode },
    },
    '#withPrefix': d.fn('`withPrefix` Prefix ', [d.arg('Prefix', d.T.string)]),
    withPrefix(Prefix): {
      assert std.isString(Prefix) : 'Prefix must be a string',
      Properties+::: { Prefix: Prefix },
    },
    '#withAddress': d.fn('`withAddress` Address ', [d.arg('Address', d.T.string)]),
    withAddress(Address): {
      assert std.isString(Address) : 'Address must be a string',
      Properties+::: { Address: Address },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSourcePhoneNumberArn': d.fn('`withSourcePhoneNumberArn` SourcePhoneNumberArn ', [d.arg('SourcePhoneNumberArn', d.T.string)]),
    withSourcePhoneNumberArn(SourcePhoneNumberArn): {
      assert std.isString(SourcePhoneNumberArn) : 'SourcePhoneNumberArn must be a string',
      Properties+::: { SourcePhoneNumberArn: SourcePhoneNumberArn },
    },
  },
  PredefinedAttribute: {
    '#': d.pkg(
      name='PredefinedAttribute',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::PredefinedAttribute',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::PredefinedAttribute Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * Name The name of the predefined attribute.
        * Values The values of a predefined attribute.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Values', 'd.T.object'),
      ]
    ),
    new(
      InstanceArn,
      Name,
      Values,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Values) : 'Values must be a object',
        Values: Values,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::PredefinedAttribute',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLastModifiedRegion': d.fn('`withLastModifiedRegion` LastModifiedRegion ', [d.arg('LastModifiedRegion', d.T.string)]),
    withLastModifiedRegion(LastModifiedRegion): {
      assert std.isString(LastModifiedRegion) : 'LastModifiedRegion must be a string',
      Properties+::: { LastModifiedRegion: LastModifiedRegion },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.integer)]),
    withLastModifiedTime(LastModifiedTime): {
      // Type: number
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  Prompt: {
    '#': d.pkg(
      name='Prompt',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::Prompt',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::Prompt Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * Name The name of the prompt.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::Prompt',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withS3Uri': d.fn('`withS3Uri` S3Uri ', [d.arg('S3Uri', d.T.string)]),
    withS3Uri(S3Uri): {
      assert std.isString(S3Uri) : 'S3Uri must be a string',
      Properties+::: { S3Uri: S3Uri },
    },
    '#withPromptArn': d.fn('`withPromptArn` PromptArn ', [d.arg('PromptArn', d.T.string)]),
    withPromptArn(PromptArn): {
      assert std.isString(PromptArn) : 'PromptArn must be a string',
      Properties+::: { PromptArn: PromptArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Queue: {
    '#': d.pkg(
      name='Queue',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::Queue',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::Queue Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * HoursOfOperationArn The identifier for the hours of operation.
        * Name The name of the queue.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('HoursOfOperationArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      HoursOfOperationArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(HoursOfOperationArn) : 'HoursOfOperationArn must be a string',
        HoursOfOperationArn: HoursOfOperationArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::Queue',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ENABLED' || Status == 'DISABLED' : "Status must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { Status: Status },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'STANDARD' || Type == 'AGENT' : "Type must be either 'STANDARD' or 'AGENT'",
      Properties+::: { Type: Type },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withQuickConnectArns': d.fn('`withQuickConnectArns` QuickConnectArns ', [d.arg('QuickConnectArns', d.T.array)]),
    withQuickConnectArns(QuickConnectArns): {
      assert std.isArray(QuickConnectArns) : 'QuickConnectArns must be a array',
      Properties+::: { QuickConnectArns: QuickConnectArns },
    },
    '#withOutboundCallerConfig': d.fn('`withOutboundCallerConfig` OutboundCallerConfig ', [d.arg('OutboundCallerConfig', d.T.object)]),
    withOutboundCallerConfig(OutboundCallerConfig): {
      assert std.isObject(OutboundCallerConfig) : 'OutboundCallerConfig must be a object',
      Properties+::: { OutboundCallerConfig: OutboundCallerConfig },
    },
    '#withQueueArn': d.fn('`withQueueArn` QueueArn ', [d.arg('QueueArn', d.T.string)]),
    withQueueArn(QueueArn): {
      assert std.isString(QueueArn) : 'QueueArn must be a string',
      Properties+::: { QueueArn: QueueArn },
    },
    '#withMaxContacts': d.fn('`withMaxContacts` MaxContacts ', [d.arg('MaxContacts', d.T.integer)]),
    withMaxContacts(MaxContacts): {
      assert std.isNumber(MaxContacts) : 'MaxContacts must be a integer',
      Properties+::: { MaxContacts: MaxContacts },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  QuickConnect: {
    '#': d.pkg(
      name='QuickConnect',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::QuickConnect',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::QuickConnect Resource
        * Name The name of the quick connect.
        * InstanceArn The identifier of the Amazon Connect instance.
        * QuickConnectConfig Configuration settings for the quick connect.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('QuickConnectConfig', 'd.T.object'),
      ]
    ),
    new(
      Name,
      InstanceArn,
      QuickConnectConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isObject(QuickConnectConfig) : 'QuickConnectConfig must be a object',
        QuickConnectConfig: QuickConnectConfig,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::QuickConnect',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withQuickConnectArn': d.fn('`withQuickConnectArn` QuickConnectArn ', [d.arg('QuickConnectArn', d.T.string)]),
    withQuickConnectArn(QuickConnectArn): {
      assert std.isString(QuickConnectArn) : 'QuickConnectArn must be a string',
      Properties+::: { QuickConnectArn: QuickConnectArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withQuickConnectType': d.fn('`withQuickConnectType` QuickConnectType ', [d.arg('QuickConnectType', d.T.string)]),
    withQuickConnectType(QuickConnectType): {
      assert std.isString(QuickConnectType) : 'QuickConnectType must be a string',
      assert QuickConnectType == 'PHONE_NUMBER' || QuickConnectType == 'QUEUE' || QuickConnectType == 'USER' : "QuickConnectType must be either 'PHONE_NUMBER' or 'QUEUE' or 'USER'",
      Properties+::: { QuickConnectType: QuickConnectType },
    },
  },
  RoutingProfile: {
    '#': d.pkg(
      name='RoutingProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::RoutingProfile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::RoutingProfile Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * Name The name of the routing profile.
        * Description The description of the routing profile.
        * MediaConcurrencies The channels agents can handle in the Contact Control Panel (CCP) for this routing profile.
        * DefaultOutboundQueueArn The identifier of the default outbound queue for this routing profile.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
        d.arg('MediaConcurrencies', 'd.T.array'),
        d.arg('DefaultOutboundQueueArn', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Name,
      Description,
      MediaConcurrencies,
      DefaultOutboundQueueArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isArray(MediaConcurrencies) : 'MediaConcurrencies must be a array',
        MediaConcurrencies: MediaConcurrencies,
        assert std.isString(DefaultOutboundQueueArn) : 'DefaultOutboundQueueArn must be a string',
        DefaultOutboundQueueArn: DefaultOutboundQueueArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::RoutingProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRoutingProfileArn': d.fn('`withRoutingProfileArn` RoutingProfileArn ', [d.arg('RoutingProfileArn', d.T.string)]),
    withRoutingProfileArn(RoutingProfileArn): {
      assert std.isString(RoutingProfileArn) : 'RoutingProfileArn must be a string',
      Properties+::: { RoutingProfileArn: RoutingProfileArn },
    },
    '#withQueueConfigs': d.fn('`withQueueConfigs` QueueConfigs ', [d.arg('QueueConfigs', d.T.array)]),
    withQueueConfigs(QueueConfigs): {
      assert std.isArray(QueueConfigs) : 'QueueConfigs must be a array',
      Properties+::: { QueueConfigs: QueueConfigs },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAgentAvailabilityTimer': d.fn('`withAgentAvailabilityTimer` AgentAvailabilityTimer ', [d.arg('AgentAvailabilityTimer', d.T.string)]),
    withAgentAvailabilityTimer(AgentAvailabilityTimer): {
      assert std.isString(AgentAvailabilityTimer) : 'AgentAvailabilityTimer must be a string',
      assert AgentAvailabilityTimer == 'TIME_SINCE_LAST_ACTIVITY' || AgentAvailabilityTimer == 'TIME_SINCE_LAST_INBOUND' : "AgentAvailabilityTimer must be either 'TIME_SINCE_LAST_ACTIVITY' or 'TIME_SINCE_LAST_INBOUND'",
      Properties+::: { AgentAvailabilityTimer: AgentAvailabilityTimer },
    },
  },
  Rule: {
    '#': d.pkg(
      name='Rule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS:Connect::Rule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::Rule Resource
        * Name The name of the rule.
        * InstanceArn The Amazon Resource Name (ARN) of the instance.
        * TriggerEventSource The event source that triggers the rule.
        * Function The conditions of a rule.
        * Actions The list of actions that will be executed when a rule is triggered.
        * PublishStatus The publish status of a rule, either draft or published.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('TriggerEventSource', 'd.T.object'),
        d.arg('Function', 'd.T.string'),
        d.arg('Actions', 'd.T.object'),
        d.arg('PublishStatus', 'd.T.string'),
      ]
    ),
    new(
      Name,
      InstanceArn,
      TriggerEventSource,
      Function,
      Actions,
      PublishStatus,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isObject(TriggerEventSource) : 'TriggerEventSource must be a object',
        TriggerEventSource: TriggerEventSource,
        assert std.isString(Function) : 'Function must be a string',
        Function: Function,
        assert std.isObject(Actions) : 'Actions must be a object',
        Actions: Actions,
        assert std.isString(PublishStatus) : 'PublishStatus must be a string',
        assert PublishStatus == 'DRAFT' || PublishStatus == 'PUBLISHED' : "PublishStatus must be either 'DRAFT' or 'PUBLISHED'",
        PublishStatus: PublishStatus,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::Rule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRuleArn': d.fn('`withRuleArn` RuleArn ', [d.arg('RuleArn', d.T.string)]),
    withRuleArn(RuleArn): {
      assert std.isString(RuleArn) : 'RuleArn must be a string',
      Properties+::: { RuleArn: RuleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  SecurityKey: {
    '#': d.pkg(
      name='SecurityKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::SecurityKey',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::SecurityKey Resource
        * Key 
        * InstanceId 
      |||,
      args=[
        d.arg('Key', 'd.T.string'),
        d.arg('InstanceId', 'd.T.string'),
      ]
    ),
    new(
      Key,
      InstanceId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Key) : 'Key must be a string',
        Key: Key,
        assert std.isString(InstanceId) : 'InstanceId must be a string',
        InstanceId: InstanceId,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::SecurityKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
  },
  SecurityProfile: {
    '#': d.pkg(
      name='SecurityProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::SecurityProfile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::SecurityProfile Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * SecurityProfileName The name of the security profile.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('SecurityProfileName', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      SecurityProfileName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(SecurityProfileName) : 'SecurityProfileName must be a string',
        SecurityProfileName: SecurityProfileName,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::SecurityProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllowedAccessControlTags': d.fn('`withAllowedAccessControlTags` AllowedAccessControlTags ', [d.arg('AllowedAccessControlTags', d.T.array)]),
    withAllowedAccessControlTags(AllowedAccessControlTags): {
      assert std.isArray(AllowedAccessControlTags) : 'AllowedAccessControlTags must be a array',
      Properties+::: { AllowedAccessControlTags: AllowedAccessControlTags },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withSecurityProfileArn': d.fn('`withSecurityProfileArn` SecurityProfileArn ', [d.arg('SecurityProfileArn', d.T.string)]),
    withSecurityProfileArn(SecurityProfileArn): {
      assert std.isString(SecurityProfileArn) : 'SecurityProfileArn must be a string',
      Properties+::: { SecurityProfileArn: SecurityProfileArn },
    },
    '#withTagRestrictedResources': d.fn('`withTagRestrictedResources` TagRestrictedResources ', [d.arg('TagRestrictedResources', d.T.array)]),
    withTagRestrictedResources(TagRestrictedResources): {
      assert std.isArray(TagRestrictedResources) : 'TagRestrictedResources must be a array',
      Properties+::: { TagRestrictedResources: TagRestrictedResources },
    },
    '#withHierarchyRestrictedResources': d.fn('`withHierarchyRestrictedResources` HierarchyRestrictedResources ', [d.arg('HierarchyRestrictedResources', d.T.array)]),
    withHierarchyRestrictedResources(HierarchyRestrictedResources): {
      assert std.isArray(HierarchyRestrictedResources) : 'HierarchyRestrictedResources must be a array',
      Properties+::: { HierarchyRestrictedResources: HierarchyRestrictedResources },
    },
    '#withAllowedAccessControlHierarchyGroupId': d.fn('`withAllowedAccessControlHierarchyGroupId` AllowedAccessControlHierarchyGroupId ', [d.arg('AllowedAccessControlHierarchyGroupId', d.T.string)]),
    withAllowedAccessControlHierarchyGroupId(AllowedAccessControlHierarchyGroupId): {
      assert std.isString(AllowedAccessControlHierarchyGroupId) : 'AllowedAccessControlHierarchyGroupId must be a string',
      Properties+::: { AllowedAccessControlHierarchyGroupId: AllowedAccessControlHierarchyGroupId },
    },
    '#withApplications': d.fn('`withApplications` Applications ', [d.arg('Applications', d.T.array)]),
    withApplications(Applications): {
      assert std.isArray(Applications) : 'Applications must be a array',
      Properties+::: { Applications: Applications },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLastModifiedRegion': d.fn('`withLastModifiedRegion` LastModifiedRegion ', [d.arg('LastModifiedRegion', d.T.string)]),
    withLastModifiedRegion(LastModifiedRegion): {
      assert std.isString(LastModifiedRegion) : 'LastModifiedRegion must be a string',
      Properties+::: { LastModifiedRegion: LastModifiedRegion },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.integer)]),
    withLastModifiedTime(LastModifiedTime): {
      // Type: number
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  TaskTemplate: {
    '#': d.pkg(
      name='TaskTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::TaskTemplate.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::TaskTemplate Resource
        * InstanceArn The identifier (arn) of the instance.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::TaskTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withContactFlowArn': d.fn('`withContactFlowArn` ContactFlowArn ', [d.arg('ContactFlowArn', d.T.string)]),
    withContactFlowArn(ContactFlowArn): {
      assert std.isString(ContactFlowArn) : 'ContactFlowArn must be a string',
      Properties+::: { ContactFlowArn: ContactFlowArn },
    },
    '#withConstraints': d.fn('`withConstraints` Constraints ', [d.arg('Constraints', d.T.object)]),
    withConstraints(Constraints): {
      assert std.isObject(Constraints) : 'Constraints must be a object',
      Properties+::: { Constraints: Constraints },
    },
    '#withDefaults': d.fn('`withDefaults` Defaults ', [d.arg('Defaults', d.T.array)]),
    withDefaults(Defaults): {
      assert std.isArray(Defaults) : 'Defaults must be a array',
      Properties+::: { Defaults: Defaults },
    },
    '#withFields': d.fn('`withFields` Fields ', [d.arg('Fields', d.T.array)]),
    withFields(Fields): {
      assert std.isArray(Fields) : 'Fields must be a array',
      Properties+::: { Fields: Fields },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TrafficDistributionGroup: {
    '#': d.pkg(
      name='TrafficDistributionGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::TrafficDistributionGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::TrafficDistributionGroup Resource
        * InstanceArn The identifier of the Amazon Connect instance that has been replicated.
        * Name The name for the traffic distribution group.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::TrafficDistributionGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTrafficDistributionGroupArn': d.fn('`withTrafficDistributionGroupArn` TrafficDistributionGroupArn ', [d.arg('TrafficDistributionGroupArn', d.T.string)]),
    withTrafficDistributionGroupArn(TrafficDistributionGroupArn): {
      assert std.isString(TrafficDistributionGroupArn) : 'TrafficDistributionGroupArn must be a string',
      Properties+::: { TrafficDistributionGroupArn: TrafficDistributionGroupArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATION_IN_PROGRESS' || Status == 'ACTIVE' || Status == 'CREATION_FAILED' || Status == 'PENDING_DELETION' || Status == 'DELETION_FAILED' || Status == 'UPDATE_IN_PROGRESS' : "Status must be either 'CREATION_IN_PROGRESS' or 'ACTIVE' or 'CREATION_FAILED' or 'PENDING_DELETION' or 'DELETION_FAILED' or 'UPDATE_IN_PROGRESS'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withIsDefault': d.fn('`withIsDefault` IsDefault ', [d.arg('IsDefault', d.T.boolean)]),
    withIsDefault(IsDefault): {
      assert std.isBoolean(IsDefault) : 'IsDefault must be a boolean',
      Properties+::: { IsDefault: IsDefault },
    },
  },
  User: {
    '#': d.pkg(
      name='User',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::User',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::User Resource
        * InstanceArn The identifier of the Amazon Connect instance.
        * PhoneConfig The phone settings for the user.
        * RoutingProfileArn The identifier of the routing profile for the user.
        * SecurityProfileArns One or more security profile arns for the user
        * Username The user name for the account.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('PhoneConfig', 'd.T.object'),
        d.arg('RoutingProfileArn', 'd.T.string'),
        d.arg('SecurityProfileArns', 'd.T.array'),
        d.arg('Username', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      PhoneConfig,
      RoutingProfileArn,
      SecurityProfileArns,
      Username,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isObject(PhoneConfig) : 'PhoneConfig must be a object',
        PhoneConfig: PhoneConfig,
        assert std.isString(RoutingProfileArn) : 'RoutingProfileArn must be a string',
        RoutingProfileArn: RoutingProfileArn,
        assert std.isArray(SecurityProfileArns) : 'SecurityProfileArns must be a array',
        SecurityProfileArns: SecurityProfileArns,
        assert std.isString(Username) : 'Username must be a string',
        Username: Username,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::User',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDirectoryUserId': d.fn('`withDirectoryUserId` DirectoryUserId ', [d.arg('DirectoryUserId', d.T.string)]),
    withDirectoryUserId(DirectoryUserId): {
      assert std.isString(DirectoryUserId) : 'DirectoryUserId must be a string',
      Properties+::: { DirectoryUserId: DirectoryUserId },
    },
    '#withHierarchyGroupArn': d.fn('`withHierarchyGroupArn` HierarchyGroupArn ', [d.arg('HierarchyGroupArn', d.T.string)]),
    withHierarchyGroupArn(HierarchyGroupArn): {
      assert std.isString(HierarchyGroupArn) : 'HierarchyGroupArn must be a string',
      Properties+::: { HierarchyGroupArn: HierarchyGroupArn },
    },
    '#withPassword': d.fn('`withPassword` Password ', [d.arg('Password', d.T.string)]),
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: { Password: Password },
    },
    '#withIdentityInfo': d.fn('`withIdentityInfo` IdentityInfo ', [d.arg('IdentityInfo', d.T.object)]),
    withIdentityInfo(IdentityInfo): {
      assert std.isObject(IdentityInfo) : 'IdentityInfo must be a object',
      Properties+::: { IdentityInfo: IdentityInfo },
    },
    '#withUserArn': d.fn('`withUserArn` UserArn ', [d.arg('UserArn', d.T.string)]),
    withUserArn(UserArn): {
      assert std.isString(UserArn) : 'UserArn must be a string',
      Properties+::: { UserArn: UserArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUserProficiencies': d.fn('`withUserProficiencies` UserProficiencies ', [d.arg('UserProficiencies', d.T.array)]),
    withUserProficiencies(UserProficiencies): {
      assert std.isArray(UserProficiencies) : 'UserProficiencies must be a array',
      Properties+::: { UserProficiencies: UserProficiencies },
    },
  },
  UserHierarchyGroup: {
    '#': d.pkg(
      name='UserHierarchyGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::UserHierarchyGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::UserHierarchyGroup Resource
        * Name The name of the user hierarchy group.
        * InstanceArn The identifier of the Amazon Connect instance.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('InstanceArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      InstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::UserHierarchyGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUserHierarchyGroupArn': d.fn('`withUserHierarchyGroupArn` UserHierarchyGroupArn ', [d.arg('UserHierarchyGroupArn', d.T.string)]),
    withUserHierarchyGroupArn(UserHierarchyGroupArn): {
      assert std.isString(UserHierarchyGroupArn) : 'UserHierarchyGroupArn must be a string',
      Properties+::: { UserHierarchyGroupArn: UserHierarchyGroupArn },
    },
    '#withParentGroupArn': d.fn('`withParentGroupArn` ParentGroupArn ', [d.arg('ParentGroupArn', d.T.string)]),
    withParentGroupArn(ParentGroupArn): {
      assert std.isString(ParentGroupArn) : 'ParentGroupArn must be a string',
      Properties+::: { ParentGroupArn: ParentGroupArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  UserHierarchyStructure: {
    '#': d.pkg(
      name='UserHierarchyStructure',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::UserHierarchyStructure',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::UserHierarchyStructure Resource
        * InstanceArn The identifier of the Amazon Connect instance.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::UserHierarchyStructure',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUserHierarchyStructureArn': d.fn('`withUserHierarchyStructureArn` UserHierarchyStructureArn ', [d.arg('UserHierarchyStructureArn', d.T.string)]),
    withUserHierarchyStructureArn(UserHierarchyStructureArn): {
      assert std.isString(UserHierarchyStructureArn) : 'UserHierarchyStructureArn must be a string',
      Properties+::: { UserHierarchyStructureArn: UserHierarchyStructureArn },
    },
    '#withUserHierarchyStructure': d.fn('`withUserHierarchyStructure` UserHierarchyStructure ', [d.arg('UserHierarchyStructure', d.T.object)]),
    withUserHierarchyStructure(UserHierarchyStructure): {
      assert std.isObject(UserHierarchyStructure) : 'UserHierarchyStructure must be a object',
      Properties+::: { UserHierarchyStructure: UserHierarchyStructure },
    },
  },
  View: {
    '#': d.pkg(
      name='View',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::View',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::View Resource
        * InstanceArn The Amazon Resource Name (ARN) of the instance.
        * Template The template of the view as JSON.
        * Actions The actions of the view in an array.
        * Name The name of the view.
      |||,
      args=[
        d.arg('InstanceArn', 'd.T.string'),
        d.arg('Template', 'd.T.object'),
        d.arg('Actions', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      InstanceArn,
      Template,
      Actions,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceArn) : 'InstanceArn must be a string',
        InstanceArn: InstanceArn,
        assert std.isObject(Template) : 'Template must be a object',
        Template: Template,
        assert std.isArray(Actions) : 'Actions must be a array',
        Actions: Actions,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::View',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withViewArn': d.fn('`withViewArn` ViewArn ', [d.arg('ViewArn', d.T.string)]),
    withViewArn(ViewArn): {
      assert std.isString(ViewArn) : 'ViewArn must be a string',
      Properties+::: { ViewArn: ViewArn },
    },
    '#withViewId': d.fn('`withViewId` ViewId ', [d.arg('ViewId', d.T.string)]),
    withViewId(ViewId): {
      assert std.isString(ViewId) : 'ViewId must be a string',
      Properties+::: { ViewId: ViewId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withViewContentSha256': d.fn('`withViewContentSha256` ViewContentSha256 ', [d.arg('ViewContentSha256', d.T.string)]),
    withViewContentSha256(ViewContentSha256): {
      assert std.isString(ViewContentSha256) : 'ViewContentSha256 must be a string',
      Properties+::: { ViewContentSha256: ViewContentSha256 },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ViewVersion: {
    '#': d.pkg(
      name='ViewVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Connect.libsonnet',
      help='Resource Type definition for AWS::Connect::ViewVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Connect::ViewVersion Resource
        * ViewArn The Amazon Resource Name (ARN) of the view for which a version is being created.
      |||,
      args=[
        d.arg('ViewArn', 'd.T.string'),
      ]
    ),
    new(
      ViewArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ViewArn) : 'ViewArn must be a string',
        ViewArn: ViewArn,
      },
      DependsOn:: [],
      Type: 'AWS::Connect::ViewVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withViewVersionArn': d.fn('`withViewVersionArn` ViewVersionArn ', [d.arg('ViewVersionArn', d.T.string)]),
    withViewVersionArn(ViewVersionArn): {
      assert std.isString(ViewVersionArn) : 'ViewVersionArn must be a string',
      Properties+::: { ViewVersionArn: ViewVersionArn },
    },
    '#withVersionDescription': d.fn('`withVersionDescription` VersionDescription ', [d.arg('VersionDescription', d.T.string)]),
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: { VersionDescription: VersionDescription },
    },
    '#withViewContentSha256': d.fn('`withViewContentSha256` ViewContentSha256 ', [d.arg('ViewContentSha256', d.T.string)]),
    withViewContentSha256(ViewContentSha256): {
      assert std.isString(ViewContentSha256) : 'ViewContentSha256 must be a string',
      Properties+::: { ViewContentSha256: ViewContentSha256 },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.integer)]),
    withVersion(Version): {
      assert std.isNumber(Version) : 'Version must be a integer',
      Properties+::: { Version: Version },
    },
  },
}
