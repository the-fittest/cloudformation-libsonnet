local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  App: {
    '#': d.pkg(
      name='App',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResilienceHub.libsonnet',
      help='Resource Type Definition for AWS::ResilienceHub::App.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResilienceHub::App Resource
        * Name Name of the app.
        * AppTemplateBody A string containing full ResilienceHub app template body.
        * ResourceMappings An array of ResourceMapping objects.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('AppTemplateBody', 'd.T.string'),
        d.arg('ResourceMappings', 'd.T.array'),
      ]
    ),
    new(
      Name,
      AppTemplateBody,
      ResourceMappings,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(AppTemplateBody) : 'AppTemplateBody must be a string',
        AppTemplateBody: AppTemplateBody,
        assert std.isArray(ResourceMappings) : 'ResourceMappings must be a array',
        ResourceMappings: ResourceMappings,
      },
      DependsOn:: [],
      Type: 'AWS::ResilienceHub::App',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAppArn': d.fn('`withAppArn` AppArn ', [d.arg('AppArn', d.T.string)]),
    withAppArn(AppArn): {
      assert std.isString(AppArn) : 'AppArn must be a string',
      Properties+::: { AppArn: AppArn },
    },
    '#withResiliencyPolicyArn': d.fn('`withResiliencyPolicyArn` ResiliencyPolicyArn ', [d.arg('ResiliencyPolicyArn', d.T.string)]),
    withResiliencyPolicyArn(ResiliencyPolicyArn): {
      assert std.isString(ResiliencyPolicyArn) : 'ResiliencyPolicyArn must be a string',
      Properties+::: { ResiliencyPolicyArn: ResiliencyPolicyArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withAppAssessmentSchedule': d.fn('`withAppAssessmentSchedule` AppAssessmentSchedule ', [d.arg('AppAssessmentSchedule', d.T.string)]),
    withAppAssessmentSchedule(AppAssessmentSchedule): {
      assert std.isString(AppAssessmentSchedule) : 'AppAssessmentSchedule must be a string',
      assert AppAssessmentSchedule == 'Disabled' || AppAssessmentSchedule == 'Daily' : "AppAssessmentSchedule must be either 'Disabled' or 'Daily'",
      Properties+::: { AppAssessmentSchedule: AppAssessmentSchedule },
    },
    '#withPermissionModel': d.fn('`withPermissionModel` PermissionModel ', [d.arg('PermissionModel', d.T.object)]),
    withPermissionModel(PermissionModel): {
      assert std.isObject(PermissionModel) : 'PermissionModel must be a object',
      Properties+::: { PermissionModel: PermissionModel },
    },
    '#withEventSubscriptions': d.fn('`withEventSubscriptions` EventSubscriptions ', [d.arg('EventSubscriptions', d.T.array)]),
    withEventSubscriptions(EventSubscriptions): {
      assert std.isArray(EventSubscriptions) : 'EventSubscriptions must be a array',
      Properties+::: { EventSubscriptions: EventSubscriptions },
    },
    '#withDriftStatus': d.fn('`withDriftStatus` DriftStatus ', [d.arg('DriftStatus', d.T.string)]),
    withDriftStatus(DriftStatus): {
      assert std.isString(DriftStatus) : 'DriftStatus must be a string',
      assert DriftStatus == 'NotChecked' || DriftStatus == 'NotDetected' || DriftStatus == 'Detected' : "DriftStatus must be either 'NotChecked' or 'NotDetected' or 'Detected'",
      Properties+::: { DriftStatus: DriftStatus },
    },
  },
  ResiliencyPolicy: {
    '#': d.pkg(
      name='ResiliencyPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResilienceHub.libsonnet',
      help='Resource Type Definition for Resiliency Policy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResilienceHub::ResiliencyPolicy Resource
        * PolicyName Name of Resiliency Policy.
        * Tier Resiliency Policy Tier.
        * Policy 
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('Tier', 'd.T.string'),
        d.arg('Policy', 'd.T.object'),
      ]
    ),
    new(
      PolicyName,
      Tier,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(Tier) : 'Tier must be a string',
        assert Tier == 'MissionCritical' || Tier == 'Critical' || Tier == 'Important' || Tier == 'CoreServices' || Tier == 'NonCritical' : "Tier must be either 'MissionCritical' or 'Critical' or 'Important' or 'CoreServices' or 'NonCritical'",
        Tier: Tier,
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::ResilienceHub::ResiliencyPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyDescription': d.fn('`withPolicyDescription` PolicyDescription ', [d.arg('PolicyDescription', d.T.string)]),
    withPolicyDescription(PolicyDescription): {
      assert std.isString(PolicyDescription) : 'PolicyDescription must be a string',
      Properties+::: { PolicyDescription: PolicyDescription },
    },
    '#withDataLocationConstraint': d.fn('`withDataLocationConstraint` DataLocationConstraint ', [d.arg('DataLocationConstraint', d.T.string)]),
    withDataLocationConstraint(DataLocationConstraint): {
      assert std.isString(DataLocationConstraint) : 'DataLocationConstraint must be a string',
      assert DataLocationConstraint == 'AnyLocation' || DataLocationConstraint == 'SameContinent' || DataLocationConstraint == 'SameCountry' : "DataLocationConstraint must be either 'AnyLocation' or 'SameContinent' or 'SameCountry'",
      Properties+::: { DataLocationConstraint: DataLocationConstraint },
    },
    '#withPolicyArn': d.fn('`withPolicyArn` PolicyArn ', [d.arg('PolicyArn', d.T.string)]),
    withPolicyArn(PolicyArn): {
      assert std.isString(PolicyArn) : 'PolicyArn must be a string',
      Properties+::: { PolicyArn: PolicyArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
