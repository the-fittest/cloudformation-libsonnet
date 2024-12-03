local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AutoshiftObserverNotificationStatus: {
    '#': d.pkg(
      name='AutoshiftObserverNotificationStatus',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ARCZonalShift.libsonnet',
      help='Definition of AWS::ARCZonalShift::AutoshiftObserverNotificationStatus Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ARCZonalShift::AutoshiftObserverNotificationStatus Resource
        * Status 
      |||,
      args=[
        d.arg('Status', 'd.T.string'),
      ]
    ),
    new(
      Status,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Status) : 'Status must be a string',
        Status: Status,
      },
      DependsOn:: [],
      Type: 'AWS::ARCZonalShift::AutoshiftObserverNotificationStatus',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
    '#withRegion': d.fn('`withRegion` Region ', [d.arg('Region', d.T.string)]),
    withRegion(Region): {
      assert std.isString(Region) : 'Region must be a string',
      Properties+::: { Region: Region },
    },
  },
  ZonalAutoshiftConfiguration: {
    '#': d.pkg(
      name='ZonalAutoshiftConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ARCZonalShift.libsonnet',
      help='Definition of AWS::ARCZonalShift::ZonalAutoshiftConfiguration Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ARCZonalShift::ZonalAutoshiftConfiguration Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ARCZonalShift::ZonalAutoshiftConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withZonalAutoshiftStatus': d.fn('`withZonalAutoshiftStatus` ZonalAutoshiftStatus ', [d.arg('ZonalAutoshiftStatus', d.T.string)]),
    withZonalAutoshiftStatus(ZonalAutoshiftStatus): {
      assert std.isString(ZonalAutoshiftStatus) : 'ZonalAutoshiftStatus must be a string',
      Properties+::: { ZonalAutoshiftStatus: ZonalAutoshiftStatus },
    },
    '#withPracticeRunConfiguration': d.fn('`withPracticeRunConfiguration` PracticeRunConfiguration ', [d.arg('PracticeRunConfiguration', d.T.object)]),
    withPracticeRunConfiguration(PracticeRunConfiguration): {
      assert std.isObject(PracticeRunConfiguration) : 'PracticeRunConfiguration must be a object',
      Properties+::: { PracticeRunConfiguration: PracticeRunConfiguration },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
  },
}
