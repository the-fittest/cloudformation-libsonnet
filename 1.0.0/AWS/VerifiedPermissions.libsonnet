local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  IdentitySource: {
    '#': d.pkg(
      name='IdentitySource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VerifiedPermissions.libsonnet',
      help='Definition of AWS::VerifiedPermissions::IdentitySource Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VerifiedPermissions::IdentitySource Resource
        * Configuration 
        * PolicyStoreId 
      |||,
      args=[
        d.arg('Configuration', ''),
        d.arg('PolicyStoreId', 'd.T.string'),
      ]
    ),
    new(
      Configuration,
      PolicyStoreId,
    ): {
      local base = self,
      Properties: {
        // Type: undefined
        Configuration: Configuration,
        assert std.isString(PolicyStoreId) : 'PolicyStoreId must be a string',
        PolicyStoreId: PolicyStoreId,
      },
      DependsOn:: [],
      Type: 'AWS::VerifiedPermissions::IdentitySource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDetails': d.fn('`withDetails` Details ', [d.arg('Details', d.T.object)]),
    withDetails(Details): {
      assert std.isObject(Details) : 'Details must be a object',
      Properties+::: { Details: Details },
    },
    '#withIdentitySourceId': d.fn('`withIdentitySourceId` IdentitySourceId ', [d.arg('IdentitySourceId', d.T.string)]),
    withIdentitySourceId(IdentitySourceId): {
      assert std.isString(IdentitySourceId) : 'IdentitySourceId must be a string',
      Properties+::: { IdentitySourceId: IdentitySourceId },
    },
    '#withPrincipalEntityType': d.fn('`withPrincipalEntityType` PrincipalEntityType ', [d.arg('PrincipalEntityType', d.T.string)]),
    withPrincipalEntityType(PrincipalEntityType): {
      assert std.isString(PrincipalEntityType) : 'PrincipalEntityType must be a string',
      Properties+::: { PrincipalEntityType: PrincipalEntityType },
    },
  },
  Policy: {
    '#': d.pkg(
      name='Policy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VerifiedPermissions.libsonnet',
      help='Definition of AWS::VerifiedPermissions::Policy Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VerifiedPermissions::Policy Resource
        * Definition 
        * PolicyStoreId 
      |||,
      args=[
        d.arg('Definition', ''),
        d.arg('PolicyStoreId', 'd.T.string'),
      ]
    ),
    new(
      Definition,
      PolicyStoreId,
    ): {
      local base = self,
      Properties: {
        // Type: undefined
        Definition: Definition,
        assert std.isString(PolicyStoreId) : 'PolicyStoreId must be a string',
        PolicyStoreId: PolicyStoreId,
      },
      DependsOn:: [],
      Type: 'AWS::VerifiedPermissions::Policy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyId': d.fn('`withPolicyId` PolicyId ', [d.arg('PolicyId', d.T.string)]),
    withPolicyId(PolicyId): {
      assert std.isString(PolicyId) : 'PolicyId must be a string',
      Properties+::: { PolicyId: PolicyId },
    },
    '#withPolicyType': d.fn('`withPolicyType` PolicyType ', [d.arg('PolicyType', d.T.string)]),
    withPolicyType(PolicyType): {
      assert std.isString(PolicyType) : 'PolicyType must be a string',
      Properties+::: { PolicyType: PolicyType },
    },
  },
  PolicyStore: {
    '#': d.pkg(
      name='PolicyStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VerifiedPermissions.libsonnet',
      help='Represents a policy store that you can place schema, policies, and policy templates in to validate authorization requests',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VerifiedPermissions::PolicyStore Resource
        * ValidationSettings 
      |||,
      args=[
        d.arg('ValidationSettings', 'd.T.object'),
      ]
    ),
    new(
      ValidationSettings,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ValidationSettings) : 'ValidationSettings must be a object',
        ValidationSettings: ValidationSettings,
      },
      DependsOn:: [],
      Type: 'AWS::VerifiedPermissions::PolicyStore',
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
    '#withPolicyStoreId': d.fn('`withPolicyStoreId` PolicyStoreId ', [d.arg('PolicyStoreId', d.T.string)]),
    withPolicyStoreId(PolicyStoreId): {
      assert std.isString(PolicyStoreId) : 'PolicyStoreId must be a string',
      Properties+::: { PolicyStoreId: PolicyStoreId },
    },
    '#withSchema': d.fn('`withSchema` Schema ', [d.arg('Schema', d.T.object)]),
    withSchema(Schema): {
      assert std.isObject(Schema) : 'Schema must be a object',
      Properties+::: { Schema: Schema },
    },
  },
  PolicyTemplate: {
    '#': d.pkg(
      name='PolicyTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/VerifiedPermissions.libsonnet',
      help='Definition of AWS::VerifiedPermissions::PolicyTemplate Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::VerifiedPermissions::PolicyTemplate Resource
        * Statement 
        * PolicyStoreId 
      |||,
      args=[
        d.arg('Statement', 'd.T.string'),
        d.arg('PolicyStoreId', 'd.T.string'),
      ]
    ),
    new(
      Statement,
      PolicyStoreId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Statement) : 'Statement must be a string',
        Statement: Statement,
        assert std.isString(PolicyStoreId) : 'PolicyStoreId must be a string',
        PolicyStoreId: PolicyStoreId,
      },
      DependsOn:: [],
      Type: 'AWS::VerifiedPermissions::PolicyTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPolicyTemplateId': d.fn('`withPolicyTemplateId` PolicyTemplateId ', [d.arg('PolicyTemplateId', d.T.string)]),
    withPolicyTemplateId(PolicyTemplateId): {
      assert std.isString(PolicyTemplateId) : 'PolicyTemplateId must be a string',
      Properties+::: { PolicyTemplateId: PolicyTemplateId },
    },
  },
}
