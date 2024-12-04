{
  // AWS AmplifyUIBuilder Form
  Form: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AmplifyUIBuilder::Form',
    },
    withAppId(AppId): {
      assert std.isString(AppId) : 'AppId must be a string',
      Properties+::: {
        AppId: AppId,
      },
    },
    withCta(Cta): {
      assert std.isObject(Cta) : 'Cta must be a object',
      Properties+::: {
        Cta: Cta,
      },
    },
    withDataType(DataType): {
      assert std.isObject(DataType) : 'DataType must be a object',
      Properties+::: {
        DataType: DataType,
      },
    },
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: {
        EnvironmentName: EnvironmentName,
      },
    },
    withFields(Fields): {
      assert std.isObject(Fields) : 'Fields must be a object',
      Properties+::: {
        Fields: Fields,
      },
    },
    withFormActionType(FormActionType): {
      assert std.isString(FormActionType) : 'FormActionType must be a string',
      Properties+::: {
        FormActionType: FormActionType,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withLabelDecorator(LabelDecorator): {
      assert std.isString(LabelDecorator) : 'LabelDecorator must be a string',
      Properties+::: {
        LabelDecorator: LabelDecorator,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withSchemaVersion(SchemaVersion): {
      assert std.isString(SchemaVersion) : 'SchemaVersion must be a string',
      Properties+::: {
        SchemaVersion: SchemaVersion,
      },
    },
    withSectionalElements(SectionalElements): {
      assert std.isObject(SectionalElements) : 'SectionalElements must be a object',
      Properties+::: {
        SectionalElements: SectionalElements,
      },
    },
    withStyle(Style): {
      assert std.isObject(Style) : 'Style must be a object',
      Properties+::: {
        Style: Style,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
