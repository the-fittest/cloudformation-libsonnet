local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  GatewayRoute: {
    '#': d.pkg(
      name='GatewayRoute',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::GatewayRoute',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::GatewayRoute Resource
        * MeshName 
        * VirtualGatewayName 
        * Spec 
      |||,
      args=[
        d.arg('MeshName', 'd.T.string'),
        d.arg('VirtualGatewayName', 'd.T.string'),
        d.arg('Spec', 'd.T.object'),
      ]
    ),
    new(
      MeshName,
      VirtualGatewayName,
      Spec,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MeshName) : 'MeshName must be a string',
        MeshName: MeshName,
        assert std.isString(VirtualGatewayName) : 'VirtualGatewayName must be a string',
        VirtualGatewayName: VirtualGatewayName,
        assert std.isObject(Spec) : 'Spec must be a object',
        Spec: Spec,
      },
      DependsOn:: [],
      Type: 'AWS::AppMesh::GatewayRoute',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
    },
    '#withGatewayRouteName': d.fn('`withGatewayRouteName` GatewayRouteName ', [d.arg('GatewayRouteName', d.T.string)]),
    withGatewayRouteName(GatewayRouteName): {
      assert std.isString(GatewayRouteName) : 'GatewayRouteName must be a string',
      Properties+::: { GatewayRouteName: GatewayRouteName },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Mesh: {
    '#': d.pkg(
      name='Mesh',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::Mesh',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::Mesh Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AppMesh::Mesh',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withMeshName': d.fn('`withMeshName` MeshName ', [d.arg('MeshName', d.T.string)]),
    withMeshName(MeshName): {
      assert std.isString(MeshName) : 'MeshName must be a string',
      Properties+::: { MeshName: MeshName },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
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
    '#withSpec': d.fn('`withSpec` Spec ', [d.arg('Spec', d.T.object)]),
    withSpec(Spec): {
      assert std.isObject(Spec) : 'Spec must be a object',
      Properties+::: { Spec: Spec },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Route: {
    '#': d.pkg(
      name='Route',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::Route',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::Route Resource
        * MeshName 
        * VirtualRouterName 
        * Spec 
      |||,
      args=[
        d.arg('MeshName', 'd.T.string'),
        d.arg('VirtualRouterName', 'd.T.string'),
        d.arg('Spec', 'd.T.object'),
      ]
    ),
    new(
      MeshName,
      VirtualRouterName,
      Spec,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MeshName) : 'MeshName must be a string',
        MeshName: MeshName,
        assert std.isString(VirtualRouterName) : 'VirtualRouterName must be a string',
        VirtualRouterName: VirtualRouterName,
        assert std.isObject(Spec) : 'Spec must be a object',
        Spec: Spec,
      },
      DependsOn:: [],
      Type: 'AWS::AppMesh::Route',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
    },
    '#withRouteName': d.fn('`withRouteName` RouteName ', [d.arg('RouteName', d.T.string)]),
    withRouteName(RouteName): {
      assert std.isString(RouteName) : 'RouteName must be a string',
      Properties+::: { RouteName: RouteName },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VirtualGateway: {
    '#': d.pkg(
      name='VirtualGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::VirtualGateway',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::VirtualGateway Resource
        * MeshName 
        * Spec 
      |||,
      args=[
        d.arg('MeshName', 'd.T.string'),
        d.arg('Spec', 'd.T.object'),
      ]
    ),
    new(
      MeshName,
      Spec,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MeshName) : 'MeshName must be a string',
        MeshName: MeshName,
        assert std.isObject(Spec) : 'Spec must be a object',
        Spec: Spec,
      },
      DependsOn:: [],
      Type: 'AWS::AppMesh::VirtualGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withVirtualGatewayName': d.fn('`withVirtualGatewayName` VirtualGatewayName ', [d.arg('VirtualGatewayName', d.T.string)]),
    withVirtualGatewayName(VirtualGatewayName): {
      assert std.isString(VirtualGatewayName) : 'VirtualGatewayName must be a string',
      Properties+::: { VirtualGatewayName: VirtualGatewayName },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VirtualNode: {
    '#': d.pkg(
      name='VirtualNode',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::VirtualNode',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::VirtualNode Resource
        * MeshName 
        * Spec 
      |||,
      args=[
        d.arg('MeshName', 'd.T.string'),
        d.arg('Spec', 'd.T.object'),
      ]
    ),
    new(
      MeshName,
      Spec,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MeshName) : 'MeshName must be a string',
        MeshName: MeshName,
        assert std.isObject(Spec) : 'Spec must be a object',
        Spec: Spec,
      },
      DependsOn:: [],
      Type: 'AWS::AppMesh::VirtualNode',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
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
    '#withVirtualNodeName': d.fn('`withVirtualNodeName` VirtualNodeName ', [d.arg('VirtualNodeName', d.T.string)]),
    withVirtualNodeName(VirtualNodeName): {
      assert std.isString(VirtualNodeName) : 'VirtualNodeName must be a string',
      Properties+::: { VirtualNodeName: VirtualNodeName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VirtualRouter: {
    '#': d.pkg(
      name='VirtualRouter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::VirtualRouter',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::VirtualRouter Resource
        * MeshName 
        * Spec 
      |||,
      args=[
        d.arg('MeshName', 'd.T.string'),
        d.arg('Spec', 'd.T.object'),
      ]
    ),
    new(
      MeshName,
      Spec,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MeshName) : 'MeshName must be a string',
        MeshName: MeshName,
        assert std.isObject(Spec) : 'Spec must be a object',
        Spec: Spec,
      },
      DependsOn:: [],
      Type: 'AWS::AppMesh::VirtualRouter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withVirtualRouterName': d.fn('`withVirtualRouterName` VirtualRouterName ', [d.arg('VirtualRouterName', d.T.string)]),
    withVirtualRouterName(VirtualRouterName): {
      assert std.isString(VirtualRouterName) : 'VirtualRouterName must be a string',
      Properties+::: { VirtualRouterName: VirtualRouterName },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  VirtualService: {
    '#': d.pkg(
      name='VirtualService',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppMesh.libsonnet',
      help='Resource Type definition for AWS::AppMesh::VirtualService',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppMesh::VirtualService Resource
        * MeshName 
        * VirtualServiceName 
        * Spec 
      |||,
      args=[
        d.arg('MeshName', 'd.T.string'),
        d.arg('VirtualServiceName', 'd.T.string'),
        d.arg('Spec', 'd.T.object'),
      ]
    ),
    new(
      MeshName,
      VirtualServiceName,
      Spec,
    ): {
      local base = self,
      Properties: {
        assert std.isString(MeshName) : 'MeshName must be a string',
        MeshName: MeshName,
        assert std.isString(VirtualServiceName) : 'VirtualServiceName must be a string',
        VirtualServiceName: VirtualServiceName,
        assert std.isObject(Spec) : 'Spec must be a object',
        Spec: Spec,
      },
      DependsOn:: [],
      Type: 'AWS::AppMesh::VirtualService',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUid': d.fn('`withUid` Uid ', [d.arg('Uid', d.T.string)]),
    withUid(Uid): {
      assert std.isString(Uid) : 'Uid must be a string',
      Properties+::: { Uid: Uid },
    },
    '#withMeshOwner': d.fn('`withMeshOwner` MeshOwner ', [d.arg('MeshOwner', d.T.string)]),
    withMeshOwner(MeshOwner): {
      assert std.isString(MeshOwner) : 'MeshOwner must be a string',
      Properties+::: { MeshOwner: MeshOwner },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
