local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AnalysisTemplate: {
    '#': d.pkg(
      name='AnalysisTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents a stored analysis within a collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::AnalysisTemplate Resource
        * Source 
        * Format 
        * Name 
        * MembershipIdentifier 
      |||,
      args=[
        d.arg('Source', 'd.T.object'),
        d.arg('Format', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('MembershipIdentifier', 'd.T.string'),
      ]
    ),
    new(
      Source,
      Format,
      Name,
      MembershipIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Source) : 'Source must be a object',
        Source: Source,
        assert std.isString(Format) : 'Format must be a string',
        assert Format == 'SQL' : "Format must be either 'SQL'",
        Format: Format,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
        MembershipIdentifier: MembershipIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::AnalysisTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCollaborationArn': d.fn('`withCollaborationArn` CollaborationArn ', [d.arg('CollaborationArn', d.T.string)]),
    withCollaborationArn(CollaborationArn): {
      assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
      Properties+::: { CollaborationArn: CollaborationArn },
    },
    '#withCollaborationIdentifier': d.fn('`withCollaborationIdentifier` CollaborationIdentifier ', [d.arg('CollaborationIdentifier', d.T.string)]),
    withCollaborationIdentifier(CollaborationIdentifier): {
      assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
      Properties+::: { CollaborationIdentifier: CollaborationIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAnalysisParameters': d.fn('`withAnalysisParameters` AnalysisParameters ', [d.arg('AnalysisParameters', d.T.array)]),
    withAnalysisParameters(AnalysisParameters): {
      assert std.isArray(AnalysisParameters) : 'AnalysisParameters must be a array',
      Properties+::: { AnalysisParameters: AnalysisParameters },
    },
    '#withAnalysisTemplateIdentifier': d.fn('`withAnalysisTemplateIdentifier` AnalysisTemplateIdentifier ', [d.arg('AnalysisTemplateIdentifier', d.T.string)]),
    withAnalysisTemplateIdentifier(AnalysisTemplateIdentifier): {
      assert std.isString(AnalysisTemplateIdentifier) : 'AnalysisTemplateIdentifier must be a string',
      Properties+::: { AnalysisTemplateIdentifier: AnalysisTemplateIdentifier },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMembershipArn': d.fn('`withMembershipArn` MembershipArn ', [d.arg('MembershipArn', d.T.string)]),
    withMembershipArn(MembershipArn): {
      assert std.isString(MembershipArn) : 'MembershipArn must be a string',
      Properties+::: { MembershipArn: MembershipArn },
    },
    '#withSchema': d.fn('`withSchema` Schema ', [d.arg('Schema', d.T.object)]),
    withSchema(Schema): {
      assert std.isObject(Schema) : 'Schema must be a object',
      Properties+::: { Schema: Schema },
    },
  },
  Collaboration: {
    '#': d.pkg(
      name='Collaboration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents a collaboration between AWS accounts that allows for secure data collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::Collaboration Resource
        * CreatorDisplayName 
        * CreatorMemberAbilities 
        * Members 
        * Name 
        * Description 
        * QueryLogStatus 
      |||,
      args=[
        d.arg('CreatorDisplayName', 'd.T.string'),
        d.arg('CreatorMemberAbilities', 'd.T.array'),
        d.arg('Members', 'd.T.array'),
        d.arg('Name', 'd.T.string'),
        d.arg('Description', 'd.T.string'),
        d.arg('QueryLogStatus', 'd.T.string'),
      ]
    ),
    new(
      CreatorDisplayName,
      CreatorMemberAbilities,
      Members,
      Name,
      Description,
      QueryLogStatus,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CreatorDisplayName) : 'CreatorDisplayName must be a string',
        CreatorDisplayName: CreatorDisplayName,
        assert std.isArray(CreatorMemberAbilities) : 'CreatorMemberAbilities must be a array',
        CreatorMemberAbilities: CreatorMemberAbilities,
        assert std.isArray(Members) : 'Members must be a array',
        Members: Members,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isString(QueryLogStatus) : 'QueryLogStatus must be a string',
        QueryLogStatus: QueryLogStatus,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::Collaboration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCollaborationIdentifier': d.fn('`withCollaborationIdentifier` CollaborationIdentifier ', [d.arg('CollaborationIdentifier', d.T.string)]),
    withCollaborationIdentifier(CollaborationIdentifier): {
      assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
      Properties+::: { CollaborationIdentifier: CollaborationIdentifier },
    },
    '#withDataEncryptionMetadata': d.fn('`withDataEncryptionMetadata` DataEncryptionMetadata ', [d.arg('DataEncryptionMetadata', d.T.object)]),
    withDataEncryptionMetadata(DataEncryptionMetadata): {
      assert std.isObject(DataEncryptionMetadata) : 'DataEncryptionMetadata must be a object',
      Properties+::: { DataEncryptionMetadata: DataEncryptionMetadata },
    },
    '#withAnalyticsEngine': d.fn('`withAnalyticsEngine` AnalyticsEngine ', [d.arg('AnalyticsEngine', d.T.string)]),
    withAnalyticsEngine(AnalyticsEngine): {
      assert std.isString(AnalyticsEngine) : 'AnalyticsEngine must be a string',
      Properties+::: { AnalyticsEngine: AnalyticsEngine },
    },
    '#withCreatorPaymentConfiguration': d.fn('`withCreatorPaymentConfiguration` CreatorPaymentConfiguration ', [d.arg('CreatorPaymentConfiguration', d.T.object)]),
    withCreatorPaymentConfiguration(CreatorPaymentConfiguration): {
      assert std.isObject(CreatorPaymentConfiguration) : 'CreatorPaymentConfiguration must be a object',
      Properties+::: { CreatorPaymentConfiguration: CreatorPaymentConfiguration },
    },
  },
  ConfiguredTable: {
    '#': d.pkg(
      name='ConfiguredTable',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents a table that can be associated with collaborations',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::ConfiguredTable Resource
        * AllowedColumns 
        * AnalysisMethod 
        * Name 
        * TableReference 
      |||,
      args=[
        d.arg('AllowedColumns', 'd.T.array'),
        d.arg('AnalysisMethod', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('TableReference', 'd.T.object'),
      ]
    ),
    new(
      AllowedColumns,
      AnalysisMethod,
      Name,
      TableReference,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(AllowedColumns) : 'AllowedColumns must be a array',
        AllowedColumns: AllowedColumns,
        assert std.isString(AnalysisMethod) : 'AnalysisMethod must be a string',
        AnalysisMethod: AnalysisMethod,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(TableReference) : 'TableReference must be a object',
        TableReference: TableReference,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::ConfiguredTable',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withConfiguredTableIdentifier': d.fn('`withConfiguredTableIdentifier` ConfiguredTableIdentifier ', [d.arg('ConfiguredTableIdentifier', d.T.string)]),
    withConfiguredTableIdentifier(ConfiguredTableIdentifier): {
      assert std.isString(ConfiguredTableIdentifier) : 'ConfiguredTableIdentifier must be a string',
      Properties+::: { ConfiguredTableIdentifier: ConfiguredTableIdentifier },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAnalysisRules': d.fn('`withAnalysisRules` AnalysisRules ', [d.arg('AnalysisRules', d.T.array)]),
    withAnalysisRules(AnalysisRules): {
      assert std.isArray(AnalysisRules) : 'AnalysisRules must be a array',
      Properties+::: { AnalysisRules: AnalysisRules },
    },
  },
  ConfiguredTableAssociation: {
    '#': d.pkg(
      name='ConfiguredTableAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents a table that can be queried within a collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::ConfiguredTableAssociation Resource
        * ConfiguredTableIdentifier 
        * Name 
        * RoleArn 
        * MembershipIdentifier 
      |||,
      args=[
        d.arg('ConfiguredTableIdentifier', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('MembershipIdentifier', 'd.T.string'),
      ]
    ),
    new(
      ConfiguredTableIdentifier,
      Name,
      RoleArn,
      MembershipIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConfiguredTableIdentifier) : 'ConfiguredTableIdentifier must be a string',
        ConfiguredTableIdentifier: ConfiguredTableIdentifier,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
        MembershipIdentifier: MembershipIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::ConfiguredTableAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withConfiguredTableAssociationIdentifier': d.fn('`withConfiguredTableAssociationIdentifier` ConfiguredTableAssociationIdentifier ', [d.arg('ConfiguredTableAssociationIdentifier', d.T.string)]),
    withConfiguredTableAssociationIdentifier(ConfiguredTableAssociationIdentifier): {
      assert std.isString(ConfiguredTableAssociationIdentifier) : 'ConfiguredTableAssociationIdentifier must be a string',
      Properties+::: { ConfiguredTableAssociationIdentifier: ConfiguredTableAssociationIdentifier },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withConfiguredTableAssociationAnalysisRules': d.fn('`withConfiguredTableAssociationAnalysisRules` ConfiguredTableAssociationAnalysisRules ', [d.arg('ConfiguredTableAssociationAnalysisRules', d.T.array)]),
    withConfiguredTableAssociationAnalysisRules(ConfiguredTableAssociationAnalysisRules): {
      assert std.isArray(ConfiguredTableAssociationAnalysisRules) : 'ConfiguredTableAssociationAnalysisRules must be a array',
      Properties+::: { ConfiguredTableAssociationAnalysisRules: ConfiguredTableAssociationAnalysisRules },
    },
  },
  IdMappingTable: {
    '#': d.pkg(
      name='IdMappingTable',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents an association between an ID mapping workflow and a collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::IdMappingTable Resource
        * MembershipIdentifier 
        * Name 
        * InputReferenceConfig 
      |||,
      args=[
        d.arg('MembershipIdentifier', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('InputReferenceConfig', 'd.T.object'),
      ]
    ),
    new(
      MembershipIdentifier,
      Name,
      InputReferenceConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
        MembershipIdentifier: MembershipIdentifier,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(InputReferenceConfig) : 'InputReferenceConfig must be a object',
        InputReferenceConfig: InputReferenceConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::IdMappingTable',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdMappingTableIdentifier': d.fn('`withIdMappingTableIdentifier` IdMappingTableIdentifier ', [d.arg('IdMappingTableIdentifier', d.T.string)]),
    withIdMappingTableIdentifier(IdMappingTableIdentifier): {
      assert std.isString(IdMappingTableIdentifier) : 'IdMappingTableIdentifier must be a string',
      Properties+::: { IdMappingTableIdentifier: IdMappingTableIdentifier },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withMembershipArn': d.fn('`withMembershipArn` MembershipArn ', [d.arg('MembershipArn', d.T.string)]),
    withMembershipArn(MembershipArn): {
      assert std.isString(MembershipArn) : 'MembershipArn must be a string',
      Properties+::: { MembershipArn: MembershipArn },
    },
    '#withCollaborationIdentifier': d.fn('`withCollaborationIdentifier` CollaborationIdentifier ', [d.arg('CollaborationIdentifier', d.T.string)]),
    withCollaborationIdentifier(CollaborationIdentifier): {
      assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
      Properties+::: { CollaborationIdentifier: CollaborationIdentifier },
    },
    '#withCollaborationArn': d.fn('`withCollaborationArn` CollaborationArn ', [d.arg('CollaborationArn', d.T.string)]),
    withCollaborationArn(CollaborationArn): {
      assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
      Properties+::: { CollaborationArn: CollaborationArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withInputReferenceProperties': d.fn('`withInputReferenceProperties` InputReferenceProperties ', [d.arg('InputReferenceProperties', d.T.object)]),
    withInputReferenceProperties(InputReferenceProperties): {
      assert std.isObject(InputReferenceProperties) : 'InputReferenceProperties must be a object',
      Properties+::: { InputReferenceProperties: InputReferenceProperties },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  IdNamespaceAssociation: {
    '#': d.pkg(
      name='IdNamespaceAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents an association between an ID namespace and a collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::IdNamespaceAssociation Resource
        * MembershipIdentifier 
        * InputReferenceConfig 
        * Name 
      |||,
      args=[
        d.arg('MembershipIdentifier', 'd.T.string'),
        d.arg('InputReferenceConfig', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      MembershipIdentifier,
      InputReferenceConfig,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
        MembershipIdentifier: MembershipIdentifier,
        assert std.isObject(InputReferenceConfig) : 'InputReferenceConfig must be a object',
        InputReferenceConfig: InputReferenceConfig,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::IdNamespaceAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIdNamespaceAssociationIdentifier': d.fn('`withIdNamespaceAssociationIdentifier` IdNamespaceAssociationIdentifier ', [d.arg('IdNamespaceAssociationIdentifier', d.T.string)]),
    withIdNamespaceAssociationIdentifier(IdNamespaceAssociationIdentifier): {
      assert std.isString(IdNamespaceAssociationIdentifier) : 'IdNamespaceAssociationIdentifier must be a string',
      Properties+::: { IdNamespaceAssociationIdentifier: IdNamespaceAssociationIdentifier },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withMembershipArn': d.fn('`withMembershipArn` MembershipArn ', [d.arg('MembershipArn', d.T.string)]),
    withMembershipArn(MembershipArn): {
      assert std.isString(MembershipArn) : 'MembershipArn must be a string',
      Properties+::: { MembershipArn: MembershipArn },
    },
    '#withCollaborationIdentifier': d.fn('`withCollaborationIdentifier` CollaborationIdentifier ', [d.arg('CollaborationIdentifier', d.T.string)]),
    withCollaborationIdentifier(CollaborationIdentifier): {
      assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
      Properties+::: { CollaborationIdentifier: CollaborationIdentifier },
    },
    '#withCollaborationArn': d.fn('`withCollaborationArn` CollaborationArn ', [d.arg('CollaborationArn', d.T.string)]),
    withCollaborationArn(CollaborationArn): {
      assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
      Properties+::: { CollaborationArn: CollaborationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withIdMappingConfig': d.fn('`withIdMappingConfig` IdMappingConfig ', [d.arg('IdMappingConfig', d.T.object)]),
    withIdMappingConfig(IdMappingConfig): {
      assert std.isObject(IdMappingConfig) : 'IdMappingConfig must be a object',
      Properties+::: { IdMappingConfig: IdMappingConfig },
    },
    '#withInputReferenceProperties': d.fn('`withInputReferenceProperties` InputReferenceProperties ', [d.arg('InputReferenceProperties', d.T.object)]),
    withInputReferenceProperties(InputReferenceProperties): {
      assert std.isObject(InputReferenceProperties) : 'InputReferenceProperties must be a object',
      Properties+::: { InputReferenceProperties: InputReferenceProperties },
    },
  },
  Membership: {
    '#': d.pkg(
      name='Membership',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents an AWS account that is a part of a collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::Membership Resource
        * CollaborationIdentifier 
        * QueryLogStatus 
      |||,
      args=[
        d.arg('CollaborationIdentifier', 'd.T.string'),
        d.arg('QueryLogStatus', 'd.T.string'),
      ]
    ),
    new(
      CollaborationIdentifier,
      QueryLogStatus,
    ): {
      local base = self,
      Properties: {
        assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
        CollaborationIdentifier: CollaborationIdentifier,
        assert std.isString(QueryLogStatus) : 'QueryLogStatus must be a string',
        QueryLogStatus: QueryLogStatus,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::Membership',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCollaborationArn': d.fn('`withCollaborationArn` CollaborationArn ', [d.arg('CollaborationArn', d.T.string)]),
    withCollaborationArn(CollaborationArn): {
      assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
      Properties+::: { CollaborationArn: CollaborationArn },
    },
    '#withCollaborationCreatorAccountId': d.fn('`withCollaborationCreatorAccountId` CollaborationCreatorAccountId ', [d.arg('CollaborationCreatorAccountId', d.T.string)]),
    withCollaborationCreatorAccountId(CollaborationCreatorAccountId): {
      assert std.isString(CollaborationCreatorAccountId) : 'CollaborationCreatorAccountId must be a string',
      Properties+::: { CollaborationCreatorAccountId: CollaborationCreatorAccountId },
    },
    '#withMembershipIdentifier': d.fn('`withMembershipIdentifier` MembershipIdentifier ', [d.arg('MembershipIdentifier', d.T.string)]),
    withMembershipIdentifier(MembershipIdentifier): {
      assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
      Properties+::: { MembershipIdentifier: MembershipIdentifier },
    },
    '#withDefaultResultConfiguration': d.fn('`withDefaultResultConfiguration` DefaultResultConfiguration ', [d.arg('DefaultResultConfiguration', d.T.object)]),
    withDefaultResultConfiguration(DefaultResultConfiguration): {
      assert std.isObject(DefaultResultConfiguration) : 'DefaultResultConfiguration must be a object',
      Properties+::: { DefaultResultConfiguration: DefaultResultConfiguration },
    },
    '#withPaymentConfiguration': d.fn('`withPaymentConfiguration` PaymentConfiguration ', [d.arg('PaymentConfiguration', d.T.object)]),
    withPaymentConfiguration(PaymentConfiguration): {
      assert std.isObject(PaymentConfiguration) : 'PaymentConfiguration must be a object',
      Properties+::: { PaymentConfiguration: PaymentConfiguration },
    },
  },
  PrivacyBudgetTemplate: {
    '#': d.pkg(
      name='PrivacyBudgetTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CleanRooms.libsonnet',
      help='Represents a privacy budget within a collaboration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CleanRooms::PrivacyBudgetTemplate Resource
        * AutoRefresh 
        * PrivacyBudgetType 
        * Parameters 
        * MembershipIdentifier 
      |||,
      args=[
        d.arg('AutoRefresh', 'd.T.string'),
        d.arg('PrivacyBudgetType', 'd.T.string'),
        d.arg('Parameters', 'd.T.object'),
        d.arg('MembershipIdentifier', 'd.T.string'),
      ]
    ),
    new(
      AutoRefresh,
      PrivacyBudgetType,
      Parameters,
      MembershipIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AutoRefresh) : 'AutoRefresh must be a string',
        assert AutoRefresh == 'CALENDAR_MONTH' || AutoRefresh == 'NONE' : "AutoRefresh must be either 'CALENDAR_MONTH' or 'NONE'",
        AutoRefresh: AutoRefresh,
        assert std.isString(PrivacyBudgetType) : 'PrivacyBudgetType must be a string',
        assert PrivacyBudgetType == 'DIFFERENTIAL_PRIVACY' : "PrivacyBudgetType must be either 'DIFFERENTIAL_PRIVACY'",
        PrivacyBudgetType: PrivacyBudgetType,
        assert std.isObject(Parameters) : 'Parameters must be a object',
        Parameters: Parameters,
        assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
        MembershipIdentifier: MembershipIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::CleanRooms::PrivacyBudgetTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCollaborationArn': d.fn('`withCollaborationArn` CollaborationArn ', [d.arg('CollaborationArn', d.T.string)]),
    withCollaborationArn(CollaborationArn): {
      assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
      Properties+::: { CollaborationArn: CollaborationArn },
    },
    '#withCollaborationIdentifier': d.fn('`withCollaborationIdentifier` CollaborationIdentifier ', [d.arg('CollaborationIdentifier', d.T.string)]),
    withCollaborationIdentifier(CollaborationIdentifier): {
      assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
      Properties+::: { CollaborationIdentifier: CollaborationIdentifier },
    },
    '#withPrivacyBudgetTemplateIdentifier': d.fn('`withPrivacyBudgetTemplateIdentifier` PrivacyBudgetTemplateIdentifier ', [d.arg('PrivacyBudgetTemplateIdentifier', d.T.string)]),
    withPrivacyBudgetTemplateIdentifier(PrivacyBudgetTemplateIdentifier): {
      assert std.isString(PrivacyBudgetTemplateIdentifier) : 'PrivacyBudgetTemplateIdentifier must be a string',
      Properties+::: { PrivacyBudgetTemplateIdentifier: PrivacyBudgetTemplateIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withMembershipArn': d.fn('`withMembershipArn` MembershipArn ', [d.arg('MembershipArn', d.T.string)]),
    withMembershipArn(MembershipArn): {
      assert std.isString(MembershipArn) : 'MembershipArn must be a string',
      Properties+::: { MembershipArn: MembershipArn },
    },
  },
}
