local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Component: {
    '#': d.pkg(
      name='Component',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AmplifyUIBuilder.libsonnet',
      help='Definition of AWS::AmplifyUIBuilder::Component Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AmplifyUIBuilder::Component Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AmplifyUIBuilder::Component',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAppId': d.fn('`withAppId` AppId ', [d.arg('AppId', d.T.string)]),
    withAppId(AppId): {
      assert std.isString(AppId) : 'AppId must be a string',
      Properties+::: { AppId: AppId },
    },
    '#withBindingProperties': d.fn('`withBindingProperties` BindingProperties ', [d.arg('BindingProperties', d.T.object)]),
    withBindingProperties(BindingProperties): {
      assert std.isObject(BindingProperties) : 'BindingProperties must be a object',
      Properties+::: { BindingProperties: BindingProperties },
    },
    '#withChildren': d.fn('`withChildren` Children ', [d.arg('Children', d.T.array)]),
    withChildren(Children): {
      assert std.isArray(Children) : 'Children must be a array',
      Properties+::: { Children: Children },
    },
    '#withCollectionProperties': d.fn('`withCollectionProperties` CollectionProperties ', [d.arg('CollectionProperties', d.T.object)]),
    withCollectionProperties(CollectionProperties): {
      assert std.isObject(CollectionProperties) : 'CollectionProperties must be a object',
      Properties+::: { CollectionProperties: CollectionProperties },
    },
    '#withComponentType': d.fn('`withComponentType` ComponentType ', [d.arg('ComponentType', d.T.string)]),
    withComponentType(ComponentType): {
      assert std.isString(ComponentType) : 'ComponentType must be a string',
      Properties+::: { ComponentType: ComponentType },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withEnvironmentName': d.fn('`withEnvironmentName` EnvironmentName ', [d.arg('EnvironmentName', d.T.string)]),
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: { EnvironmentName: EnvironmentName },
    },
    '#withEvents': d.fn('`withEvents` Events ', [d.arg('Events', d.T.object)]),
    withEvents(Events): {
      assert std.isObject(Events) : 'Events must be a object',
      Properties+::: { Events: Events },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withOverrides': d.fn('`withOverrides` Overrides ', [d.arg('Overrides', d.T.object)]),
    withOverrides(Overrides): {
      assert std.isObject(Overrides) : 'Overrides must be a object',
      Properties+::: { Overrides: Overrides },
    },
    '#withProperties': d.fn('`withProperties` Properties ', [d.arg('Properties', d.T.object)]),
    withProperties(Properties): {
      assert std.isObject(Properties) : 'Properties must be a object',
      Properties+::: { Properties: Properties },
    },
    '#withSchemaVersion': d.fn('`withSchemaVersion` SchemaVersion ', [d.arg('SchemaVersion', d.T.string)]),
    withSchemaVersion(SchemaVersion): {
      assert std.isString(SchemaVersion) : 'SchemaVersion must be a string',
      Properties+::: { SchemaVersion: SchemaVersion },
    },
    '#withSourceId': d.fn('`withSourceId` SourceId ', [d.arg('SourceId', d.T.string)]),
    withSourceId(SourceId): {
      assert std.isString(SourceId) : 'SourceId must be a string',
      Properties+::: { SourceId: SourceId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withVariants': d.fn('`withVariants` Variants ', [d.arg('Variants', d.T.array)]),
    withVariants(Variants): {
      assert std.isArray(Variants) : 'Variants must be a array',
      Properties+::: { Variants: Variants },
    },
  },
  Form: {
    '#': d.pkg(
      name='Form',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AmplifyUIBuilder.libsonnet',
      help='Definition of AWS::AmplifyUIBuilder::Form Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AmplifyUIBuilder::Form Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AmplifyUIBuilder::Form',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAppId': d.fn('`withAppId` AppId ', [d.arg('AppId', d.T.string)]),
    withAppId(AppId): {
      assert std.isString(AppId) : 'AppId must be a string',
      Properties+::: { AppId: AppId },
    },
    '#withCta': d.fn('`withCta` Cta ', [d.arg('Cta', d.T.object)]),
    withCta(Cta): {
      assert std.isObject(Cta) : 'Cta must be a object',
      Properties+::: { Cta: Cta },
    },
    '#withDataType': d.fn('`withDataType` DataType ', [d.arg('DataType', d.T.object)]),
    withDataType(DataType): {
      assert std.isObject(DataType) : 'DataType must be a object',
      Properties+::: { DataType: DataType },
    },
    '#withEnvironmentName': d.fn('`withEnvironmentName` EnvironmentName ', [d.arg('EnvironmentName', d.T.string)]),
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: { EnvironmentName: EnvironmentName },
    },
    '#withFields': d.fn('`withFields` Fields ', [d.arg('Fields', d.T.object)]),
    withFields(Fields): {
      assert std.isObject(Fields) : 'Fields must be a object',
      Properties+::: { Fields: Fields },
    },
    '#withFormActionType': d.fn('`withFormActionType` FormActionType ', [d.arg('FormActionType', d.T.string)]),
    withFormActionType(FormActionType): {
      assert std.isString(FormActionType) : 'FormActionType must be a string',
      Properties+::: { FormActionType: FormActionType },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLabelDecorator': d.fn('`withLabelDecorator` LabelDecorator ', [d.arg('LabelDecorator', d.T.string)]),
    withLabelDecorator(LabelDecorator): {
      assert std.isString(LabelDecorator) : 'LabelDecorator must be a string',
      Properties+::: { LabelDecorator: LabelDecorator },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withSchemaVersion': d.fn('`withSchemaVersion` SchemaVersion ', [d.arg('SchemaVersion', d.T.string)]),
    withSchemaVersion(SchemaVersion): {
      assert std.isString(SchemaVersion) : 'SchemaVersion must be a string',
      Properties+::: { SchemaVersion: SchemaVersion },
    },
    '#withSectionalElements': d.fn('`withSectionalElements` SectionalElements ', [d.arg('SectionalElements', d.T.object)]),
    withSectionalElements(SectionalElements): {
      assert std.isObject(SectionalElements) : 'SectionalElements must be a object',
      Properties+::: { SectionalElements: SectionalElements },
    },
    '#withStyle': d.fn('`withStyle` Style ', [d.arg('Style', d.T.object)]),
    withStyle(Style): {
      assert std.isObject(Style) : 'Style must be a object',
      Properties+::: { Style: Style },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Theme: {
    '#': d.pkg(
      name='Theme',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AmplifyUIBuilder.libsonnet',
      help='Definition of AWS::AmplifyUIBuilder::Theme Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AmplifyUIBuilder::Theme Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AmplifyUIBuilder::Theme',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAppId': d.fn('`withAppId` AppId ', [d.arg('AppId', d.T.string)]),
    withAppId(AppId): {
      assert std.isString(AppId) : 'AppId must be a string',
      Properties+::: { AppId: AppId },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withEnvironmentName': d.fn('`withEnvironmentName` EnvironmentName ', [d.arg('EnvironmentName', d.T.string)]),
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: { EnvironmentName: EnvironmentName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withOverrides': d.fn('`withOverrides` Overrides ', [d.arg('Overrides', d.T.array)]),
    withOverrides(Overrides): {
      assert std.isArray(Overrides) : 'Overrides must be a array',
      Properties+::: { Overrides: Overrides },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withValues': d.fn('`withValues` Values ', [d.arg('Values', d.T.array)]),
    withValues(Values): {
      assert std.isArray(Values) : 'Values must be a array',
      Properties+::: { Values: Values },
    },
  },
}
