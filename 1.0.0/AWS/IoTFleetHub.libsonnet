local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTFleetHub.libsonnet',
      help='Resource schema for AWS::IoTFleetHub::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTFleetHub::Application Resource
        * ApplicationName Application Name, should be between 1 and 256 characters.
        * RoleArn The ARN of the role that the web application assumes when it interacts with AWS IoT Core. For more info on configuring this attribute, see https://docs.aws.amazon.com/iot/latest/apireference/API_iotfleethub_CreateApplication.html#API_iotfleethub_CreateApplication_RequestSyntax
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      ApplicationName,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTFleetHub::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationId': d.fn('`withApplicationId` ApplicationId ', [d.arg('ApplicationId', d.T.string)]),
    withApplicationId(ApplicationId): {
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      Properties+::: { ApplicationId: ApplicationId },
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
    },
    '#withApplicationDescription': d.fn('`withApplicationDescription` ApplicationDescription ', [d.arg('ApplicationDescription', d.T.string)]),
    withApplicationDescription(ApplicationDescription): {
      assert std.isString(ApplicationDescription) : 'ApplicationDescription must be a string',
      Properties+::: { ApplicationDescription: ApplicationDescription },
    },
    '#withApplicationUrl': d.fn('`withApplicationUrl` ApplicationUrl ', [d.arg('ApplicationUrl', d.T.string)]),
    withApplicationUrl(ApplicationUrl): {
      assert std.isString(ApplicationUrl) : 'ApplicationUrl must be a string',
      Properties+::: { ApplicationUrl: ApplicationUrl },
    },
    '#withApplicationState': d.fn('`withApplicationState` ApplicationState ', [d.arg('ApplicationState', d.T.string)]),
    withApplicationState(ApplicationState): {
      assert std.isString(ApplicationState) : 'ApplicationState must be a string',
      Properties+::: { ApplicationState: ApplicationState },
    },
    '#withApplicationCreationDate': d.fn('`withApplicationCreationDate` ApplicationCreationDate ', [d.arg('ApplicationCreationDate', d.T.integer)]),
    withApplicationCreationDate(ApplicationCreationDate): {
      assert std.isNumber(ApplicationCreationDate) : 'ApplicationCreationDate must be a integer',
      Properties+::: { ApplicationCreationDate: ApplicationCreationDate },
    },
    '#withApplicationLastUpdateDate': d.fn('`withApplicationLastUpdateDate` ApplicationLastUpdateDate ', [d.arg('ApplicationLastUpdateDate', d.T.integer)]),
    withApplicationLastUpdateDate(ApplicationLastUpdateDate): {
      assert std.isNumber(ApplicationLastUpdateDate) : 'ApplicationLastUpdateDate must be a integer',
      Properties+::: { ApplicationLastUpdateDate: ApplicationLastUpdateDate },
    },
    '#withSsoClientId': d.fn('`withSsoClientId` SsoClientId ', [d.arg('SsoClientId', d.T.string)]),
    withSsoClientId(SsoClientId): {
      assert std.isString(SsoClientId) : 'SsoClientId must be a string',
      Properties+::: { SsoClientId: SsoClientId },
    },
    '#withErrorMessage': d.fn('`withErrorMessage` ErrorMessage ', [d.arg('ErrorMessage', d.T.string)]),
    withErrorMessage(ErrorMessage): {
      assert std.isString(ErrorMessage) : 'ErrorMessage must be a string',
      Properties+::: { ErrorMessage: ErrorMessage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
