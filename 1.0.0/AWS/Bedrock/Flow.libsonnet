{
  // AWS Bedrock Flow
  Flow: {
    new(
      ExecutionRoleArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
        ExecutionRoleArn: ExecutionRoleArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Bedrock::Flow',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withDefinition(Definition): {
      assert std.isObject(Definition) : 'Definition must be a object',
      Properties+::: {
        Definition: Definition,
      },
    },
    withDefinitionString(DefinitionString): {
      assert std.isString(DefinitionString) : 'DefinitionString must be a string',
      Properties+::: {
        DefinitionString: DefinitionString,
      },
    },
    withDefinitionS3Location(DefinitionS3Location): {
      assert std.isObject(DefinitionS3Location) : 'DefinitionS3Location must be a object',
      Properties+::: {
        DefinitionS3Location: DefinitionS3Location,
      },
    },
    withDefinitionSubstitutions(DefinitionSubstitutions): {
      assert std.isObject(DefinitionSubstitutions) : 'DefinitionSubstitutions must be a object',
      Properties+::: {
        DefinitionSubstitutions: DefinitionSubstitutions,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: {
        UpdatedAt: UpdatedAt,
      },
    },
    withCustomerEncryptionKeyArn(CustomerEncryptionKeyArn): {
      assert std.isString(CustomerEncryptionKeyArn) : 'CustomerEncryptionKeyArn must be a string',
      Properties+::: {
        CustomerEncryptionKeyArn: CustomerEncryptionKeyArn,
      },
    },
    withValidations(Validations): {
      Properties+::: {
        Validations: (if std.isArray(Validations) then Validations else [Validations]),
      },
    },
    withValidationsMixin(Validations): {
      Properties+::: {
        Validations+: (if std.isArray(Validations) then Validations else [Validations]),
      },
    },
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: {
        Version: Version,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withTestAliasTags(TestAliasTags): {
      assert std.isObject(TestAliasTags) : 'TestAliasTags must be a object',
      Properties+::: {
        TestAliasTags: TestAliasTags,
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
