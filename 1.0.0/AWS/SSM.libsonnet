local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Association: {
    '#': d.pkg(
      name='Association',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='The AWS::SSM::Association resource associates an SSM document in AWS Systems Manager with EC2 instances that contain a configuration agent to process the document.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::Association Resource
        * Name The name of the SSM document.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::Association',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationName': d.fn('`withAssociationName` AssociationName ', [d.arg('AssociationName', d.T.string)]),
    withAssociationName(AssociationName): {
      assert std.isString(AssociationName) : 'AssociationName must be a string',
      Properties+::: { AssociationName: AssociationName },
    },
    '#withCalendarNames': d.fn('`withCalendarNames` CalendarNames ', [d.arg('CalendarNames', d.T.array)]),
    withCalendarNames(CalendarNames): {
      assert std.isArray(CalendarNames) : 'CalendarNames must be a array',
      Properties+::: { CalendarNames: CalendarNames },
    },
    '#withScheduleExpression': d.fn('`withScheduleExpression` ScheduleExpression ', [d.arg('ScheduleExpression', d.T.string)]),
    withScheduleExpression(ScheduleExpression): {
      assert std.isString(ScheduleExpression) : 'ScheduleExpression must be a string',
      Properties+::: { ScheduleExpression: ScheduleExpression },
    },
    '#withMaxErrors': d.fn('`withMaxErrors` MaxErrors ', [d.arg('MaxErrors', d.T.string)]),
    withMaxErrors(MaxErrors): {
      assert std.isString(MaxErrors) : 'MaxErrors must be a string',
      Properties+::: { MaxErrors: MaxErrors },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withInstanceId': d.fn('`withInstanceId` InstanceId ', [d.arg('InstanceId', d.T.string)]),
    withInstanceId(InstanceId): {
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      Properties+::: { InstanceId: InstanceId },
    },
    '#withWaitForSuccessTimeoutSeconds': d.fn('`withWaitForSuccessTimeoutSeconds` WaitForSuccessTimeoutSeconds ', [d.arg('WaitForSuccessTimeoutSeconds', d.T.integer)]),
    withWaitForSuccessTimeoutSeconds(WaitForSuccessTimeoutSeconds): {
      assert std.isNumber(WaitForSuccessTimeoutSeconds) : 'WaitForSuccessTimeoutSeconds must be a integer',
      Properties+::: { WaitForSuccessTimeoutSeconds: WaitForSuccessTimeoutSeconds },
    },
    '#withMaxConcurrency': d.fn('`withMaxConcurrency` MaxConcurrency ', [d.arg('MaxConcurrency', d.T.string)]),
    withMaxConcurrency(MaxConcurrency): {
      assert std.isString(MaxConcurrency) : 'MaxConcurrency must be a string',
      Properties+::: { MaxConcurrency: MaxConcurrency },
    },
    '#withComplianceSeverity': d.fn('`withComplianceSeverity` ComplianceSeverity ', [d.arg('ComplianceSeverity', d.T.string)]),
    withComplianceSeverity(ComplianceSeverity): {
      assert std.isString(ComplianceSeverity) : 'ComplianceSeverity must be a string',
      assert ComplianceSeverity == 'CRITICAL' || ComplianceSeverity == 'HIGH' || ComplianceSeverity == 'MEDIUM' || ComplianceSeverity == 'LOW' || ComplianceSeverity == 'UNSPECIFIED' : "ComplianceSeverity must be either 'CRITICAL' or 'HIGH' or 'MEDIUM' or 'LOW' or 'UNSPECIFIED'",
      Properties+::: { ComplianceSeverity: ComplianceSeverity },
    },
    '#withTargets': d.fn('`withTargets` Targets ', [d.arg('Targets', d.T.array)]),
    withTargets(Targets): {
      assert std.isArray(Targets) : 'Targets must be a array',
      Properties+::: { Targets: Targets },
    },
    '#withSyncCompliance': d.fn('`withSyncCompliance` SyncCompliance ', [d.arg('SyncCompliance', d.T.string)]),
    withSyncCompliance(SyncCompliance): {
      assert std.isString(SyncCompliance) : 'SyncCompliance must be a string',
      assert SyncCompliance == 'AUTO' || SyncCompliance == 'MANUAL' : "SyncCompliance must be either 'AUTO' or 'MANUAL'",
      Properties+::: { SyncCompliance: SyncCompliance },
    },
    '#withOutputLocation': d.fn('`withOutputLocation` OutputLocation ', [d.arg('OutputLocation', d.T.object)]),
    withOutputLocation(OutputLocation): {
      assert std.isObject(OutputLocation) : 'OutputLocation must be a object',
      Properties+::: { OutputLocation: OutputLocation },
    },
    '#withScheduleOffset': d.fn('`withScheduleOffset` ScheduleOffset ', [d.arg('ScheduleOffset', d.T.integer)]),
    withScheduleOffset(ScheduleOffset): {
      assert std.isNumber(ScheduleOffset) : 'ScheduleOffset must be a integer',
      Properties+::: { ScheduleOffset: ScheduleOffset },
    },
    '#withApplyOnlyAtCronInterval': d.fn('`withApplyOnlyAtCronInterval` ApplyOnlyAtCronInterval ', [d.arg('ApplyOnlyAtCronInterval', d.T.boolean)]),
    withApplyOnlyAtCronInterval(ApplyOnlyAtCronInterval): {
      assert std.isBoolean(ApplyOnlyAtCronInterval) : 'ApplyOnlyAtCronInterval must be a boolean',
      Properties+::: { ApplyOnlyAtCronInterval: ApplyOnlyAtCronInterval },
    },
    '#withDocumentVersion': d.fn('`withDocumentVersion` DocumentVersion ', [d.arg('DocumentVersion', d.T.string)]),
    withDocumentVersion(DocumentVersion): {
      assert std.isString(DocumentVersion) : 'DocumentVersion must be a string',
      Properties+::: { DocumentVersion: DocumentVersion },
    },
    '#withAssociationId': d.fn('`withAssociationId` AssociationId ', [d.arg('AssociationId', d.T.string)]),
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: { AssociationId: AssociationId },
    },
    '#withAutomationTargetParameterName': d.fn('`withAutomationTargetParameterName` AutomationTargetParameterName ', [d.arg('AutomationTargetParameterName', d.T.string)]),
    withAutomationTargetParameterName(AutomationTargetParameterName): {
      assert std.isString(AutomationTargetParameterName) : 'AutomationTargetParameterName must be a string',
      Properties+::: { AutomationTargetParameterName: AutomationTargetParameterName },
    },
  },
  Document: {
    '#': d.pkg(
      name='Document',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='The AWS::SSM::Document resource is an SSM document in AWS Systems Manager that defines the actions that Systems Manager performs, which can be used to set up and run commands on your instances.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::Document Resource
        * Content The content for the Systems Manager document in JSON, YAML or String format.
      |||,
      args=[
        d.arg('Content', ''),
      ]
    ),
    new(
      Content,
    ): {
      local base = self,
      Properties: {
        // Type: object,string
        Content: Content,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::Document',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAttachments': d.fn('`withAttachments` Attachments ', [d.arg('Attachments', d.T.array)]),
    withAttachments(Attachments): {
      assert std.isArray(Attachments) : 'Attachments must be a array',
      Properties+::: { Attachments: Attachments },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withVersionName': d.fn('`withVersionName` VersionName ', [d.arg('VersionName', d.T.string)]),
    withVersionName(VersionName): {
      assert std.isString(VersionName) : 'VersionName must be a string',
      Properties+::: { VersionName: VersionName },
    },
    '#withDocumentType': d.fn('`withDocumentType` DocumentType ', [d.arg('DocumentType', d.T.string)]),
    withDocumentType(DocumentType): {
      assert std.isString(DocumentType) : 'DocumentType must be a string',
      assert DocumentType == 'ApplicationConfiguration' || DocumentType == 'ApplicationConfigurationSchema' || DocumentType == 'Automation' || DocumentType == 'Automation.ChangeTemplate' || DocumentType == 'ChangeCalendar' || DocumentType == 'CloudFormation' || DocumentType == 'Command' || DocumentType == 'DeploymentStrategy' || DocumentType == 'Package' || DocumentType == 'Policy' || DocumentType == 'ProblemAnalysis' || DocumentType == 'ProblemAnalysisTemplate' || DocumentType == 'Session' : "DocumentType must be either 'ApplicationConfiguration' or 'ApplicationConfigurationSchema' or 'Automation' or 'Automation.ChangeTemplate' or 'ChangeCalendar' or 'CloudFormation' or 'Command' or 'DeploymentStrategy' or 'Package' or 'Policy' or 'ProblemAnalysis' or 'ProblemAnalysisTemplate' or 'Session'",
      Properties+::: { DocumentType: DocumentType },
    },
    '#withDocumentFormat': d.fn('`withDocumentFormat` DocumentFormat ', [d.arg('DocumentFormat', d.T.string)]),
    withDocumentFormat(DocumentFormat): {
      assert std.isString(DocumentFormat) : 'DocumentFormat must be a string',
      assert DocumentFormat == 'YAML' || DocumentFormat == 'JSON' || DocumentFormat == 'TEXT' : "DocumentFormat must be either 'YAML' or 'JSON' or 'TEXT'",
      Properties+::: { DocumentFormat: DocumentFormat },
    },
    '#withTargetType': d.fn('`withTargetType` TargetType ', [d.arg('TargetType', d.T.string)]),
    withTargetType(TargetType): {
      assert std.isString(TargetType) : 'TargetType must be a string',
      Properties+::: { TargetType: TargetType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withRequires': d.fn('`withRequires` Requires ', [d.arg('Requires', d.T.array)]),
    withRequires(Requires): {
      assert std.isArray(Requires) : 'Requires must be a array',
      Properties+::: { Requires: Requires },
    },
    '#withUpdateMethod': d.fn('`withUpdateMethod` UpdateMethod ', [d.arg('UpdateMethod', d.T.string)]),
    withUpdateMethod(UpdateMethod): {
      assert std.isString(UpdateMethod) : 'UpdateMethod must be a string',
      assert UpdateMethod == 'Replace' || UpdateMethod == 'NewVersion' : "UpdateMethod must be either 'Replace' or 'NewVersion'",
      Properties+::: { UpdateMethod: UpdateMethod },
    },
  },
  MaintenanceWindow: {
    '#': d.pkg(
      name='MaintenanceWindow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='Resource Type definition for AWS::SSM::MaintenanceWindow',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::MaintenanceWindow Resource
        * AllowUnassociatedTargets 
        * Cutoff 
        * Schedule 
        * Duration 
        * Name 
      |||,
      args=[
        d.arg('AllowUnassociatedTargets', 'd.T.boolean'),
        d.arg('Cutoff', 'd.T.integer'),
        d.arg('Schedule', 'd.T.string'),
        d.arg('Duration', 'd.T.integer'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      AllowUnassociatedTargets,
      Cutoff,
      Schedule,
      Duration,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(AllowUnassociatedTargets) : 'AllowUnassociatedTargets must be a boolean',
        AllowUnassociatedTargets: AllowUnassociatedTargets,
        assert std.isNumber(Cutoff) : 'Cutoff must be a integer',
        Cutoff: Cutoff,
        assert std.isString(Schedule) : 'Schedule must be a string',
        Schedule: Schedule,
        assert std.isNumber(Duration) : 'Duration must be a integer',
        Duration: Duration,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::MaintenanceWindow',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStartDate': d.fn('`withStartDate` StartDate ', [d.arg('StartDate', d.T.string)]),
    withStartDate(StartDate): {
      assert std.isString(StartDate) : 'StartDate must be a string',
      Properties+::: { StartDate: StartDate },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withScheduleOffset': d.fn('`withScheduleOffset` ScheduleOffset ', [d.arg('ScheduleOffset', d.T.integer)]),
    withScheduleOffset(ScheduleOffset): {
      assert std.isNumber(ScheduleOffset) : 'ScheduleOffset must be a integer',
      Properties+::: { ScheduleOffset: ScheduleOffset },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withEndDate': d.fn('`withEndDate` EndDate ', [d.arg('EndDate', d.T.string)]),
    withEndDate(EndDate): {
      assert std.isString(EndDate) : 'EndDate must be a string',
      Properties+::: { EndDate: EndDate },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withScheduleTimezone': d.fn('`withScheduleTimezone` ScheduleTimezone ', [d.arg('ScheduleTimezone', d.T.string)]),
    withScheduleTimezone(ScheduleTimezone): {
      assert std.isString(ScheduleTimezone) : 'ScheduleTimezone must be a string',
      Properties+::: { ScheduleTimezone: ScheduleTimezone },
    },
  },
  MaintenanceWindowTarget: {
    '#': d.pkg(
      name='MaintenanceWindowTarget',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='Resource Type definition for AWS::SSM::MaintenanceWindowTarget',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::MaintenanceWindowTarget Resource
        * WindowId 
        * ResourceType 
        * Targets 
      |||,
      args=[
        d.arg('WindowId', 'd.T.string'),
        d.arg('ResourceType', 'd.T.string'),
        d.arg('Targets', 'd.T.array'),
      ]
    ),
    new(
      WindowId,
      ResourceType,
      Targets,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WindowId) : 'WindowId must be a string',
        WindowId: WindowId,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        ResourceType: ResourceType,
        assert std.isArray(Targets) : 'Targets must be a array',
        Targets: Targets,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::MaintenanceWindowTarget',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOwnerInformation': d.fn('`withOwnerInformation` OwnerInformation ', [d.arg('OwnerInformation', d.T.string)]),
    withOwnerInformation(OwnerInformation): {
      assert std.isString(OwnerInformation) : 'OwnerInformation must be a string',
      Properties+::: { OwnerInformation: OwnerInformation },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  MaintenanceWindowTask: {
    '#': d.pkg(
      name='MaintenanceWindowTask',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='Resource Type definition for AWS::SSM::MaintenanceWindowTask',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::MaintenanceWindowTask Resource
        * WindowId 
        * Priority 
        * TaskType 
        * TaskArn 
      |||,
      args=[
        d.arg('WindowId', 'd.T.string'),
        d.arg('Priority', 'd.T.integer'),
        d.arg('TaskType', 'd.T.string'),
        d.arg('TaskArn', 'd.T.string'),
      ]
    ),
    new(
      WindowId,
      Priority,
      TaskType,
      TaskArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WindowId) : 'WindowId must be a string',
        WindowId: WindowId,
        assert std.isNumber(Priority) : 'Priority must be a integer',
        Priority: Priority,
        assert std.isString(TaskType) : 'TaskType must be a string',
        TaskType: TaskType,
        assert std.isString(TaskArn) : 'TaskArn must be a string',
        TaskArn: TaskArn,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::MaintenanceWindowTask',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMaxErrors': d.fn('`withMaxErrors` MaxErrors ', [d.arg('MaxErrors', d.T.string)]),
    withMaxErrors(MaxErrors): {
      assert std.isString(MaxErrors) : 'MaxErrors must be a string',
      Properties+::: { MaxErrors: MaxErrors },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withServiceRoleArn': d.fn('`withServiceRoleArn` ServiceRoleArn ', [d.arg('ServiceRoleArn', d.T.string)]),
    withServiceRoleArn(ServiceRoleArn): {
      assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
      Properties+::: { ServiceRoleArn: ServiceRoleArn },
    },
    '#withMaxConcurrency': d.fn('`withMaxConcurrency` MaxConcurrency ', [d.arg('MaxConcurrency', d.T.string)]),
    withMaxConcurrency(MaxConcurrency): {
      assert std.isString(MaxConcurrency) : 'MaxConcurrency must be a string',
      Properties+::: { MaxConcurrency: MaxConcurrency },
    },
    '#withTargets': d.fn('`withTargets` Targets ', [d.arg('Targets', d.T.array)]),
    withTargets(Targets): {
      assert std.isArray(Targets) : 'Targets must be a array',
      Properties+::: { Targets: Targets },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTaskInvocationParameters': d.fn('`withTaskInvocationParameters` TaskInvocationParameters ', [d.arg('TaskInvocationParameters', d.T.object)]),
    withTaskInvocationParameters(TaskInvocationParameters): {
      assert std.isObject(TaskInvocationParameters) : 'TaskInvocationParameters must be a object',
      Properties+::: { TaskInvocationParameters: TaskInvocationParameters },
    },
    '#withTaskParameters': d.fn('`withTaskParameters` TaskParameters ', [d.arg('TaskParameters', d.T.object)]),
    withTaskParameters(TaskParameters): {
      assert std.isObject(TaskParameters) : 'TaskParameters must be a object',
      Properties+::: { TaskParameters: TaskParameters },
    },
    '#withCutoffBehavior': d.fn('`withCutoffBehavior` CutoffBehavior ', [d.arg('CutoffBehavior', d.T.string)]),
    withCutoffBehavior(CutoffBehavior): {
      assert std.isString(CutoffBehavior) : 'CutoffBehavior must be a string',
      Properties+::: { CutoffBehavior: CutoffBehavior },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLoggingInfo': d.fn('`withLoggingInfo` LoggingInfo ', [d.arg('LoggingInfo', d.T.object)]),
    withLoggingInfo(LoggingInfo): {
      assert std.isObject(LoggingInfo) : 'LoggingInfo must be a object',
      Properties+::: { LoggingInfo: LoggingInfo },
    },
  },
  Parameter: {
    '#': d.pkg(
      name='Parameter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='The AWS::SSM::Parameter resource creates an SSM parameter in SYSlong Parameter Store.To create an SSM parameter, you must have the IAMlong (IAM) permissions ssm:PutParameter and ssm:AddTagsToResource. On stack creation, CFNlong adds the following three tags to the parameter: aws:cloudformation:stack-name, aws:cloudformation:logical-id, and aws:cloudformation:stack-id, in addition to any custom tags you specify. To add, update, or remove tags during stack update, you must have IAM permissions for both ssm:AddTagsToResource and ssm:RemoveTagsFromResource. For more information, see [Managing Access Using Policies](https://docs.aws.amazon.com/systems-manager/latest/userguide/security-iam.html#security_iam_access-manage) in the *User Guide*.For information about valid values for parameters, see [About requirements and constraints for parameter names](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html#sysman-parameter-name-constraints) in the *User Guide* and [PutParameter](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PutParameter.html) in the *API Reference*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::Parameter Resource
        * Value The parameter value.If type is StringList, the system returns a comma-separated string with no spaces between commas in the Value field.
        * Type The type of parameter.
      |||,
      args=[
        d.arg('Value', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Value,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Value) : 'Value must be a string',
        Value: Value,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'String' || Type == 'StringList' : "Type must be either 'String' or 'StringList'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::Parameter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPolicies': d.fn('`withPolicies` Policies ', [d.arg('Policies', d.T.string)]),
    withPolicies(Policies): {
      assert std.isString(Policies) : 'Policies must be a string',
      Properties+::: { Policies: Policies },
    },
    '#withAllowedPattern': d.fn('`withAllowedPattern` AllowedPattern ', [d.arg('AllowedPattern', d.T.string)]),
    withAllowedPattern(AllowedPattern): {
      assert std.isString(AllowedPattern) : 'AllowedPattern must be a string',
      Properties+::: { AllowedPattern: AllowedPattern },
    },
    '#withTier': d.fn('`withTier` Tier ', [d.arg('Tier', d.T.string)]),
    withTier(Tier): {
      assert std.isString(Tier) : 'Tier must be a string',
      assert Tier == 'Standard' || Tier == 'Advanced' || Tier == 'Intelligent-Tiering' : "Tier must be either 'Standard' or 'Advanced' or 'Intelligent-Tiering'",
      Properties+::: { Tier: Tier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withDataType': d.fn('`withDataType` DataType ', [d.arg('DataType', d.T.string)]),
    withDataType(DataType): {
      assert std.isString(DataType) : 'DataType must be a string',
      assert DataType == 'text' || DataType == 'aws:ec2:image' : "DataType must be either 'text' or 'aws:ec2:image'",
      Properties+::: { DataType: DataType },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  PatchBaseline: {
    '#': d.pkg(
      name='PatchBaseline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='Resource Type definition for AWS::SSM::PatchBaseline',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::PatchBaseline Resource
        * Name The name of the patch baseline.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::PatchBaseline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDefaultBaseline': d.fn('`withDefaultBaseline` DefaultBaseline ', [d.arg('DefaultBaseline', d.T.boolean)]),
    withDefaultBaseline(DefaultBaseline): {
      assert std.isBoolean(DefaultBaseline) : 'DefaultBaseline must be a boolean',
      Properties+::: { DefaultBaseline: DefaultBaseline },
    },
    '#withOperatingSystem': d.fn('`withOperatingSystem` OperatingSystem ', [d.arg('OperatingSystem', d.T.string)]),
    withOperatingSystem(OperatingSystem): {
      assert std.isString(OperatingSystem) : 'OperatingSystem must be a string',
      assert OperatingSystem == 'WINDOWS' || OperatingSystem == 'AMAZON_LINUX' || OperatingSystem == 'AMAZON_LINUX_2' || OperatingSystem == 'AMAZON_LINUX_2022' || OperatingSystem == 'AMAZON_LINUX_2023' || OperatingSystem == 'UBUNTU' || OperatingSystem == 'REDHAT_ENTERPRISE_LINUX' || OperatingSystem == 'SUSE' || OperatingSystem == 'CENTOS' || OperatingSystem == 'ORACLE_LINUX' || OperatingSystem == 'DEBIAN' || OperatingSystem == 'MACOS' || OperatingSystem == 'RASPBIAN' || OperatingSystem == 'ROCKY_LINUX' || OperatingSystem == 'ALMA_LINUX' : "OperatingSystem must be either 'WINDOWS' or 'AMAZON_LINUX' or 'AMAZON_LINUX_2' or 'AMAZON_LINUX_2022' or 'AMAZON_LINUX_2023' or 'UBUNTU' or 'REDHAT_ENTERPRISE_LINUX' or 'SUSE' or 'CENTOS' or 'ORACLE_LINUX' or 'DEBIAN' or 'MACOS' or 'RASPBIAN' or 'ROCKY_LINUX' or 'ALMA_LINUX'",
      Properties+::: { OperatingSystem: OperatingSystem },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withApprovalRules': d.fn('`withApprovalRules` ApprovalRules ', [d.arg('ApprovalRules', d.T.object)]),
    withApprovalRules(ApprovalRules): {
      assert std.isObject(ApprovalRules) : 'ApprovalRules must be a object',
      Properties+::: { ApprovalRules: ApprovalRules },
    },
    '#withSources': d.fn('`withSources` Sources ', [d.arg('Sources', d.T.array)]),
    withSources(Sources): {
      assert std.isArray(Sources) : 'Sources must be a array',
      Properties+::: { Sources: Sources },
    },
    '#withRejectedPatches': d.fn('`withRejectedPatches` RejectedPatches ', [d.arg('RejectedPatches', d.T.array)]),
    withRejectedPatches(RejectedPatches): {
      assert std.isArray(RejectedPatches) : 'RejectedPatches must be a array',
      Properties+::: { RejectedPatches: RejectedPatches },
    },
    '#withApprovedPatches': d.fn('`withApprovedPatches` ApprovedPatches ', [d.arg('ApprovedPatches', d.T.array)]),
    withApprovedPatches(ApprovedPatches): {
      assert std.isArray(ApprovedPatches) : 'ApprovedPatches must be a array',
      Properties+::: { ApprovedPatches: ApprovedPatches },
    },
    '#withRejectedPatchesAction': d.fn('`withRejectedPatchesAction` RejectedPatchesAction ', [d.arg('RejectedPatchesAction', d.T.string)]),
    withRejectedPatchesAction(RejectedPatchesAction): {
      assert std.isString(RejectedPatchesAction) : 'RejectedPatchesAction must be a string',
      assert RejectedPatchesAction == 'ALLOW_AS_DEPENDENCY' || RejectedPatchesAction == 'BLOCK' : "RejectedPatchesAction must be either 'ALLOW_AS_DEPENDENCY' or 'BLOCK'",
      Properties+::: { RejectedPatchesAction: RejectedPatchesAction },
    },
    '#withPatchGroups': d.fn('`withPatchGroups` PatchGroups ', [d.arg('PatchGroups', d.T.array)]),
    withPatchGroups(PatchGroups): {
      assert std.isArray(PatchGroups) : 'PatchGroups must be a array',
      Properties+::: { PatchGroups: PatchGroups },
    },
    '#withApprovedPatchesComplianceLevel': d.fn('`withApprovedPatchesComplianceLevel` ApprovedPatchesComplianceLevel ', [d.arg('ApprovedPatchesComplianceLevel', d.T.string)]),
    withApprovedPatchesComplianceLevel(ApprovedPatchesComplianceLevel): {
      assert std.isString(ApprovedPatchesComplianceLevel) : 'ApprovedPatchesComplianceLevel must be a string',
      assert ApprovedPatchesComplianceLevel == 'CRITICAL' || ApprovedPatchesComplianceLevel == 'HIGH' || ApprovedPatchesComplianceLevel == 'MEDIUM' || ApprovedPatchesComplianceLevel == 'LOW' || ApprovedPatchesComplianceLevel == 'INFORMATIONAL' || ApprovedPatchesComplianceLevel == 'UNSPECIFIED' : "ApprovedPatchesComplianceLevel must be either 'CRITICAL' or 'HIGH' or 'MEDIUM' or 'LOW' or 'INFORMATIONAL' or 'UNSPECIFIED'",
      Properties+::: { ApprovedPatchesComplianceLevel: ApprovedPatchesComplianceLevel },
    },
    '#withApprovedPatchesEnableNonSecurity': d.fn('`withApprovedPatchesEnableNonSecurity` ApprovedPatchesEnableNonSecurity ', [d.arg('ApprovedPatchesEnableNonSecurity', d.T.boolean)]),
    withApprovedPatchesEnableNonSecurity(ApprovedPatchesEnableNonSecurity): {
      assert std.isBoolean(ApprovedPatchesEnableNonSecurity) : 'ApprovedPatchesEnableNonSecurity must be a boolean',
      Properties+::: { ApprovedPatchesEnableNonSecurity: ApprovedPatchesEnableNonSecurity },
    },
    '#withGlobalFilters': d.fn('`withGlobalFilters` GlobalFilters ', [d.arg('GlobalFilters', d.T.object)]),
    withGlobalFilters(GlobalFilters): {
      assert std.isObject(GlobalFilters) : 'GlobalFilters must be a object',
      Properties+::: { GlobalFilters: GlobalFilters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResourceDataSync: {
    '#': d.pkg(
      name='ResourceDataSync',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='Resource Type definition for AWS::SSM::ResourceDataSync',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::ResourceDataSync Resource
        * SyncName 
      |||,
      args=[
        d.arg('SyncName', 'd.T.string'),
      ]
    ),
    new(
      SyncName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SyncName) : 'SyncName must be a string',
        SyncName: SyncName,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::ResourceDataSync',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withS3Destination': d.fn('`withS3Destination` S3Destination ', [d.arg('S3Destination', d.T.object)]),
    withS3Destination(S3Destination): {
      assert std.isObject(S3Destination) : 'S3Destination must be a object',
      Properties+::: { S3Destination: S3Destination },
    },
    '#withKMSKeyArn': d.fn('`withKMSKeyArn` KMSKeyArn ', [d.arg('KMSKeyArn', d.T.string)]),
    withKMSKeyArn(KMSKeyArn): {
      assert std.isString(KMSKeyArn) : 'KMSKeyArn must be a string',
      Properties+::: { KMSKeyArn: KMSKeyArn },
    },
    '#withSyncSource': d.fn('`withSyncSource` SyncSource ', [d.arg('SyncSource', d.T.object)]),
    withSyncSource(SyncSource): {
      assert std.isObject(SyncSource) : 'SyncSource must be a object',
      Properties+::: { SyncSource: SyncSource },
    },
    '#withBucketName': d.fn('`withBucketName` BucketName ', [d.arg('BucketName', d.T.string)]),
    withBucketName(BucketName): {
      assert std.isString(BucketName) : 'BucketName must be a string',
      Properties+::: { BucketName: BucketName },
    },
    '#withBucketRegion': d.fn('`withBucketRegion` BucketRegion ', [d.arg('BucketRegion', d.T.string)]),
    withBucketRegion(BucketRegion): {
      assert std.isString(BucketRegion) : 'BucketRegion must be a string',
      Properties+::: { BucketRegion: BucketRegion },
    },
    '#withSyncFormat': d.fn('`withSyncFormat` SyncFormat ', [d.arg('SyncFormat', d.T.string)]),
    withSyncFormat(SyncFormat): {
      assert std.isString(SyncFormat) : 'SyncFormat must be a string',
      Properties+::: { SyncFormat: SyncFormat },
    },
    '#withSyncType': d.fn('`withSyncType` SyncType ', [d.arg('SyncType', d.T.string)]),
    withSyncType(SyncType): {
      assert std.isString(SyncType) : 'SyncType must be a string',
      Properties+::: { SyncType: SyncType },
    },
    '#withBucketPrefix': d.fn('`withBucketPrefix` BucketPrefix ', [d.arg('BucketPrefix', d.T.string)]),
    withBucketPrefix(BucketPrefix): {
      assert std.isString(BucketPrefix) : 'BucketPrefix must be a string',
      Properties+::: { BucketPrefix: BucketPrefix },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSM.libsonnet',
      help='Resource Type definition for AWS::SSM::ResourcePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSM::ResourcePolicy Resource
        * ResourceArn Arn of OpsItemGroup etc.
        * Policy Actual policy statement.
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('Policy', ''),
      ]
    ),
    new(
      ResourceArn,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        // Type: object,string
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::SSM::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyId': d.fn('`withPolicyId` PolicyId ', [d.arg('PolicyId', d.T.string)]),
    withPolicyId(PolicyId): {
      assert std.isString(PolicyId) : 'PolicyId must be a string',
      Properties+::: { PolicyId: PolicyId },
    },
    '#withPolicyHash': d.fn('`withPolicyHash` PolicyHash ', [d.arg('PolicyHash', d.T.string)]),
    withPolicyHash(PolicyHash): {
      assert std.isString(PolicyHash) : 'PolicyHash must be a string',
      Properties+::: { PolicyHash: PolicyHash },
    },
  },
}
