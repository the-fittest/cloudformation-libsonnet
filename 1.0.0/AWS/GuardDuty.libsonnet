local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Detector: {
    '#': d.pkg(
      name='Detector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='Resource Type definition for AWS::GuardDuty::Detector',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::Detector Resource
        * Enable 
      |||,
      args=[
        d.arg('Enable', 'd.T.boolean'),
      ]
    ),
    new(
      Enable,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(Enable) : 'Enable must be a boolean',
        Enable: Enable,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::Detector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFindingPublishingFrequency': d.fn('`withFindingPublishingFrequency` FindingPublishingFrequency ', [d.arg('FindingPublishingFrequency', d.T.string)]),
    withFindingPublishingFrequency(FindingPublishingFrequency): {
      assert std.isString(FindingPublishingFrequency) : 'FindingPublishingFrequency must be a string',
      Properties+::: { FindingPublishingFrequency: FindingPublishingFrequency },
    },
    '#withDataSources': d.fn('`withDataSources` DataSources ', [d.arg('DataSources', d.T.object)]),
    withDataSources(DataSources): {
      assert std.isObject(DataSources) : 'DataSources must be a object',
      Properties+::: { DataSources: DataSources },
    },
    '#withFeatures': d.fn('`withFeatures` Features ', [d.arg('Features', d.T.array)]),
    withFeatures(Features): {
      assert std.isArray(Features) : 'Features must be a array',
      Properties+::: { Features: Features },
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
  Filter: {
    '#': d.pkg(
      name='Filter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='Resource Type definition for AWS::GuardDuty::Filter',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::Filter Resource
        * DetectorId 
        * Name 
        * FindingCriteria 
      |||,
      args=[
        d.arg('DetectorId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('FindingCriteria', 'd.T.object'),
      ]
    ),
    new(
      DetectorId,
      Name,
      FindingCriteria,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DetectorId) : 'DetectorId must be a string',
        DetectorId: DetectorId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(FindingCriteria) : 'FindingCriteria must be a object',
        FindingCriteria: FindingCriteria,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::Filter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAction': d.fn('`withAction` Action ', [d.arg('Action', d.T.string)]),
    withAction(Action): {
      assert std.isString(Action) : 'Action must be a string',
      Properties+::: { Action: Action },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withRank': d.fn('`withRank` Rank ', [d.arg('Rank', d.T.integer)]),
    withRank(Rank): {
      assert std.isNumber(Rank) : 'Rank must be a integer',
      Properties+::: { Rank: Rank },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IPSet: {
    '#': d.pkg(
      name='IPSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='Resource Type definition for AWS::GuardDuty::IPSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::IPSet Resource
        * Format 
        * Location 
      |||,
      args=[
        d.arg('Format', 'd.T.string'),
        d.arg('Location', 'd.T.string'),
      ]
    ),
    new(
      Format,
      Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Format) : 'Format must be a string',
        Format: Format,
        assert std.isString(Location) : 'Location must be a string',
        Location: Location,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::IPSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withActivate': d.fn('`withActivate` Activate ', [d.arg('Activate', d.T.boolean)]),
    withActivate(Activate): {
      assert std.isBoolean(Activate) : 'Activate must be a boolean',
      Properties+::: { Activate: Activate },
    },
    '#withDetectorId': d.fn('`withDetectorId` DetectorId ', [d.arg('DetectorId', d.T.string)]),
    withDetectorId(DetectorId): {
      assert std.isString(DetectorId) : 'DetectorId must be a string',
      Properties+::: { DetectorId: DetectorId },
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
  },
  MalwareProtectionPlan: {
    '#': d.pkg(
      name='MalwareProtectionPlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='Resource Type definition for AWS::GuardDuty::MalwareProtectionPlan',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::MalwareProtectionPlan Resource
        * Role IAM role that includes the permissions required to scan and (optionally) add tags to the associated protected resource.
        * ProtectedResource Information about the protected resource. Presently, S3Bucket is the only supported protected resource.
      |||,
      args=[
        d.arg('Role', 'd.T.string'),
        d.arg('ProtectedResource', 'd.T.object'),
      ]
    ),
    new(
      Role,
      ProtectedResource,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
        assert std.isObject(ProtectedResource) : 'ProtectedResource must be a object',
        ProtectedResource: ProtectedResource,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::MalwareProtectionPlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMalwareProtectionPlanId': d.fn('`withMalwareProtectionPlanId` MalwareProtectionPlanId ', [d.arg('MalwareProtectionPlanId', d.T.string)]),
    withMalwareProtectionPlanId(MalwareProtectionPlanId): {
      assert std.isString(MalwareProtectionPlanId) : 'MalwareProtectionPlanId must be a string',
      Properties+::: { MalwareProtectionPlanId: MalwareProtectionPlanId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withActions': d.fn('`withActions` Actions ', [d.arg('Actions', d.T.object)]),
    withActions(Actions): {
      assert std.isObject(Actions) : 'Actions must be a object',
      Properties+::: { Actions: Actions },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withStatusReasons': d.fn('`withStatusReasons` StatusReasons ', [d.arg('StatusReasons', d.T.array)]),
    withStatusReasons(StatusReasons): {
      assert std.isArray(StatusReasons) : 'StatusReasons must be a array',
      Properties+::: { StatusReasons: StatusReasons },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Master: {
    '#': d.pkg(
      name='Master',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='GuardDuty Master resource schema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::Master Resource
        * MasterId ID of the account used as the master account.
        * DetectorId Unique ID of the detector of the GuardDuty member account.
      |||,
      args=[
        d.arg('MasterId', 'd.T.string'),
        d.arg('DetectorId', 'd.T.string'),
      ]
    ),
    new(
      MasterId,
      DetectorId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MasterId) : 'MasterId must be a string',
        MasterId: MasterId,
        assert std.isString(DetectorId) : 'DetectorId must be a string',
        DetectorId: DetectorId,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::Master',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInvitationId': d.fn('`withInvitationId` InvitationId ', [d.arg('InvitationId', d.T.string)]),
    withInvitationId(InvitationId): {
      assert std.isString(InvitationId) : 'InvitationId must be a string',
      Properties+::: { InvitationId: InvitationId },
    },
  },
  Member: {
    '#': d.pkg(
      name='Member',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='Resource Type definition for AWS::GuardDuty::Member',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::Member Resource
        * Email 
      |||,
      args=[
        d.arg('Email', 'd.T.string'),
      ]
    ),
    new(
      Email,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Email) : 'Email must be a string',
        Email: Email,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::Member',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withMemberId': d.fn('`withMemberId` MemberId ', [d.arg('MemberId', d.T.string)]),
    withMemberId(MemberId): {
      assert std.isString(MemberId) : 'MemberId must be a string',
      Properties+::: { MemberId: MemberId },
    },
    '#withMessage': d.fn('`withMessage` Message ', [d.arg('Message', d.T.string)]),
    withMessage(Message): {
      assert std.isString(Message) : 'Message must be a string',
      Properties+::: { Message: Message },
    },
    '#withDisableEmailNotification': d.fn('`withDisableEmailNotification` DisableEmailNotification ', [d.arg('DisableEmailNotification', d.T.boolean)]),
    withDisableEmailNotification(DisableEmailNotification): {
      assert std.isBoolean(DisableEmailNotification) : 'DisableEmailNotification must be a boolean',
      Properties+::: { DisableEmailNotification: DisableEmailNotification },
    },
    '#withDetectorId': d.fn('`withDetectorId` DetectorId ', [d.arg('DetectorId', d.T.string)]),
    withDetectorId(DetectorId): {
      assert std.isString(DetectorId) : 'DetectorId must be a string',
      Properties+::: { DetectorId: DetectorId },
    },
  },
  ThreatIntelSet: {
    '#': d.pkg(
      name='ThreatIntelSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GuardDuty.libsonnet',
      help='Resource Type definition for AWS::GuardDuty::ThreatIntelSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GuardDuty::ThreatIntelSet Resource
        * Format 
        * Location 
      |||,
      args=[
        d.arg('Format', 'd.T.string'),
        d.arg('Location', 'd.T.string'),
      ]
    ),
    new(
      Format,
      Location,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Format) : 'Format must be a string',
        Format: Format,
        assert std.isString(Location) : 'Location must be a string',
        Location: Location,
      },
      DependsOn:: [],
      Type: 'AWS::GuardDuty::ThreatIntelSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withActivate': d.fn('`withActivate` Activate ', [d.arg('Activate', d.T.boolean)]),
    withActivate(Activate): {
      assert std.isBoolean(Activate) : 'Activate must be a boolean',
      Properties+::: { Activate: Activate },
    },
    '#withDetectorId': d.fn('`withDetectorId` DetectorId ', [d.arg('DetectorId', d.T.string)]),
    withDetectorId(DetectorId): {
      assert std.isString(DetectorId) : 'DetectorId must be a string',
      Properties+::: { DetectorId: DetectorId },
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
  },
}
