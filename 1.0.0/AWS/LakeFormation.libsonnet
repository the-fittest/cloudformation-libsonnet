local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DataCellsFilter: {
    '#': d.pkg(
      name='DataCellsFilter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='A resource schema representing a Lake Formation Data Cells Filter.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::DataCellsFilter Resource
        * TableCatalogId The Catalog Id of the Table on which to create a Data Cells Filter.
        * DatabaseName The name of the Database that the Table resides in.
        * TableName The name of the Table to create a Data Cells Filter for.
        * Name The desired name of the Data Cells Filter.
      |||,
      args=[
        d.arg('TableCatalogId', 'd.T.string'),
        d.arg('DatabaseName', 'd.T.string'),
        d.arg('TableName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      TableCatalogId,
      DatabaseName,
      TableName,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TableCatalogId) : 'TableCatalogId must be a string',
        TableCatalogId: TableCatalogId,
        assert std.isString(DatabaseName) : 'DatabaseName must be a string',
        DatabaseName: DatabaseName,
        assert std.isString(TableName) : 'TableName must be a string',
        TableName: TableName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::LakeFormation::DataCellsFilter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRowFilter': d.fn('`withRowFilter` RowFilter ', [d.arg('RowFilter', d.T.object)]),
    withRowFilter(RowFilter): {
      assert std.isObject(RowFilter) : 'RowFilter must be a object',
      Properties+::: { RowFilter: RowFilter },
    },
    '#withColumnNames': d.fn('`withColumnNames` ColumnNames ', [d.arg('ColumnNames', d.T.array)]),
    withColumnNames(ColumnNames): {
      assert std.isArray(ColumnNames) : 'ColumnNames must be a array',
      Properties+::: { ColumnNames: ColumnNames },
    },
    '#withColumnWildcard': d.fn('`withColumnWildcard` ColumnWildcard ', [d.arg('ColumnWildcard', d.T.object)]),
    withColumnWildcard(ColumnWildcard): {
      assert std.isObject(ColumnWildcard) : 'ColumnWildcard must be a object',
      Properties+::: { ColumnWildcard: ColumnWildcard },
    },
  },
  DataLakeSettings: {
    '#': d.pkg(
      name='DataLakeSettings',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='Resource Type definition for AWS::LakeFormation::DataLakeSettings',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::DataLakeSettings Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::LakeFormation::DataLakeSettings',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAllowExternalDataFiltering': d.fn('`withAllowExternalDataFiltering` AllowExternalDataFiltering ', [d.arg('AllowExternalDataFiltering', d.T.boolean)]),
    withAllowExternalDataFiltering(AllowExternalDataFiltering): {
      assert std.isBoolean(AllowExternalDataFiltering) : 'AllowExternalDataFiltering must be a boolean',
      Properties+::: { AllowExternalDataFiltering: AllowExternalDataFiltering },
    },
    '#withExternalDataFilteringAllowList': d.fn('`withExternalDataFilteringAllowList` ExternalDataFilteringAllowList ', [d.arg('ExternalDataFilteringAllowList', d.T.object)]),
    withExternalDataFilteringAllowList(ExternalDataFilteringAllowList): {
      assert std.isObject(ExternalDataFilteringAllowList) : 'ExternalDataFilteringAllowList must be a object',
      Properties+::: { ExternalDataFilteringAllowList: ExternalDataFilteringAllowList },
    },
    '#withCreateTableDefaultPermissions': d.fn('`withCreateTableDefaultPermissions` CreateTableDefaultPermissions ', [d.arg('CreateTableDefaultPermissions', d.T.object)]),
    withCreateTableDefaultPermissions(CreateTableDefaultPermissions): {
      assert std.isObject(CreateTableDefaultPermissions) : 'CreateTableDefaultPermissions must be a object',
      Properties+::: { CreateTableDefaultPermissions: CreateTableDefaultPermissions },
    },
    '#withMutationType': d.fn('`withMutationType` MutationType ', [d.arg('MutationType', d.T.string)]),
    withMutationType(MutationType): {
      assert std.isString(MutationType) : 'MutationType must be a string',
      Properties+::: { MutationType: MutationType },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withAllowFullTableExternalDataAccess': d.fn('`withAllowFullTableExternalDataAccess` AllowFullTableExternalDataAccess ', [d.arg('AllowFullTableExternalDataAccess', d.T.boolean)]),
    withAllowFullTableExternalDataAccess(AllowFullTableExternalDataAccess): {
      assert std.isBoolean(AllowFullTableExternalDataAccess) : 'AllowFullTableExternalDataAccess must be a boolean',
      Properties+::: { AllowFullTableExternalDataAccess: AllowFullTableExternalDataAccess },
    },
    '#withAdmins': d.fn('`withAdmins` Admins ', [d.arg('Admins', d.T.object)]),
    withAdmins(Admins): {
      assert std.isObject(Admins) : 'Admins must be a object',
      Properties+::: { Admins: Admins },
    },
    '#withCreateDatabaseDefaultPermissions': d.fn('`withCreateDatabaseDefaultPermissions` CreateDatabaseDefaultPermissions ', [d.arg('CreateDatabaseDefaultPermissions', d.T.object)]),
    withCreateDatabaseDefaultPermissions(CreateDatabaseDefaultPermissions): {
      assert std.isObject(CreateDatabaseDefaultPermissions) : 'CreateDatabaseDefaultPermissions must be a object',
      Properties+::: { CreateDatabaseDefaultPermissions: CreateDatabaseDefaultPermissions },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAuthorizedSessionTagValueList': d.fn('`withAuthorizedSessionTagValueList` AuthorizedSessionTagValueList ', [d.arg('AuthorizedSessionTagValueList', d.T.array)]),
    withAuthorizedSessionTagValueList(AuthorizedSessionTagValueList): {
      assert std.isArray(AuthorizedSessionTagValueList) : 'AuthorizedSessionTagValueList must be a array',
      Properties+::: { AuthorizedSessionTagValueList: AuthorizedSessionTagValueList },
    },
    '#withTrustedResourceOwners': d.fn('`withTrustedResourceOwners` TrustedResourceOwners ', [d.arg('TrustedResourceOwners', d.T.array)]),
    withTrustedResourceOwners(TrustedResourceOwners): {
      assert std.isArray(TrustedResourceOwners) : 'TrustedResourceOwners must be a array',
      Properties+::: { TrustedResourceOwners: TrustedResourceOwners },
    },
  },
  Permissions: {
    '#': d.pkg(
      name='Permissions',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='Resource Type definition for AWS::LakeFormation::Permissions',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::Permissions Resource
        * DataLakePrincipal 
        * Resource 
      |||,
      args=[
        d.arg('DataLakePrincipal', 'd.T.object'),
        d.arg('Resource', 'd.T.object'),
      ]
    ),
    new(
      DataLakePrincipal,
      Resource,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DataLakePrincipal) : 'DataLakePrincipal must be a object',
        DataLakePrincipal: DataLakePrincipal,
        assert std.isObject(Resource) : 'Resource must be a object',
        Resource: Resource,
      },
      DependsOn:: [],
      Type: 'AWS::LakeFormation::Permissions',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPermissions': d.fn('`withPermissions` Permissions ', [d.arg('Permissions', d.T.array)]),
    withPermissions(Permissions): {
      assert std.isArray(Permissions) : 'Permissions must be a array',
      Properties+::: { Permissions: Permissions },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPermissionsWithGrantOption': d.fn('`withPermissionsWithGrantOption` PermissionsWithGrantOption ', [d.arg('PermissionsWithGrantOption', d.T.array)]),
    withPermissionsWithGrantOption(PermissionsWithGrantOption): {
      assert std.isArray(PermissionsWithGrantOption) : 'PermissionsWithGrantOption must be a array',
      Properties+::: { PermissionsWithGrantOption: PermissionsWithGrantOption },
    },
  },
  PrincipalPermissions: {
    '#': d.pkg(
      name='PrincipalPermissions',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='The AWS::LakeFormation::PrincipalPermissions resource represents the permissions that a principal has on a GLUDC resource (such as GLUlong databases or GLUlong tables). When you create a PrincipalPermissions resource, the permissions are granted via the LFlong GrantPermissions API operation. When you delete a PrincipalPermissions resource, the permissions on principal-resource pair are revoked via the LFlong RevokePermissions API operation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::PrincipalPermissions Resource
        * Principal The principal to be granted a permission.
        * Resource The resource to be granted or revoked permissions.
        * Permissions The permissions granted or revoked.
        * PermissionsWithGrantOption Indicates the ability to grant permissions (as a subset of permissions granted).
      |||,
      args=[
        d.arg('Principal', 'd.T.object'),
        d.arg('Resource', 'd.T.object'),
        d.arg('Permissions', 'd.T.array'),
        d.arg('PermissionsWithGrantOption', 'd.T.array'),
      ]
    ),
    new(
      Principal,
      Resource,
      Permissions,
      PermissionsWithGrantOption,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Principal) : 'Principal must be a object',
        Principal: Principal,
        assert std.isObject(Resource) : 'Resource must be a object',
        Resource: Resource,
        assert std.isArray(Permissions) : 'Permissions must be a array',
        Permissions: Permissions,
        assert std.isArray(PermissionsWithGrantOption) : 'PermissionsWithGrantOption must be a array',
        PermissionsWithGrantOption: PermissionsWithGrantOption,
      },
      DependsOn:: [],
      Type: 'AWS::LakeFormation::PrincipalPermissions',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCatalog': d.fn('`withCatalog` Catalog ', [d.arg('Catalog', d.T.string)]),
    withCatalog(Catalog): {
      assert std.isString(Catalog) : 'Catalog must be a string',
      Properties+::: { Catalog: Catalog },
    },
    '#withPrincipalIdentifier': d.fn('`withPrincipalIdentifier` PrincipalIdentifier ', [d.arg('PrincipalIdentifier', d.T.string)]),
    withPrincipalIdentifier(PrincipalIdentifier): {
      assert std.isString(PrincipalIdentifier) : 'PrincipalIdentifier must be a string',
      Properties+::: { PrincipalIdentifier: PrincipalIdentifier },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
  },
  Resource: {
    '#': d.pkg(
      name='Resource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='Resource Type definition for AWS::LakeFormation::Resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::Resource Resource
        * ResourceArn 
        * UseServiceLinkedRole 
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('UseServiceLinkedRole', 'd.T.boolean'),
      ]
    ),
    new(
      ResourceArn,
      UseServiceLinkedRole,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        assert std.isBoolean(UseServiceLinkedRole) : 'UseServiceLinkedRole must be a boolean',
        UseServiceLinkedRole: UseServiceLinkedRole,
      },
      DependsOn:: [],
      Type: 'AWS::LakeFormation::Resource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withWithFederation': d.fn('`withWithFederation` WithFederation ', [d.arg('WithFederation', d.T.boolean)]),
    withWithFederation(WithFederation): {
      assert std.isBoolean(WithFederation) : 'WithFederation must be a boolean',
      Properties+::: { WithFederation: WithFederation },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withHybridAccessEnabled': d.fn('`withHybridAccessEnabled` HybridAccessEnabled ', [d.arg('HybridAccessEnabled', d.T.boolean)]),
    withHybridAccessEnabled(HybridAccessEnabled): {
      assert std.isBoolean(HybridAccessEnabled) : 'HybridAccessEnabled must be a boolean',
      Properties+::: { HybridAccessEnabled: HybridAccessEnabled },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
  },
  Tag: {
    '#': d.pkg(
      name='Tag',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='A resource schema representing a Lake Formation Tag.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::Tag Resource
        * TagKey The key-name for the LF-tag.
        * TagValues A list of possible values an attribute can take.
      |||,
      args=[
        d.arg('TagKey', 'd.T.string'),
        d.arg('TagValues', 'd.T.array'),
      ]
    ),
    new(
      TagKey,
      TagValues,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TagKey) : 'TagKey must be a string',
        TagKey: TagKey,
        assert std.isArray(TagValues) : 'TagValues must be a array',
        TagValues: TagValues,
      },
      DependsOn:: [],
      Type: 'AWS::LakeFormation::Tag',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCatalogId': d.fn('`withCatalogId` CatalogId ', [d.arg('CatalogId', d.T.string)]),
    withCatalogId(CatalogId): {
      assert std.isString(CatalogId) : 'CatalogId must be a string',
      Properties+::: { CatalogId: CatalogId },
    },
  },
  TagAssociation: {
    '#': d.pkg(
      name='TagAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/LakeFormation.libsonnet',
      help='A resource schema representing a Lake Formation Tag Association. While tag associations are not explicit Lake Formation resources, this CloudFormation resource can be used to associate tags with Lake Formation entities.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::LakeFormation::TagAssociation Resource
        * Resource Resource to tag with the Lake Formation Tags
        * LFTags List of Lake Formation Tags to associate with the Lake Formation Resource
      |||,
      args=[
        d.arg('Resource', 'd.T.object'),
        d.arg('LFTags', 'd.T.array'),
      ]
    ),
    new(
      Resource,
      LFTags,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Resource) : 'Resource must be a object',
        Resource: Resource,
        assert std.isArray(LFTags) : 'LFTags must be a array',
        LFTags: LFTags,
      },
      DependsOn:: [],
      Type: 'AWS::LakeFormation::TagAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withTagsIdentifier': d.fn('`withTagsIdentifier` TagsIdentifier ', [d.arg('TagsIdentifier', d.T.string)]),
    withTagsIdentifier(TagsIdentifier): {
      assert std.isString(TagsIdentifier) : 'TagsIdentifier must be a string',
      Properties+::: { TagsIdentifier: TagsIdentifier },
    },
  },
}
