local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AutomationRule: {
    '#': d.pkg(
      name='AutomationRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::AutomationRule resource specifies an automation rule based on input parameters. For more information, see [Automation rules](https://docs.aws.amazon.com/securityhub/latest/userguide/automation-rules.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::AutomationRule Resource
        * RuleOrder An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
        * RuleName The name of the rule.
        * Description A description of the rule.
        * Criteria A set of [Security Finding Format (ASFF)](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html) finding field attributes and corresponding expected values that ASH uses to filter findings. If a rule is enabled and a finding matches the criteria specified in this parameter, ASH applies the rule action to the finding.
        * Actions One or more actions to update finding fields if a finding matches the conditions specified in Criteria.
      |||,
      args=[
        d.arg('RuleOrder', 'd.T.integer'),
        d.arg('RuleName', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
        d.arg('Criteria', 'd.T.object'),
        d.arg('Actions', 'd.T.array'),
      ]
    ),
    new(
      RuleOrder,
      RuleName,
      Description,
      Criteria,
      Actions,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(RuleOrder) : 'RuleOrder must be a integer',
        RuleOrder: RuleOrder,
        assert std.isString(RuleName) : 'RuleName must be a string',
        RuleName: RuleName,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isObject(Criteria) : 'Criteria must be a object',
        Criteria: Criteria,
        assert std.isArray(Actions) : 'Actions must be a array',
        Actions: Actions,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::AutomationRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRuleArn': d.fn('`withRuleArn` RuleArn ', [d.arg('RuleArn', d.T.string)]),
    withRuleArn(RuleArn): {
      assert std.isString(RuleArn) : 'RuleArn must be a string',
      Properties+::: { RuleArn: RuleArn },
    },
    '#withRuleStatus': d.fn('`withRuleStatus` RuleStatus ', [d.arg('RuleStatus', d.T.string)]),
    withRuleStatus(RuleStatus): {
      assert std.isString(RuleStatus) : 'RuleStatus must be a string',
      assert RuleStatus == 'ENABLED' || RuleStatus == 'DISABLED' : "RuleStatus must be either 'ENABLED' or 'DISABLED'",
      Properties+::: { RuleStatus: RuleStatus },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withCreatedBy': d.fn('`withCreatedBy` CreatedBy ', [d.arg('CreatedBy', d.T.string)]),
    withCreatedBy(CreatedBy): {
      assert std.isString(CreatedBy) : 'CreatedBy must be a string',
      Properties+::: { CreatedBy: CreatedBy },
    },
    '#withIsTerminal': d.fn('`withIsTerminal` IsTerminal ', [d.arg('IsTerminal', d.T.boolean)]),
    withIsTerminal(IsTerminal): {
      assert std.isBoolean(IsTerminal) : 'IsTerminal must be a boolean',
      Properties+::: { IsTerminal: IsTerminal },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ConfigurationPolicy: {
    '#': d.pkg(
      name='ConfigurationPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::ConfigurationPolicy resource represents the Central Configuration Policy in your account.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::ConfigurationPolicy Resource
        * ConfigurationPolicy 
        * Name The name of the configuration policy.
      |||,
      args=[
        d.arg('ConfigurationPolicy', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ConfigurationPolicy,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ConfigurationPolicy) : 'ConfigurationPolicy must be a object',
        ConfigurationPolicy: ConfigurationPolicy,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::ConfigurationPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withServiceEnabled': d.fn('`withServiceEnabled` ServiceEnabled ', [d.arg('ServiceEnabled', d.T.boolean)]),
    withServiceEnabled(ServiceEnabled): {
      assert std.isBoolean(ServiceEnabled) : 'ServiceEnabled must be a boolean',
      Properties+::: { ServiceEnabled: ServiceEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  DelegatedAdmin: {
    '#': d.pkg(
      name='DelegatedAdmin',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::DelegatedAdmin resource designates the delegated ASHlong administrator account for an organization. You must enable the integration between ASH and AOlong before you can designate a delegated ASH administrator. Only the management account for an organization can designate the delegated ASH administrator account. For more information, see [Designating the delegated administrator](https://docs.aws.amazon.com/securityhub/latest/userguide/designate-orgs-admin-account.html#designate-admin-instructions) in the *User Guide*. To change the delegated administrator account, remove the current delegated administrator account, and then designate the new account. To designate multiple delegated administrators in different organizations and AWS-Regions, we recommend using [mappings](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html). Tags arent supported for this resource.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::DelegatedAdmin Resource
        * AdminAccountId The AWS-account identifier of the account to designate as the Security Hub administrator account.
      |||,
      args=[
        d.arg('AdminAccountId', 'd.T.string'),
      ]
    ),
    new(
      AdminAccountId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AdminAccountId) : 'AdminAccountId must be a string',
        AdminAccountId: AdminAccountId,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::DelegatedAdmin',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDelegatedAdminIdentifier': d.fn('`withDelegatedAdminIdentifier` DelegatedAdminIdentifier ', [d.arg('DelegatedAdminIdentifier', d.T.string)]),
    withDelegatedAdminIdentifier(DelegatedAdminIdentifier): {
      assert std.isString(DelegatedAdminIdentifier) : 'DelegatedAdminIdentifier must be a string',
      Properties+::: { DelegatedAdminIdentifier: DelegatedAdminIdentifier },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ENABLED' || Status == 'DISABLE_IN_PROGRESS' : "Status must be either 'ENABLED' or 'DISABLE_IN_PROGRESS'",
      Properties+::: { Status: Status },
    },
  },
  FindingAggregator: {
    '#': d.pkg(
      name='FindingAggregator',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::FindingAggregator resource enables cross-Region aggregation. When cross-Region aggregation is enabled, you can aggregate findings, finding updates, insights, control compliance statuses, and security scores from one or more linked Regions to a single aggregation Region. You can then view and manage all of this data from the aggregation Region. For more details about cross-Region aggregation, see [Cross-Region aggregation](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html) in the *User Guide*  This resource must be created in the Region that you want to designate as your aggregation Region. Cross-Region aggregation is also a prerequisite for using [central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html) in ASH.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::FindingAggregator Resource
        * RegionLinkingMode Indicates whether to aggregate findings from all of the available Regions in the current partition. Also determines whether to automatically aggregate findings from new Regions as Security Hub supports them and you opt into them. The selected option also determines how to use the Regions provided in the Regions list. The options are as follows:+ALL_REGIONS - Aggregates findings from all of the Regions where Security Hub is enabled. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them. +ALL_REGIONS_EXCEPT_SPECIFIED - Aggregates findings from all of the Regions where Security Hub is enabled, except for the Regions listed in the Regions parameter. When you choose this option, Security Hub also automatically aggregates findings from new Regions as Security Hub supports them and you opt into them. +SPECIFIED_REGIONS - Aggregates findings only from the Regions listed in the Regions parameter. Security Hub does not automatically aggregate findings from new Regions. +NO_REGIONS - Aggregates no data because no Regions are selected as linked Regions.
      |||,
      args=[
        d.arg('RegionLinkingMode', 'd.T.string'),
      ]
    ),
    new(
      RegionLinkingMode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RegionLinkingMode) : 'RegionLinkingMode must be a string',
        assert RegionLinkingMode == 'ALL_REGIONS' || RegionLinkingMode == 'ALL_REGIONS_EXCEPT_SPECIFIED' || RegionLinkingMode == 'SPECIFIED_REGIONS' : "RegionLinkingMode must be either 'ALL_REGIONS' or 'ALL_REGIONS_EXCEPT_SPECIFIED' or 'SPECIFIED_REGIONS'",
        RegionLinkingMode: RegionLinkingMode,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::FindingAggregator',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFindingAggregatorArn': d.fn('`withFindingAggregatorArn` FindingAggregatorArn ', [d.arg('FindingAggregatorArn', d.T.string)]),
    withFindingAggregatorArn(FindingAggregatorArn): {
      assert std.isString(FindingAggregatorArn) : 'FindingAggregatorArn must be a string',
      Properties+::: { FindingAggregatorArn: FindingAggregatorArn },
    },
    '#withRegions': d.fn('`withRegions` Regions ', [d.arg('Regions', d.T.array)]),
    withRegions(Regions): {
      assert std.isArray(Regions) : 'Regions must be a array',
      Properties+::: { Regions: Regions },
    },
    '#withFindingAggregationRegion': d.fn('`withFindingAggregationRegion` FindingAggregationRegion ', [d.arg('FindingAggregationRegion', d.T.string)]),
    withFindingAggregationRegion(FindingAggregationRegion): {
      assert std.isString(FindingAggregationRegion) : 'FindingAggregationRegion must be a string',
      Properties+::: { FindingAggregationRegion: FindingAggregationRegion },
    },
  },
  Hub: {
    '#': d.pkg(
      name='Hub',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::Hub resource represents the implementation of the AWS Security Hub service in your account. One hub resource is created for each Region in which you enable Security Hub.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::Hub Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SecurityHub::Hub',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withARN': d.fn('`withARN` ARN ', [d.arg('ARN', d.T.string)]),
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: { ARN: ARN },
    },
    '#withEnableDefaultStandards': d.fn('`withEnableDefaultStandards` EnableDefaultStandards ', [d.arg('EnableDefaultStandards', d.T.boolean)]),
    withEnableDefaultStandards(EnableDefaultStandards): {
      assert std.isBoolean(EnableDefaultStandards) : 'EnableDefaultStandards must be a boolean',
      Properties+::: { EnableDefaultStandards: EnableDefaultStandards },
    },
    '#withControlFindingGenerator': d.fn('`withControlFindingGenerator` ControlFindingGenerator ', [d.arg('ControlFindingGenerator', d.T.string)]),
    withControlFindingGenerator(ControlFindingGenerator): {
      assert std.isString(ControlFindingGenerator) : 'ControlFindingGenerator must be a string',
      Properties+::: { ControlFindingGenerator: ControlFindingGenerator },
    },
    '#withAutoEnableControls': d.fn('`withAutoEnableControls` AutoEnableControls ', [d.arg('AutoEnableControls', d.T.boolean)]),
    withAutoEnableControls(AutoEnableControls): {
      assert std.isBoolean(AutoEnableControls) : 'AutoEnableControls must be a boolean',
      Properties+::: { AutoEnableControls: AutoEnableControls },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withSubscribedAt': d.fn('`withSubscribedAt` SubscribedAt ', [d.arg('SubscribedAt', d.T.string)]),
    withSubscribedAt(SubscribedAt): {
      assert std.isString(SubscribedAt) : 'SubscribedAt must be a string',
      Properties+::: { SubscribedAt: SubscribedAt },
    },
  },
  Insight: {
    '#': d.pkg(
      name='Insight',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::Insight resource represents the AWS Security Hub Insight in your account. An AWS Security Hub insight is a collection of related findings.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::Insight Resource
        * Filters One or more attributes used to filter the findings included in the insight
        * Name The name of a Security Hub insight
        * GroupByAttribute The grouping attribute for the insights findings
      |||,
      args=[
        d.arg('Filters', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
        d.arg('GroupByAttribute', 'd.T.string'),
      ]
    ),
    new(
      Filters,
      Name,
      GroupByAttribute,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Filters) : 'Filters must be a object',
        Filters: Filters,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(GroupByAttribute) : 'GroupByAttribute must be a string',
        GroupByAttribute: GroupByAttribute,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::Insight',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInsightArn': d.fn('`withInsightArn` InsightArn ', [d.arg('InsightArn', d.T.string)]),
    withInsightArn(InsightArn): {
      assert std.isString(InsightArn) : 'InsightArn must be a string',
      Properties+::: { InsightArn: InsightArn },
    },
  },
  OrganizationConfiguration: {
    '#': d.pkg(
      name='OrganizationConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::OrganizationConfiguration resource represents the configuration of your organization in Security Hub. Only the Security Hub administrator account can create Organization Configuration resource in each region and can opt-in to Central Configuration only in the aggregation region of FindingAggregator.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::OrganizationConfiguration Resource
        * AutoEnable Whether to automatically enable Security Hub in new member accounts when they join the organization.
      |||,
      args=[
        d.arg('AutoEnable', 'd.T.boolean'),
      ]
    ),
    new(
      AutoEnable,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(AutoEnable) : 'AutoEnable must be a boolean',
        AutoEnable: AutoEnable,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::OrganizationConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAutoEnableStandards': d.fn('`withAutoEnableStandards` AutoEnableStandards ', [d.arg('AutoEnableStandards', d.T.string)]),
    withAutoEnableStandards(AutoEnableStandards): {
      assert std.isString(AutoEnableStandards) : 'AutoEnableStandards must be a string',
      assert AutoEnableStandards == 'DEFAULT' || AutoEnableStandards == 'NONE' : "AutoEnableStandards must be either 'DEFAULT' or 'NONE'",
      Properties+::: { AutoEnableStandards: AutoEnableStandards },
    },
    '#withConfigurationType': d.fn('`withConfigurationType` ConfigurationType ', [d.arg('ConfigurationType', d.T.string)]),
    withConfigurationType(ConfigurationType): {
      assert std.isString(ConfigurationType) : 'ConfigurationType must be a string',
      assert ConfigurationType == 'CENTRAL' || ConfigurationType == 'LOCAL' : "ConfigurationType must be either 'CENTRAL' or 'LOCAL'",
      Properties+::: { ConfigurationType: ConfigurationType },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'PENDING' || Status == 'ENABLED' || Status == 'FAILED' : "Status must be either 'PENDING' or 'ENABLED' or 'FAILED'",
      Properties+::: { Status: Status },
    },
    '#withStatusMessage': d.fn('`withStatusMessage` StatusMessage ', [d.arg('StatusMessage', d.T.string)]),
    withStatusMessage(StatusMessage): {
      assert std.isString(StatusMessage) : 'StatusMessage must be a string',
      Properties+::: { StatusMessage: StatusMessage },
    },
    '#withMemberAccountLimitReached': d.fn('`withMemberAccountLimitReached` MemberAccountLimitReached ', [d.arg('MemberAccountLimitReached', d.T.boolean)]),
    withMemberAccountLimitReached(MemberAccountLimitReached): {
      assert std.isBoolean(MemberAccountLimitReached) : 'MemberAccountLimitReached must be a boolean',
      Properties+::: { MemberAccountLimitReached: MemberAccountLimitReached },
    },
    '#withOrganizationConfigurationIdentifier': d.fn('`withOrganizationConfigurationIdentifier` OrganizationConfigurationIdentifier ', [d.arg('OrganizationConfigurationIdentifier', d.T.string)]),
    withOrganizationConfigurationIdentifier(OrganizationConfigurationIdentifier): {
      assert std.isString(OrganizationConfigurationIdentifier) : 'OrganizationConfigurationIdentifier must be a string',
      Properties+::: { OrganizationConfigurationIdentifier: OrganizationConfigurationIdentifier },
    },
  },
  PolicyAssociation: {
    '#': d.pkg(
      name='PolicyAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::PolicyAssociation resource represents the AWS Security Hub Central Configuration Policy associations in your Target. Only the AWS Security Hub delegated administrator can create the resouce from the home region.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::PolicyAssociation Resource
        * TargetId The identifier of the target account, organizational unit, or the root
        * TargetType Indicates whether the target is an AWS account, organizational unit, or the organization root
        * ConfigurationPolicyId The universally unique identifier (UUID) of the configuration policy or a value of SELF_MANAGED_SECURITY_HUB for a self-managed configuration
      |||,
      args=[
        d.arg('TargetId', 'd.T.string'),
        d.arg('TargetType', 'd.T.string'),
        d.arg('ConfigurationPolicyId', 'd.T.string'),
      ]
    ),
    new(
      TargetId,
      TargetType,
      ConfigurationPolicyId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetId) : 'TargetId must be a string',
        TargetId: TargetId,
        assert std.isString(TargetType) : 'TargetType must be a string',
        assert TargetType == 'ACCOUNT' || TargetType == 'ORGANIZATIONAL_UNIT' || TargetType == 'ROOT' : "TargetType must be either 'ACCOUNT' or 'ORGANIZATIONAL_UNIT' or 'ROOT'",
        TargetType: TargetType,
        assert std.isString(ConfigurationPolicyId) : 'ConfigurationPolicyId must be a string',
        ConfigurationPolicyId: ConfigurationPolicyId,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::PolicyAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociationStatus': d.fn('`withAssociationStatus` AssociationStatus ', [d.arg('AssociationStatus', d.T.string)]),
    withAssociationStatus(AssociationStatus): {
      assert std.isString(AssociationStatus) : 'AssociationStatus must be a string',
      assert AssociationStatus == 'SUCCESS' || AssociationStatus == 'PENDING' || AssociationStatus == 'FAILED' : "AssociationStatus must be either 'SUCCESS' or 'PENDING' or 'FAILED'",
      Properties+::: { AssociationStatus: AssociationStatus },
    },
    '#withAssociationType': d.fn('`withAssociationType` AssociationType ', [d.arg('AssociationType', d.T.string)]),
    withAssociationType(AssociationType): {
      assert std.isString(AssociationType) : 'AssociationType must be a string',
      assert AssociationType == 'APPLIED' || AssociationType == 'INHERITED' : "AssociationType must be either 'APPLIED' or 'INHERITED'",
      Properties+::: { AssociationType: AssociationType },
    },
    '#withAssociationStatusMessage': d.fn('`withAssociationStatusMessage` AssociationStatusMessage ', [d.arg('AssociationStatusMessage', d.T.string)]),
    withAssociationStatusMessage(AssociationStatusMessage): {
      assert std.isString(AssociationStatusMessage) : 'AssociationStatusMessage must be a string',
      Properties+::: { AssociationStatusMessage: AssociationStatusMessage },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
    '#withAssociationIdentifier': d.fn('`withAssociationIdentifier` AssociationIdentifier ', [d.arg('AssociationIdentifier', d.T.string)]),
    withAssociationIdentifier(AssociationIdentifier): {
      assert std.isString(AssociationIdentifier) : 'AssociationIdentifier must be a string',
      Properties+::: { AssociationIdentifier: AssociationIdentifier },
    },
  },
  ProductSubscription: {
    '#': d.pkg(
      name='ProductSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::ProductSubscription resource represents a subscription to a service that is allowed to generate findings for your Security Hub account. One product subscription resource is created for each product enabled.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::ProductSubscription Resource
        * ProductArn The generic ARN of the product being subscribed to
      |||,
      args=[
        d.arg('ProductArn', 'd.T.string'),
      ]
    ),
    new(
      ProductArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProductArn) : 'ProductArn must be a string',
        ProductArn: ProductArn,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::ProductSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProductSubscriptionArn': d.fn('`withProductSubscriptionArn` ProductSubscriptionArn ', [d.arg('ProductSubscriptionArn', d.T.string)]),
    withProductSubscriptionArn(ProductSubscriptionArn): {
      assert std.isString(ProductSubscriptionArn) : 'ProductSubscriptionArn must be a string',
      Properties+::: { ProductSubscriptionArn: ProductSubscriptionArn },
    },
  },
  SecurityControl: {
    '#': d.pkg(
      name='SecurityControl',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='A security control in Security Hub describes a security best practice related to a specific resource.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::SecurityControl Resource
        * Parameters An object that identifies the name of a control parameter, its current value, and whether it has been customized.
      |||,
      args=[
        d.arg('Parameters', 'd.T.object'),
      ]
    ),
    new(
      Parameters,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Parameters) : 'Parameters must be a object',
        Parameters: Parameters,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::SecurityControl',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSecurityControlId': d.fn('`withSecurityControlId` SecurityControlId ', [d.arg('SecurityControlId', d.T.string)]),
    withSecurityControlId(SecurityControlId): {
      assert std.isString(SecurityControlId) : 'SecurityControlId must be a string',
      Properties+::: { SecurityControlId: SecurityControlId },
    },
    '#withSecurityControlArn': d.fn('`withSecurityControlArn` SecurityControlArn ', [d.arg('SecurityControlArn', d.T.string)]),
    withSecurityControlArn(SecurityControlArn): {
      assert std.isString(SecurityControlArn) : 'SecurityControlArn must be a string',
      Properties+::: { SecurityControlArn: SecurityControlArn },
    },
    '#withLastUpdateReason': d.fn('`withLastUpdateReason` LastUpdateReason ', [d.arg('LastUpdateReason', d.T.string)]),
    withLastUpdateReason(LastUpdateReason): {
      assert std.isString(LastUpdateReason) : 'LastUpdateReason must be a string',
      Properties+::: { LastUpdateReason: LastUpdateReason },
    },
  },
  Standard: {
    '#': d.pkg(
      name='Standard',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecurityHub.libsonnet',
      help='The AWS::SecurityHub::Standard resource specifies the enablement of a security standard. The standard is identified by the StandardsArn property. To view a list of ASH standards and their Amazon Resource Names (ARNs), use the [DescribeStandards](https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html) API operation. You must create a separate AWS::SecurityHub::Standard resource for each standard that you want to enable. For more information about ASH standards, see [standards reference](https://docs.aws.amazon.com/securityhub/latest/userguide/standards-reference.html) in the *User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecurityHub::Standard Resource
        * StandardsArn The ARN of the standard that you want to enable. To view a list of available ASH standards and their ARNs, use the [DescribeStandards](https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html) API operation.
      |||,
      args=[
        d.arg('StandardsArn', 'd.T.string'),
      ]
    ),
    new(
      StandardsArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StandardsArn) : 'StandardsArn must be a string',
        StandardsArn: StandardsArn,
      },
      DependsOn:: [],
      Type: 'AWS::SecurityHub::Standard',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStandardsSubscriptionArn': d.fn('`withStandardsSubscriptionArn` StandardsSubscriptionArn ', [d.arg('StandardsSubscriptionArn', d.T.string)]),
    withStandardsSubscriptionArn(StandardsSubscriptionArn): {
      assert std.isString(StandardsSubscriptionArn) : 'StandardsSubscriptionArn must be a string',
      Properties+::: { StandardsSubscriptionArn: StandardsSubscriptionArn },
    },
    '#withDisabledStandardsControls': d.fn('`withDisabledStandardsControls` DisabledStandardsControls ', [d.arg('DisabledStandardsControls', d.T.array)]),
    withDisabledStandardsControls(DisabledStandardsControls): {
      assert std.isArray(DisabledStandardsControls) : 'DisabledStandardsControls must be a array',
      Properties+::: { DisabledStandardsControls: DisabledStandardsControls },
    },
  },
}
