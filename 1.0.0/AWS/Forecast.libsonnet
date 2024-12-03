local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Dataset: {
    '#': d.pkg(
      name='Dataset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Forecast.libsonnet',
      help='Resource Type Definition for AWS::Forecast::Dataset',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Forecast::Dataset Resource
        * DatasetName A name for the dataset
        * DatasetType The dataset type
        * Domain The domain associated with the dataset
        * Schema 
      |||,
      args=[
        d.arg('DatasetName', 'd.T.string'),
        d.arg('DatasetType', 'd.T.string'),
        d.arg('Domain', 'd.T.string'),
        d.arg('Schema', 'd.T.object'),
      ]
    ),
    new(
      DatasetName,
      DatasetType,
      Domain,
      Schema,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DatasetName) : 'DatasetName must be a string',
        DatasetName: DatasetName,
        assert std.isString(DatasetType) : 'DatasetType must be a string',
        assert DatasetType == 'TARGET_TIME_SERIES' || DatasetType == 'RELATED_TIME_SERIES' || DatasetType == 'ITEM_METADATA' : "DatasetType must be either 'TARGET_TIME_SERIES' or 'RELATED_TIME_SERIES' or 'ITEM_METADATA'",
        DatasetType: DatasetType,
        assert std.isString(Domain) : 'Domain must be a string',
        assert Domain == 'RETAIL' || Domain == 'CUSTOM' || Domain == 'INVENTORY_PLANNING' || Domain == 'EC2_CAPACITY' || Domain == 'WORK_FORCE' || Domain == 'WEB_TRAFFIC' || Domain == 'METRICS' : "Domain must be either 'RETAIL' or 'CUSTOM' or 'INVENTORY_PLANNING' or 'EC2_CAPACITY' or 'WORK_FORCE' or 'WEB_TRAFFIC' or 'METRICS'",
        Domain: Domain,
        assert std.isObject(Schema) : 'Schema must be a object',
        Schema: Schema,
      },
      DependsOn:: [],
      Type: 'AWS::Forecast::Dataset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDataFrequency': d.fn('`withDataFrequency` DataFrequency ', [d.arg('DataFrequency', d.T.string)]),
    withDataFrequency(DataFrequency): {
      assert std.isString(DataFrequency) : 'DataFrequency must be a string',
      Properties+::: { DataFrequency: DataFrequency },
    },
    '#withEncryptionConfig': d.fn('`withEncryptionConfig` EncryptionConfig ', [d.arg('EncryptionConfig', d.T.object)]),
    withEncryptionConfig(EncryptionConfig): {
      assert std.isObject(EncryptionConfig) : 'EncryptionConfig must be a object',
      Properties+::: { EncryptionConfig: EncryptionConfig },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DatasetGroup: {
    '#': d.pkg(
      name='DatasetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Forecast.libsonnet',
      help='Represents a dataset group that holds a collection of related datasets',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Forecast::DatasetGroup Resource
        * DatasetGroupName A name for the dataset group.
        * Domain The domain associated with the dataset group. When you add a dataset to a dataset group, this value and the value specified for the Domain parameter of the CreateDataset operation must match.
      |||,
      args=[
        d.arg('DatasetGroupName', 'd.T.string'),
        d.arg('Domain', 'd.T.string'),
      ]
    ),
    new(
      DatasetGroupName,
      Domain,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DatasetGroupName) : 'DatasetGroupName must be a string',
        DatasetGroupName: DatasetGroupName,
        assert std.isString(Domain) : 'Domain must be a string',
        assert Domain == 'RETAIL' || Domain == 'CUSTOM' || Domain == 'INVENTORY_PLANNING' || Domain == 'EC2_CAPACITY' || Domain == 'WORK_FORCE' || Domain == 'WEB_TRAFFIC' || Domain == 'METRICS' : "Domain must be either 'RETAIL' or 'CUSTOM' or 'INVENTORY_PLANNING' or 'EC2_CAPACITY' or 'WORK_FORCE' or 'WEB_TRAFFIC' or 'METRICS'",
        Domain: Domain,
      },
      DependsOn:: [],
      Type: 'AWS::Forecast::DatasetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDatasetArns': d.fn('`withDatasetArns` DatasetArns ', [d.arg('DatasetArns', d.T.array)]),
    withDatasetArns(DatasetArns): {
      assert std.isArray(DatasetArns) : 'DatasetArns must be a array',
      Properties+::: { DatasetArns: DatasetArns },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDatasetGroupArn': d.fn('`withDatasetGroupArn` DatasetGroupArn ', [d.arg('DatasetGroupArn', d.T.string)]),
    withDatasetGroupArn(DatasetGroupArn): {
      assert std.isString(DatasetGroupArn) : 'DatasetGroupArn must be a string',
      Properties+::: { DatasetGroupArn: DatasetGroupArn },
    },
  },
}
