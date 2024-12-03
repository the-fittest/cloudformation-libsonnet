local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alert: {
    '#': d.pkg(
      name='Alert',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LookoutMetrics.libsonnet',
      help='Resource Type definition for AWS::LookoutMetrics::Alert',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LookoutMetrics::Alert Resource
        * AnomalyDetectorArn The Amazon resource name (ARN) of the Anomaly Detector to alert.
        * AlertSensitivityThreshold A number between 0 and 100 (inclusive) that tunes the sensitivity of the alert.
        * Action The action to be taken by the alert when an anomaly is detected.
      |||,
      args=[
        d.arg('AnomalyDetectorArn', 'd.T.string'),
        d.arg('AlertSensitivityThreshold', 'd.T.integer'),
        d.arg('Action', 'd.T.object'),
      ]
    ),
    new(
      AnomalyDetectorArn,
      AlertSensitivityThreshold,
      Action,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AnomalyDetectorArn) : 'AnomalyDetectorArn must be a string',
        AnomalyDetectorArn: AnomalyDetectorArn,
        assert std.isNumber(AlertSensitivityThreshold) : 'AlertSensitivityThreshold must be a integer',
        AlertSensitivityThreshold: AlertSensitivityThreshold,
        assert std.isObject(Action) : 'Action must be a object',
        Action: Action,
      },
      DependsOn:: [],
      Type: 'AWS::LookoutMetrics::Alert',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAlertName': d.fn('`withAlertName` AlertName ', [d.arg('AlertName', d.T.string)]),
    withAlertName(AlertName): {
      assert std.isString(AlertName) : 'AlertName must be a string',
      Properties+::: { AlertName: AlertName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAlertDescription': d.fn('`withAlertDescription` AlertDescription ', [d.arg('AlertDescription', d.T.string)]),
    withAlertDescription(AlertDescription): {
      assert std.isString(AlertDescription) : 'AlertDescription must be a string',
      Properties+::: { AlertDescription: AlertDescription },
    },
  },
  AnomalyDetector: {
    '#': d.pkg(
      name='AnomalyDetector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LookoutMetrics.libsonnet',
      help='An Amazon Lookout for Metrics Detector',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LookoutMetrics::AnomalyDetector Resource
        * AnomalyDetectorConfig Configuration options for the AnomalyDetector
        * MetricSetList List of metric sets for anomaly detection
      |||,
      args=[
        d.arg('AnomalyDetectorConfig', 'd.T.object'),
        d.arg('MetricSetList', 'd.T.array'),
      ]
    ),
    new(
      AnomalyDetectorConfig,
      MetricSetList,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(AnomalyDetectorConfig) : 'AnomalyDetectorConfig must be a object',
        AnomalyDetectorConfig: AnomalyDetectorConfig,
        assert std.isArray(MetricSetList) : 'MetricSetList must be a array',
        MetricSetList: MetricSetList,
      },
      DependsOn:: [],
      Type: 'AWS::LookoutMetrics::AnomalyDetector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withAnomalyDetectorName': d.fn('`withAnomalyDetectorName` AnomalyDetectorName ', [d.arg('AnomalyDetectorName', d.T.string)]),
    withAnomalyDetectorName(AnomalyDetectorName): {
      assert std.isString(AnomalyDetectorName) : 'AnomalyDetectorName must be a string',
      Properties+::: { AnomalyDetectorName: AnomalyDetectorName },
    },
    '#withAnomalyDetectorDescription': d.fn('`withAnomalyDetectorDescription` AnomalyDetectorDescription ', [d.arg('AnomalyDetectorDescription', d.T.string)]),
    withAnomalyDetectorDescription(AnomalyDetectorDescription): {
      assert std.isString(AnomalyDetectorDescription) : 'AnomalyDetectorDescription must be a string',
      Properties+::: { AnomalyDetectorDescription: AnomalyDetectorDescription },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
  },
}
