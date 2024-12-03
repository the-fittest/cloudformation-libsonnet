local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ByteMatchSet: {
    '#': d.pkg(
      name='ByteMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::ByteMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::ByteMatchSet Resource
        * Name 
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
      Type: 'AWS::WAFRegional::ByteMatchSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withByteMatchTuples': d.fn('`withByteMatchTuples` ByteMatchTuples ', [d.arg('ByteMatchTuples', d.T.array)]),
    withByteMatchTuples(ByteMatchTuples): {
      assert std.isArray(ByteMatchTuples) : 'ByteMatchTuples must be a array',
      Properties+::: { ByteMatchTuples: ByteMatchTuples },
    },
  },
  GeoMatchSet: {
    '#': d.pkg(
      name='GeoMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::GeoMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::GeoMatchSet Resource
        * Name 
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
      Type: 'AWS::WAFRegional::GeoMatchSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withGeoMatchConstraints': d.fn('`withGeoMatchConstraints` GeoMatchConstraints ', [d.arg('GeoMatchConstraints', d.T.array)]),
    withGeoMatchConstraints(GeoMatchConstraints): {
      assert std.isArray(GeoMatchConstraints) : 'GeoMatchConstraints must be a array',
      Properties+::: { GeoMatchConstraints: GeoMatchConstraints },
    },
  },
  IPSet: {
    '#': d.pkg(
      name='IPSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::IPSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::IPSet Resource
        * Name 
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
      Type: 'AWS::WAFRegional::IPSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIPSetDescriptors': d.fn('`withIPSetDescriptors` IPSetDescriptors ', [d.arg('IPSetDescriptors', d.T.array)]),
    withIPSetDescriptors(IPSetDescriptors): {
      assert std.isArray(IPSetDescriptors) : 'IPSetDescriptors must be a array',
      Properties+::: { IPSetDescriptors: IPSetDescriptors },
    },
  },
  RateBasedRule: {
    '#': d.pkg(
      name='RateBasedRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::RateBasedRule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::RateBasedRule Resource
        * MetricName 
        * RateLimit 
        * RateKey 
        * Name 
      |||,
      args=[
        d.arg('MetricName', 'd.T.string'),
        d.arg('RateLimit', 'd.T.integer'),
        d.arg('RateKey', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      MetricName,
      RateLimit,
      RateKey,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MetricName) : 'MetricName must be a string',
        MetricName: MetricName,
        assert std.isNumber(RateLimit) : 'RateLimit must be a integer',
        RateLimit: RateLimit,
        assert std.isString(RateKey) : 'RateKey must be a string',
        RateKey: RateKey,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::WAFRegional::RateBasedRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMatchPredicates': d.fn('`withMatchPredicates` MatchPredicates ', [d.arg('MatchPredicates', d.T.array)]),
    withMatchPredicates(MatchPredicates): {
      assert std.isArray(MatchPredicates) : 'MatchPredicates must be a array',
      Properties+::: { MatchPredicates: MatchPredicates },
    },
  },
  RegexPatternSet: {
    '#': d.pkg(
      name='RegexPatternSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::RegexPatternSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::RegexPatternSet Resource
        * RegexPatternStrings 
        * Name 
      |||,
      args=[
        d.arg('RegexPatternStrings', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      RegexPatternStrings,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(RegexPatternStrings) : 'RegexPatternStrings must be a array',
        RegexPatternStrings: RegexPatternStrings,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::WAFRegional::RegexPatternSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Rule: {
    '#': d.pkg(
      name='Rule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::Rule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::Rule Resource
        * MetricName 
        * Name 
      |||,
      args=[
        d.arg('MetricName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      MetricName,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MetricName) : 'MetricName must be a string',
        MetricName: MetricName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::WAFRegional::Rule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPredicates': d.fn('`withPredicates` Predicates ', [d.arg('Predicates', d.T.array)]),
    withPredicates(Predicates): {
      assert std.isArray(Predicates) : 'Predicates must be a array',
      Properties+::: { Predicates: Predicates },
    },
  },
  SizeConstraintSet: {
    '#': d.pkg(
      name='SizeConstraintSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::SizeConstraintSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::SizeConstraintSet Resource
        * Name 
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
      Type: 'AWS::WAFRegional::SizeConstraintSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSizeConstraints': d.fn('`withSizeConstraints` SizeConstraints ', [d.arg('SizeConstraints', d.T.array)]),
    withSizeConstraints(SizeConstraints): {
      assert std.isArray(SizeConstraints) : 'SizeConstraints must be a array',
      Properties+::: { SizeConstraints: SizeConstraints },
    },
  },
  SqlInjectionMatchSet: {
    '#': d.pkg(
      name='SqlInjectionMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::SqlInjectionMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::SqlInjectionMatchSet Resource
        * Name 
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
      Type: 'AWS::WAFRegional::SqlInjectionMatchSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSqlInjectionMatchTuples': d.fn('`withSqlInjectionMatchTuples` SqlInjectionMatchTuples ', [d.arg('SqlInjectionMatchTuples', d.T.array)]),
    withSqlInjectionMatchTuples(SqlInjectionMatchTuples): {
      assert std.isArray(SqlInjectionMatchTuples) : 'SqlInjectionMatchTuples must be a array',
      Properties+::: { SqlInjectionMatchTuples: SqlInjectionMatchTuples },
    },
  },
  WebACL: {
    '#': d.pkg(
      name='WebACL',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::WebACL',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::WebACL Resource
        * DefaultAction 
        * MetricName 
        * Name 
      |||,
      args=[
        d.arg('DefaultAction', 'd.T.object'),
        d.arg('MetricName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      DefaultAction,
      MetricName,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DefaultAction) : 'DefaultAction must be a object',
        DefaultAction: DefaultAction,
        assert std.isString(MetricName) : 'MetricName must be a string',
        MetricName: MetricName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::WAFRegional::WebACL',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
  },
  WebACLAssociation: {
    '#': d.pkg(
      name='WebACLAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::WebACLAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::WebACLAssociation Resource
        * ResourceArn 
        * WebACLId 
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('WebACLId', 'd.T.string'),
      ]
    ),
    new(
      ResourceArn,
      WebACLId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isString(WebACLId) : 'WebACLId must be a string',
        WebACLId: WebACLId,
      },
      DependsOn:: [],
      Type: 'AWS::WAFRegional::WebACLAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  XssMatchSet: {
    '#': d.pkg(
      name='XssMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAFRegional.libsonnet',
      help='Resource Type definition for AWS::WAFRegional::XssMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAFRegional::XssMatchSet Resource
        * Name 
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
      Type: 'AWS::WAFRegional::XssMatchSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withXssMatchTuples': d.fn('`withXssMatchTuples` XssMatchTuples ', [d.arg('XssMatchTuples', d.T.array)]),
    withXssMatchTuples(XssMatchTuples): {
      assert std.isArray(XssMatchTuples) : 'XssMatchTuples must be a array',
      Properties+::: { XssMatchTuples: XssMatchTuples },
    },
  },
}
