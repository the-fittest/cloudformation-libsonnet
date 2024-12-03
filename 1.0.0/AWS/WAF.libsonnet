local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ByteMatchSet: {
    '#': d.pkg(
      name='ByteMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::ByteMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::ByteMatchSet Resource
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
      Type: 'AWS::WAF::ByteMatchSet',
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
  IPSet: {
    '#': d.pkg(
      name='IPSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::IPSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::IPSet Resource
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
      Type: 'AWS::WAF::IPSet',
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
  Rule: {
    '#': d.pkg(
      name='Rule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::Rule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::Rule Resource
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
      Type: 'AWS::WAF::Rule',
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::SizeConstraintSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::SizeConstraintSet Resource
        * SizeConstraints 
        * Name 
      |||,
      args=[
        d.arg('SizeConstraints', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      SizeConstraints,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(SizeConstraints) : 'SizeConstraints must be a array',
        SizeConstraints: SizeConstraints,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::WAF::SizeConstraintSet',
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
  SqlInjectionMatchSet: {
    '#': d.pkg(
      name='SqlInjectionMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::SqlInjectionMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::SqlInjectionMatchSet Resource
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
      Type: 'AWS::WAF::SqlInjectionMatchSet',
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
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::WebACL',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::WebACL Resource
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
      Type: 'AWS::WAF::WebACL',
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
  XssMatchSet: {
    '#': d.pkg(
      name='XssMatchSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/WAF.libsonnet',
      help='Resource Type definition for AWS::WAF::XssMatchSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::WAF::XssMatchSet Resource
        * Name 
        * XssMatchTuples 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('XssMatchTuples', 'd.T.array'),
      ]
    ),
    new(
      Name,
      XssMatchTuples,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(XssMatchTuples) : 'XssMatchTuples must be a array',
        XssMatchTuples: XssMatchTuples,
      },
      DependsOn:: [],
      Type: 'AWS::WAF::XssMatchSet',
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
}
