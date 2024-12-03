local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Firewall: {
    '#': d.pkg(
      name='Firewall',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkFirewall.libsonnet',
      help='Resource type definition for AWS::NetworkFirewall::Firewall',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkFirewall::Firewall Resource
        * FirewallName 
        * FirewallPolicyArn 
        * VpcId 
        * SubnetMappings 
      |||,
      args=[
        d.arg('FirewallName', 'd.T.string'),
        d.arg('FirewallPolicyArn', 'd.T.string'),
        d.arg('VpcId', 'd.T.string'),
        d.arg('SubnetMappings', 'd.T.array'),
      ]
    ),
    new(
      FirewallName,
      FirewallPolicyArn,
      VpcId,
      SubnetMappings,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FirewallName) : 'FirewallName must be a string',
        FirewallName: FirewallName,
        assert std.isString(FirewallPolicyArn) : 'FirewallPolicyArn must be a string',
        FirewallPolicyArn: FirewallPolicyArn,
        assert std.isString(VpcId) : 'VpcId must be a string',
        VpcId: VpcId,
        assert std.isArray(SubnetMappings) : 'SubnetMappings must be a array',
        SubnetMappings: SubnetMappings,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkFirewall::Firewall',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFirewallArn': d.fn('`withFirewallArn` FirewallArn ', [d.arg('FirewallArn', d.T.string)]),
    withFirewallArn(FirewallArn): {
      assert std.isString(FirewallArn) : 'FirewallArn must be a string',
      Properties+::: { FirewallArn: FirewallArn },
    },
    '#withFirewallId': d.fn('`withFirewallId` FirewallId ', [d.arg('FirewallId', d.T.string)]),
    withFirewallId(FirewallId): {
      assert std.isString(FirewallId) : 'FirewallId must be a string',
      Properties+::: { FirewallId: FirewallId },
    },
    '#withDeleteProtection': d.fn('`withDeleteProtection` DeleteProtection ', [d.arg('DeleteProtection', d.T.boolean)]),
    withDeleteProtection(DeleteProtection): {
      assert std.isBoolean(DeleteProtection) : 'DeleteProtection must be a boolean',
      Properties+::: { DeleteProtection: DeleteProtection },
    },
    '#withSubnetChangeProtection': d.fn('`withSubnetChangeProtection` SubnetChangeProtection ', [d.arg('SubnetChangeProtection', d.T.boolean)]),
    withSubnetChangeProtection(SubnetChangeProtection): {
      assert std.isBoolean(SubnetChangeProtection) : 'SubnetChangeProtection must be a boolean',
      Properties+::: { SubnetChangeProtection: SubnetChangeProtection },
    },
    '#withFirewallPolicyChangeProtection': d.fn('`withFirewallPolicyChangeProtection` FirewallPolicyChangeProtection ', [d.arg('FirewallPolicyChangeProtection', d.T.boolean)]),
    withFirewallPolicyChangeProtection(FirewallPolicyChangeProtection): {
      assert std.isBoolean(FirewallPolicyChangeProtection) : 'FirewallPolicyChangeProtection must be a boolean',
      Properties+::: { FirewallPolicyChangeProtection: FirewallPolicyChangeProtection },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEndpointIds': d.fn('`withEndpointIds` EndpointIds ', [d.arg('EndpointIds', d.T.array)]),
    withEndpointIds(EndpointIds): {
      assert std.isArray(EndpointIds) : 'EndpointIds must be a array',
      Properties+::: { EndpointIds: EndpointIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  FirewallPolicy: {
    '#': d.pkg(
      name='FirewallPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkFirewall.libsonnet',
      help='Resource type definition for AWS::NetworkFirewall::FirewallPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkFirewall::FirewallPolicy Resource
        * FirewallPolicyName 
        * FirewallPolicy 
      |||,
      args=[
        d.arg('FirewallPolicyName', 'd.T.string'),
        d.arg('FirewallPolicy', 'd.T.object'),
      ]
    ),
    new(
      FirewallPolicyName,
      FirewallPolicy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FirewallPolicyName) : 'FirewallPolicyName must be a string',
        FirewallPolicyName: FirewallPolicyName,
        assert std.isObject(FirewallPolicy) : 'FirewallPolicy must be a object',
        FirewallPolicy: FirewallPolicy,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkFirewall::FirewallPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFirewallPolicyArn': d.fn('`withFirewallPolicyArn` FirewallPolicyArn ', [d.arg('FirewallPolicyArn', d.T.string)]),
    withFirewallPolicyArn(FirewallPolicyArn): {
      assert std.isString(FirewallPolicyArn) : 'FirewallPolicyArn must be a string',
      Properties+::: { FirewallPolicyArn: FirewallPolicyArn },
    },
    '#withFirewallPolicyId': d.fn('`withFirewallPolicyId` FirewallPolicyId ', [d.arg('FirewallPolicyId', d.T.string)]),
    withFirewallPolicyId(FirewallPolicyId): {
      assert std.isString(FirewallPolicyId) : 'FirewallPolicyId must be a string',
      Properties+::: { FirewallPolicyId: FirewallPolicyId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkFirewall.libsonnet',
      help='Resource type definition for AWS::NetworkFirewall::LoggingConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkFirewall::LoggingConfiguration Resource
        * FirewallArn 
        * LoggingConfiguration 
      |||,
      args=[
        d.arg('FirewallArn', 'd.T.string'),
        d.arg('LoggingConfiguration', 'd.T.object'),
      ]
    ),
    new(
      FirewallArn,
      LoggingConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FirewallArn) : 'FirewallArn must be a string',
        FirewallArn: FirewallArn,
        assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
        LoggingConfiguration: LoggingConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkFirewall::LoggingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFirewallName': d.fn('`withFirewallName` FirewallName ', [d.arg('FirewallName', d.T.string)]),
    withFirewallName(FirewallName): {
      assert std.isString(FirewallName) : 'FirewallName must be a string',
      Properties+::: { FirewallName: FirewallName },
    },
  },
  RuleGroup: {
    '#': d.pkg(
      name='RuleGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkFirewall.libsonnet',
      help='Resource type definition for AWS::NetworkFirewall::RuleGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkFirewall::RuleGroup Resource
        * Type 
        * Capacity 
        * RuleGroupName 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Capacity', 'd.T.integer'),
        d.arg('RuleGroupName', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Capacity,
      RuleGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'STATELESS' || Type == 'STATEFUL' : "Type must be either 'STATELESS' or 'STATEFUL'",
        Type: Type,
        assert std.isNumber(Capacity) : 'Capacity must be a integer',
        Capacity: Capacity,
        assert std.isString(RuleGroupName) : 'RuleGroupName must be a string',
        RuleGroupName: RuleGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkFirewall::RuleGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRuleGroupArn': d.fn('`withRuleGroupArn` RuleGroupArn ', [d.arg('RuleGroupArn', d.T.string)]),
    withRuleGroupArn(RuleGroupArn): {
      assert std.isString(RuleGroupArn) : 'RuleGroupArn must be a string',
      Properties+::: { RuleGroupArn: RuleGroupArn },
    },
    '#withRuleGroupId': d.fn('`withRuleGroupId` RuleGroupId ', [d.arg('RuleGroupId', d.T.string)]),
    withRuleGroupId(RuleGroupId): {
      assert std.isString(RuleGroupId) : 'RuleGroupId must be a string',
      Properties+::: { RuleGroupId: RuleGroupId },
    },
    '#withRuleGroup': d.fn('`withRuleGroup` RuleGroup ', [d.arg('RuleGroup', d.T.object)]),
    withRuleGroup(RuleGroup): {
      assert std.isObject(RuleGroup) : 'RuleGroup must be a object',
      Properties+::: { RuleGroup: RuleGroup },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  TLSInspectionConfiguration: {
    '#': d.pkg(
      name='TLSInspectionConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NetworkFirewall.libsonnet',
      help='Resource type definition for AWS::NetworkFirewall::TLSInspectionConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NetworkFirewall::TLSInspectionConfiguration Resource
        * TLSInspectionConfigurationName 
        * TLSInspectionConfiguration 
      |||,
      args=[
        d.arg('TLSInspectionConfigurationName', 'd.T.string'),
        d.arg('TLSInspectionConfiguration', 'd.T.object'),
      ]
    ),
    new(
      TLSInspectionConfigurationName,
      TLSInspectionConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TLSInspectionConfigurationName) : 'TLSInspectionConfigurationName must be a string',
        TLSInspectionConfigurationName: TLSInspectionConfigurationName,
        assert std.isObject(TLSInspectionConfiguration) : 'TLSInspectionConfiguration must be a object',
        TLSInspectionConfiguration: TLSInspectionConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::NetworkFirewall::TLSInspectionConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTLSInspectionConfigurationArn': d.fn('`withTLSInspectionConfigurationArn` TLSInspectionConfigurationArn ', [d.arg('TLSInspectionConfigurationArn', d.T.string)]),
    withTLSInspectionConfigurationArn(TLSInspectionConfigurationArn): {
      assert std.isString(TLSInspectionConfigurationArn) : 'TLSInspectionConfigurationArn must be a string',
      Properties+::: { TLSInspectionConfigurationArn: TLSInspectionConfigurationArn },
    },
    '#withTLSInspectionConfigurationId': d.fn('`withTLSInspectionConfigurationId` TLSInspectionConfigurationId ', [d.arg('TLSInspectionConfigurationId', d.T.string)]),
    withTLSInspectionConfigurationId(TLSInspectionConfigurationId): {
      assert std.isString(TLSInspectionConfigurationId) : 'TLSInspectionConfigurationId must be a string',
      Properties+::: { TLSInspectionConfigurationId: TLSInspectionConfigurationId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
