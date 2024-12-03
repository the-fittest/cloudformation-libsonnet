local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Assessment: {
    '#': d.pkg(
      name='Assessment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AuditManager.libsonnet',
      help='An entity that defines the scope of audit evidence collected by AWS Audit Manager.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AuditManager::Assessment Resource
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
      Type: 'AWS::AuditManager::Assessment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFrameworkId': d.fn('`withFrameworkId` FrameworkId ', [d.arg('FrameworkId', d.T.string)]),
    withFrameworkId(FrameworkId): {
      assert std.isString(FrameworkId) : 'FrameworkId must be a string',
      Properties+::: { FrameworkId: FrameworkId },
    },
    '#withAssessmentId': d.fn('`withAssessmentId` AssessmentId ', [d.arg('AssessmentId', d.T.string)]),
    withAssessmentId(AssessmentId): {
      assert std.isString(AssessmentId) : 'AssessmentId must be a string',
      Properties+::: { AssessmentId: AssessmentId },
    },
    '#withAwsAccount': d.fn('`withAwsAccount` AwsAccount ', [d.arg('AwsAccount', d.T.object)]),
    withAwsAccount(AwsAccount): {
      assert std.isObject(AwsAccount) : 'AwsAccount must be a object',
      Properties+::: { AwsAccount: AwsAccount },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDelegations': d.fn('`withDelegations` Delegations ', [d.arg('Delegations', d.T.array)]),
    withDelegations(Delegations): {
      assert std.isArray(Delegations) : 'Delegations must be a array',
      Properties+::: { Delegations: Delegations },
    },
    '#withRoles': d.fn('`withRoles` Roles ', [d.arg('Roles', d.T.array)]),
    withRoles(Roles): {
      assert std.isArray(Roles) : 'Roles must be a array',
      Properties+::: { Roles: Roles },
    },
    '#withScope': d.fn('`withScope` Scope ', [d.arg('Scope', d.T.object)]),
    withScope(Scope): {
      assert std.isObject(Scope) : 'Scope must be a object',
      Properties+::: { Scope: Scope },
    },
    '#withAssessmentReportsDestination': d.fn('`withAssessmentReportsDestination` AssessmentReportsDestination ', [d.arg('AssessmentReportsDestination', d.T.object)]),
    withAssessmentReportsDestination(AssessmentReportsDestination): {
      assert std.isObject(AssessmentReportsDestination) : 'AssessmentReportsDestination must be a object',
      Properties+::: { AssessmentReportsDestination: AssessmentReportsDestination },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.integer)]),
    withCreationTime(CreationTime): {
      // Type: number
      Properties+::: { CreationTime: CreationTime },
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
  },
}
