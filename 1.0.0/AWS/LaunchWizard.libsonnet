local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Deployment: {
    '#': d.pkg(
      name='Deployment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LaunchWizard.libsonnet',
      help='Definition of AWS::LaunchWizard::Deployment Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LaunchWizard::Deployment Resource
        * DeploymentPatternName Workload deployment pattern name
        * Name Name of LaunchWizard deployment
        * Specifications LaunchWizard deployment specifications
        * WorkloadName Workload Name for LaunchWizard deployment
      |||,
      args=[
        d.arg('DeploymentPatternName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Specifications', 'd.T.object'),
        d.arg('WorkloadName', 'd.T.string'),
      ]
    ),
    new(
      DeploymentPatternName,
      Name,
      Specifications,
      WorkloadName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeploymentPatternName) : 'DeploymentPatternName must be a string',
        DeploymentPatternName: DeploymentPatternName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Specifications) : 'Specifications must be a object',
        Specifications: Specifications,
        assert std.isString(WorkloadName) : 'WorkloadName must be a string',
        WorkloadName: WorkloadName,
      },
      DependsOn:: [],
      Type: 'AWS::LaunchWizard::Deployment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withDeletedAt': d.fn('`withDeletedAt` DeletedAt ', [d.arg('DeletedAt', d.T.string)]),
    withDeletedAt(DeletedAt): {
      assert std.isString(DeletedAt) : 'DeletedAt must be a string',
      Properties+::: { DeletedAt: DeletedAt },
    },
    '#withDeploymentId': d.fn('`withDeploymentId` DeploymentId ', [d.arg('DeploymentId', d.T.string)]),
    withDeploymentId(DeploymentId): {
      assert std.isString(DeploymentId) : 'DeploymentId must be a string',
      Properties+::: { DeploymentId: DeploymentId },
    },
    '#withResourceGroup': d.fn('`withResourceGroup` ResourceGroup ', [d.arg('ResourceGroup', d.T.string)]),
    withResourceGroup(ResourceGroup): {
      assert std.isString(ResourceGroup) : 'ResourceGroup must be a string',
      Properties+::: { ResourceGroup: ResourceGroup },
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
}
