local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  InvoiceUnit: {
    '#': d.pkg(
      name='InvoiceUnit',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Invoicing.libsonnet',
      help='An invoice unit is a set of mutually exclusive accounts that correspond to your business entity. Invoice units allow you to separate AWS account costs and configures your invoice for each business entity.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Invoicing::InvoiceUnit Resource
        * InvoiceReceiver 
        * Name 
        * Rule 
      |||,
      args=[
        d.arg('InvoiceReceiver', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('Rule', 'd.T.object'),
      ]
    ),
    new(
      InvoiceReceiver,
      Name,
      Rule,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InvoiceReceiver) : 'InvoiceReceiver must be a string',
        InvoiceReceiver: InvoiceReceiver,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Rule) : 'Rule must be a object',
        Rule: Rule,
      },
      DependsOn:: [],
      Type: 'AWS::Invoicing::InvoiceUnit',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withInvoiceUnitArn': d.fn('`withInvoiceUnitArn` InvoiceUnitArn ', [d.arg('InvoiceUnitArn', d.T.string)]),
    withInvoiceUnitArn(InvoiceUnitArn): {
      assert std.isString(InvoiceUnitArn) : 'InvoiceUnitArn must be a string',
      Properties+::: { InvoiceUnitArn: InvoiceUnitArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTaxInheritanceDisabled': d.fn('`withTaxInheritanceDisabled` TaxInheritanceDisabled ', [d.arg('TaxInheritanceDisabled', d.T.boolean)]),
    withTaxInheritanceDisabled(TaxInheritanceDisabled): {
      assert std.isBoolean(TaxInheritanceDisabled) : 'TaxInheritanceDisabled must be a boolean',
      Properties+::: { TaxInheritanceDisabled: TaxInheritanceDisabled },
    },
    '#withLastModified': d.fn('`withLastModified` LastModified ', [d.arg('LastModified', d.T.integer)]),
    withLastModified(LastModified): {
      // Type: number
      Properties+::: { LastModified: LastModified },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
  },
}
