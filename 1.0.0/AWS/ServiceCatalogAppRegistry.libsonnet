local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalogAppRegistry.libsonnet',
      help='Resource Schema for AWS::ServiceCatalogAppRegistry::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalogAppRegistry::Application Resource
        * Name The name of the application. 
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
      Type: 'AWS::ServiceCatalogAppRegistry::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withApplicationTagKey': d.fn('`withApplicationTagKey` ApplicationTagKey ', [d.arg('ApplicationTagKey', d.T.string)]),
    withApplicationTagKey(ApplicationTagKey): {
      assert std.isString(ApplicationTagKey) : 'ApplicationTagKey must be a string',
      Properties+::: { ApplicationTagKey: ApplicationTagKey },
    },
    '#withApplicationTagValue': d.fn('`withApplicationTagValue` ApplicationTagValue ', [d.arg('ApplicationTagValue', d.T.string)]),
    withApplicationTagValue(ApplicationTagValue): {
      assert std.isString(ApplicationTagValue) : 'ApplicationTagValue must be a string',
      Properties+::: { ApplicationTagValue: ApplicationTagValue },
    },
    '#withApplicationName': d.fn('`withApplicationName` ApplicationName ', [d.arg('ApplicationName', d.T.string)]),
    withApplicationName(ApplicationName): {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      Properties+::: { ApplicationName: ApplicationName },
    },
  },
  AttributeGroup: {
    '#': d.pkg(
      name='AttributeGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalogAppRegistry.libsonnet',
      help='Resource Schema for AWS::ServiceCatalogAppRegistry::AttributeGroup.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalogAppRegistry::AttributeGroup Resource
        * Name The name of the attribute group. 
        * Attributes 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Attributes', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Attributes,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Attributes) : 'Attributes must be a object',
        Attributes: Attributes,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalogAppRegistry::AttributeGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  AttributeGroupAssociation: {
    '#': d.pkg(
      name='AttributeGroupAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalogAppRegistry.libsonnet',
      help='Resource Schema for AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation Resource
        * Application The name or the Id of the Application.
        * AttributeGroup The name or the Id of the AttributeGroup.
      |||,
      args=[
        d.arg('Application', 'd.T.string'),
        d.arg('AttributeGroup', 'd.T.string'),
      ]
    ),
    new(
      Application,
      AttributeGroup,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Application) : 'Application must be a string',
        Application: Application,
        assert std.isString(AttributeGroup) : 'AttributeGroup must be a string',
        AttributeGroup: AttributeGroup,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
    },
    '#withAttributeGroupArn': d.fn('`withAttributeGroupArn` AttributeGroupArn ', [d.arg('AttributeGroupArn', d.T.string)]),
    withAttributeGroupArn(AttributeGroupArn): {
      assert std.isString(AttributeGroupArn) : 'AttributeGroupArn must be a string',
      Properties+::: { AttributeGroupArn: AttributeGroupArn },
    },
  },
  ResourceAssociation: {
    '#': d.pkg(
      name='ResourceAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ServiceCatalogAppRegistry.libsonnet',
      help='Resource Schema for AWS::ServiceCatalogAppRegistry::ResourceAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ServiceCatalogAppRegistry::ResourceAssociation Resource
        * Application The name or the Id of the Application.
        * Resource The name or the Id of the Resource.
        * ResourceType The type of the CFN Resource for now its enum CFN_STACK.
      |||,
      args=[
        d.arg('Application', 'd.T.string'),
        d.arg('Resource', 'd.T.string'),
        d.arg('ResourceType', 'd.T.string'),
      ]
    ),
    new(
      Application,
      Resource,
      ResourceType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Application) : 'Application must be a string',
        Application: Application,
        assert std.isString(Resource) : 'Resource must be a string',
        Resource: Resource,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        assert ResourceType == 'CFN_STACK' : "ResourceType must be either 'CFN_STACK'",
        ResourceType: ResourceType,
      },
      DependsOn:: [],
      Type: 'AWS::ServiceCatalogAppRegistry::ResourceAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
  },
}
