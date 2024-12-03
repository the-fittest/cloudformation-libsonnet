local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  IPSet: {
    '#': d.pkg(
      name='IPSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFv2.libsonnet',
      help='Contains a list of IP addresses. This can be either IPV4 or IPV6. The list will be mutually',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFv2::IPSet Resource
        * Addresses List of IPAddresses.
        * IPAddressVersion 
        * Scope 
      |||,
      args=[
        d.arg('Addresses', 'd.T.array'),
        d.arg('IPAddressVersion', 'd.T.string'),
        d.arg('Scope', 'd.T.string'),
      ]
    ),
    new(
      Addresses,
      IPAddressVersion,
      Scope,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Addresses) : 'Addresses must be a array',
        Addresses: Addresses,
        assert std.isString(IPAddressVersion) : 'IPAddressVersion must be a string',
        IPAddressVersion: IPAddressVersion,
        assert std.isString(Scope) : 'Scope must be a string',
        Scope: Scope,
      },
      DependsOn:: [],
      Type: 'AWS::WAFv2::IPSet',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LoggingConfiguration: {
    '#': d.pkg(
      name='LoggingConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFv2.libsonnet',
      help='A WAFv2 Logging Configuration Resource Provider',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFv2::LoggingConfiguration Resource
        * ResourceArn The Amazon Resource Name (ARN) of the web ACL that you want to associate with LogDestinationConfigs.
        * LogDestinationConfigs The Amazon Resource Names (ARNs) of the logging destinations that you want to associate with the web ACL.
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('LogDestinationConfigs', 'd.T.array'),
      ]
    ),
    new(
      ResourceArn,
      LogDestinationConfigs,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isArray(LogDestinationConfigs) : 'LogDestinationConfigs must be a array',
        LogDestinationConfigs: LogDestinationConfigs,
      },
      DependsOn:: [],
      Type: 'AWS::WAFv2::LoggingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRedactedFields': d.fn('`withRedactedFields` RedactedFields ', [d.arg('RedactedFields', d.T.array)]),
    withRedactedFields(RedactedFields): {
      assert std.isArray(RedactedFields) : 'RedactedFields must be a array',
      Properties+::: { RedactedFields: RedactedFields },
    },
    '#withManagedByFirewallManager': d.fn('`withManagedByFirewallManager` ManagedByFirewallManager ', [d.arg('ManagedByFirewallManager', d.T.boolean)]),
    withManagedByFirewallManager(ManagedByFirewallManager): {
      assert std.isBoolean(ManagedByFirewallManager) : 'ManagedByFirewallManager must be a boolean',
      Properties+::: { ManagedByFirewallManager: ManagedByFirewallManager },
    },
    '#withLoggingFilter': d.fn('`withLoggingFilter` LoggingFilter ', [d.arg('LoggingFilter', d.T.object)]),
    withLoggingFilter(LoggingFilter): {
      assert std.isObject(LoggingFilter) : 'LoggingFilter must be a object',
      Properties+::: { LoggingFilter: LoggingFilter },
    },
  },
  RegexPatternSet: {
    '#': d.pkg(
      name='RegexPatternSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFv2.libsonnet',
      help='Contains a list of Regular expressions based on the provided inputs. RegexPatternSet can be used with other WAF entities with RegexPatternSetReferenceStatement to perform other actions .',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFv2::RegexPatternSet Resource
        * Scope Use CLOUDFRONT for CloudFront RegexPatternSet, use REGIONAL for Application Load Balancer and API Gateway.
        * RegularExpressionList 
      |||,
      args=[
        d.arg('Scope', 'd.T.string'),
        d.arg('RegularExpressionList', 'd.T.array'),
      ]
    ),
    new(
      Scope,
      RegularExpressionList,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Scope) : 'Scope must be a string',
        assert Scope == 'CLOUDFRONT' || Scope == 'REGIONAL' : "Scope must be either 'CLOUDFRONT' or 'REGIONAL'",
        Scope: Scope,
        assert std.isArray(RegularExpressionList) : 'RegularExpressionList must be a array',
        RegularExpressionList: RegularExpressionList,
      },
      DependsOn:: [],
      Type: 'AWS::WAFv2::RegexPatternSet',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  RuleGroup: {
    '#': d.pkg(
      name='RuleGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFv2.libsonnet',
      help='Contains the Rules that identify the requests that you want to allow, block, or count. In a RuleGroup, you also specify a default action (ALLOW or BLOCK), and the action for each Rule that you add to a RuleGroup, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the RuleGroup with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one Rule to a RuleGroup, a request needs to match only one of the specifications to be allowed, blocked, or counted.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFv2::RuleGroup Resource
        * Capacity 
        * Scope 
        * VisibilityConfig 
      |||,
      args=[
        d.arg('Capacity', 'd.T.integer'),
        d.arg('Scope', 'd.T.string'),
        d.arg('VisibilityConfig', 'd.T.object'),
      ]
    ),
    new(
      Capacity,
      Scope,
      VisibilityConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(Capacity) : 'Capacity must be a integer',
        Capacity: Capacity,
        assert std.isString(Scope) : 'Scope must be a string',
        Scope: Scope,
        assert std.isObject(VisibilityConfig) : 'VisibilityConfig must be a object',
        VisibilityConfig: VisibilityConfig,
      },
      DependsOn:: [],
      Type: 'AWS::WAFv2::RuleGroup',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRules': d.fn('`withRules` Rules ', [d.arg('Rules', d.T.array)]),
    withRules(Rules): {
      assert std.isArray(Rules) : 'Rules must be a array',
      Properties+::: { Rules: Rules },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLabelNamespace': d.fn('`withLabelNamespace` LabelNamespace ', [d.arg('LabelNamespace', d.T.string)]),
    withLabelNamespace(LabelNamespace): {
      assert std.isString(LabelNamespace) : 'LabelNamespace must be a string',
      Properties+::: { LabelNamespace: LabelNamespace },
    },
    '#withCustomResponseBodies': d.fn('`withCustomResponseBodies` CustomResponseBodies ', [d.arg('CustomResponseBodies', d.T.object)]),
    withCustomResponseBodies(CustomResponseBodies): {
      assert std.isObject(CustomResponseBodies) : 'CustomResponseBodies must be a object',
      Properties+::: { CustomResponseBodies: CustomResponseBodies },
    },
    '#withAvailableLabels': d.fn('`withAvailableLabels` AvailableLabels ', [d.arg('AvailableLabels', d.T.array)]),
    withAvailableLabels(AvailableLabels): {
      assert std.isArray(AvailableLabels) : 'AvailableLabels must be a array',
      Properties+::: { AvailableLabels: AvailableLabels },
    },
    '#withConsumedLabels': d.fn('`withConsumedLabels` ConsumedLabels ', [d.arg('ConsumedLabels', d.T.array)]),
    withConsumedLabels(ConsumedLabels): {
      assert std.isArray(ConsumedLabels) : 'ConsumedLabels must be a array',
      Properties+::: { ConsumedLabels: ConsumedLabels },
    },
  },
  WebACL: {
    '#': d.pkg(
      name='WebACL',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFv2.libsonnet',
      help='Contains the Rules that identify the requests that you want to allow, block, or count. In a WebACL, you also specify a default action (ALLOW or BLOCK), and the action for each Rule that you add to a WebACL, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the WebACL with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one Rule to a WebACL, a request needs to match only one of the specifications to be allowed, blocked, or counted.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFv2::WebACL Resource
        * DefaultAction 
        * Scope 
        * VisibilityConfig 
      |||,
      args=[
        d.arg('DefaultAction', 'd.T.object'),
        d.arg('Scope', 'd.T.string'),
        d.arg('VisibilityConfig', 'd.T.object'),
      ]
    ),
    new(
      DefaultAction,
      Scope,
      VisibilityConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DefaultAction) : 'DefaultAction must be a object',
        DefaultAction: DefaultAction,
        assert std.isString(Scope) : 'Scope must be a string',
        Scope: Scope,
        assert std.isObject(VisibilityConfig) : 'VisibilityConfig must be a object',
        VisibilityConfig: VisibilityConfig,
      },
      DependsOn:: [],
      Type: 'AWS::WAFv2::WebACL',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCapacity': d.fn('`withCapacity` Capacity ', [d.arg('Capacity', d.T.integer)]),
    withCapacity(Capacity): {
      assert std.isNumber(Capacity) : 'Capacity must be a integer',
      Properties+::: { Capacity: Capacity },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRules': d.fn('`withRules` Rules ', [d.arg('Rules', d.T.array)]),
    withRules(Rules): {
      assert std.isArray(Rules) : 'Rules must be a array',
      Properties+::: { Rules: Rules },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withLabelNamespace': d.fn('`withLabelNamespace` LabelNamespace ', [d.arg('LabelNamespace', d.T.string)]),
    withLabelNamespace(LabelNamespace): {
      assert std.isString(LabelNamespace) : 'LabelNamespace must be a string',
      Properties+::: { LabelNamespace: LabelNamespace },
    },
    '#withCustomResponseBodies': d.fn('`withCustomResponseBodies` CustomResponseBodies ', [d.arg('CustomResponseBodies', d.T.object)]),
    withCustomResponseBodies(CustomResponseBodies): {
      assert std.isObject(CustomResponseBodies) : 'CustomResponseBodies must be a object',
      Properties+::: { CustomResponseBodies: CustomResponseBodies },
    },
    '#withCaptchaConfig': d.fn('`withCaptchaConfig` CaptchaConfig ', [d.arg('CaptchaConfig', d.T.object)]),
    withCaptchaConfig(CaptchaConfig): {
      assert std.isObject(CaptchaConfig) : 'CaptchaConfig must be a object',
      Properties+::: { CaptchaConfig: CaptchaConfig },
    },
    '#withChallengeConfig': d.fn('`withChallengeConfig` ChallengeConfig ', [d.arg('ChallengeConfig', d.T.object)]),
    withChallengeConfig(ChallengeConfig): {
      assert std.isObject(ChallengeConfig) : 'ChallengeConfig must be a object',
      Properties+::: { ChallengeConfig: ChallengeConfig },
    },
    '#withTokenDomains': d.fn('`withTokenDomains` TokenDomains ', [d.arg('TokenDomains', d.T.array)]),
    withTokenDomains(TokenDomains): {
      assert std.isArray(TokenDomains) : 'TokenDomains must be a array',
      Properties+::: { TokenDomains: TokenDomains },
    },
    '#withAssociationConfig': d.fn('`withAssociationConfig` AssociationConfig ', [d.arg('AssociationConfig', d.T.object)]),
    withAssociationConfig(AssociationConfig): {
      assert std.isObject(AssociationConfig) : 'AssociationConfig must be a object',
      Properties+::: { AssociationConfig: AssociationConfig },
    },
  },
  WebACLAssociation: {
    '#': d.pkg(
      name='WebACLAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFv2.libsonnet',
      help='Associates WebACL to Application Load Balancer, CloudFront or API Gateway.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFv2::WebACLAssociation Resource
        * ResourceArn 
        * WebACLArn 
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('WebACLArn', 'd.T.string'),
      ]
    ),
    new(
      ResourceArn,
      WebACLArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isString(WebACLArn) : 'WebACLArn must be a string',
        WebACLArn: WebACLArn,
      },
      DependsOn:: [],
      Type: 'AWS::WAFv2::WebACLAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
}
