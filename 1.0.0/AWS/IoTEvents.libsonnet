local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AlarmModel: {
    '#': d.pkg(
      name='AlarmModel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTEvents.libsonnet',
      help='Represents an alarm model to monitor an ITE input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see [Create an alarm model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html) in the *Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTEvents::AlarmModel Resource
        * RoleArn The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *General Reference*.
        * AlarmRule Defines when your alarm is invoked.
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
        d.arg('AlarmRule', 'd.T.object'),
      ]
    ),
    new(
      RoleArn,
      AlarmRule,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(AlarmRule) : 'AlarmRule must be a object',
        AlarmRule: AlarmRule,
      },
      DependsOn:: [],
      Type: 'AWS::IoTEvents::AlarmModel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAlarmModelName': d.fn('`withAlarmModelName` AlarmModelName ', [d.arg('AlarmModelName', d.T.string)]),
    withAlarmModelName(AlarmModelName): {
      assert std.isString(AlarmModelName) : 'AlarmModelName must be a string',
      Properties+::: { AlarmModelName: AlarmModelName },
    },
    '#withAlarmModelDescription': d.fn('`withAlarmModelDescription` AlarmModelDescription ', [d.arg('AlarmModelDescription', d.T.string)]),
    withAlarmModelDescription(AlarmModelDescription): {
      assert std.isString(AlarmModelDescription) : 'AlarmModelDescription must be a string',
      Properties+::: { AlarmModelDescription: AlarmModelDescription },
    },
    '#withKey': d.fn('`withKey` Key ', [d.arg('Key', d.T.string)]),
    withKey(Key): {
      assert std.isString(Key) : 'Key must be a string',
      Properties+::: { Key: Key },
    },
    '#withSeverity': d.fn('`withSeverity` Severity ', [d.arg('Severity', d.T.integer)]),
    withSeverity(Severity): {
      assert std.isNumber(Severity) : 'Severity must be a integer',
      Properties+::: { Severity: Severity },
    },
    '#withAlarmEventActions': d.fn('`withAlarmEventActions` AlarmEventActions ', [d.arg('AlarmEventActions', d.T.object)]),
    withAlarmEventActions(AlarmEventActions): {
      assert std.isObject(AlarmEventActions) : 'AlarmEventActions must be a object',
      Properties+::: { AlarmEventActions: AlarmEventActions },
    },
    '#withAlarmCapabilities': d.fn('`withAlarmCapabilities` AlarmCapabilities ', [d.arg('AlarmCapabilities', d.T.object)]),
    withAlarmCapabilities(AlarmCapabilities): {
      assert std.isObject(AlarmCapabilities) : 'AlarmCapabilities must be a object',
      Properties+::: { AlarmCapabilities: AlarmCapabilities },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DetectorModel: {
    '#': d.pkg(
      name='DetectorModel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTEvents.libsonnet',
      help='The AWS::IoTEvents::DetectorModel resource creates a detector model. You create a *detector model* (a model of your equipment or process) using *states*. For each state, you define conditional (Boolean) logic that evaluates the incoming inputs to detect significant events. When an event is detected, it can change the state or trigger custom-built or predefined actions using other AWS services. You can define additional events that trigger actions when entering or exiting a state and, optionally, when a condition is met. For more information, see [How to Use](https://docs.aws.amazon.com/iotevents/latest/developerguide/how-to-use-iotevents.html) in the *Developer Guide*.When you successfully update a detector model (using the ITE console, ITE API or CLI commands, or CFN) all detector instances created by the model are reset to their initial states. (The detectors state, and the values of any variables and timers are reset.) When you successfully update a detector model (using the ITE console, ITE API or CLI commands, or CFN) the version number of the detector model is incremented. (A detector model with version number 1 before the update has version number 2 after the update succeeds.) If you attempt to update a detector model using CFN and the update does not succeed, the system may, in some cases, restore the original detector model. When this occurs, the detector models version is incremented twice (for example, from version 1 to version 3) and the detector instances are reset. Also, be aware that if you attempt to update several detector models at once using CFN, some updates may succeed and others fail. In this case, the effects on each detector models detector instances and version number depend on whether the update succeeded or failed, with the results as stated.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTEvents::DetectorModel Resource
        * DetectorModelDefinition Information that defines how a detector operates.
        * RoleArn The ARN of the role that grants permission to ITE to perform its operations.
      |||,
      args=[
        d.arg('DetectorModelDefinition', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      DetectorModelDefinition,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DetectorModelDefinition) : 'DetectorModelDefinition must be a object',
        DetectorModelDefinition: DetectorModelDefinition,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTEvents::DetectorModel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDetectorModelDescription': d.fn('`withDetectorModelDescription` DetectorModelDescription ', [d.arg('DetectorModelDescription', d.T.string)]),
    withDetectorModelDescription(DetectorModelDescription): {
      assert std.isString(DetectorModelDescription) : 'DetectorModelDescription must be a string',
      Properties+::: { DetectorModelDescription: DetectorModelDescription },
    },
    '#withDetectorModelName': d.fn('`withDetectorModelName` DetectorModelName ', [d.arg('DetectorModelName', d.T.string)]),
    withDetectorModelName(DetectorModelName): {
      assert std.isString(DetectorModelName) : 'DetectorModelName must be a string',
      Properties+::: { DetectorModelName: DetectorModelName },
    },
    '#withEvaluationMethod': d.fn('`withEvaluationMethod` EvaluationMethod ', [d.arg('EvaluationMethod', d.T.string)]),
    withEvaluationMethod(EvaluationMethod): {
      assert std.isString(EvaluationMethod) : 'EvaluationMethod must be a string',
      assert EvaluationMethod == 'BATCH' || EvaluationMethod == 'SERIAL' : "EvaluationMethod must be either 'BATCH' or 'SERIAL'",
      Properties+::: { EvaluationMethod: EvaluationMethod },
    },
    '#withKey': d.fn('`withKey` Key ', [d.arg('Key', d.T.string)]),
    withKey(Key): {
      assert std.isString(Key) : 'Key must be a string',
      Properties+::: { Key: Key },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Input: {
    '#': d.pkg(
      name='Input',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTEvents.libsonnet',
      help='The AWS::IoTEvents::Input resource creates an input. To monitor your devices and processes, they must have a way to get telemetry data into ITE. This is done by sending messages as *inputs* to ITE. For more information, see [How to Use](https://docs.aws.amazon.com/iotevents/latest/developerguide/how-to-use-iotevents.html) in the *Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTEvents::Input Resource
        * InputDefinition The definition of the input.
      |||,
      args=[
        d.arg('InputDefinition', 'd.T.object'),
      ]
    ),
    new(
      InputDefinition,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(InputDefinition) : 'InputDefinition must be a object',
        InputDefinition: InputDefinition,
      },
      DependsOn:: [],
      Type: 'AWS::IoTEvents::Input',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInputDescription': d.fn('`withInputDescription` InputDescription ', [d.arg('InputDescription', d.T.string)]),
    withInputDescription(InputDescription): {
      assert std.isString(InputDescription) : 'InputDescription must be a string',
      Properties+::: { InputDescription: InputDescription },
    },
    '#withInputName': d.fn('`withInputName` InputName ', [d.arg('InputName', d.T.string)]),
    withInputName(InputName): {
      assert std.isString(InputName) : 'InputName must be a string',
      Properties+::: { InputName: InputName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
