local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessPoint: {
    '#': d.pkg(
      name='AccessPoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3Outposts.libsonnet',
      help='Resource Type Definition for AWS::S3Outposts::AccessPoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3Outposts::AccessPoint Resource
        * Bucket The Amazon Resource Name (ARN) of the bucket you want to associate this AccessPoint with.
        * Name A name for the AccessPoint.
        * VpcConfiguration Virtual Private Cloud (VPC) from which requests can be made to the AccessPoint.
      |||,
      args=[
        d.arg('Bucket', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('VpcConfiguration', 'd.T.object'),
      ]
    ),
    new(
      Bucket,
      Name,
      VpcConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Bucket) : 'Bucket must be a string',
        Bucket: Bucket,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(VpcConfiguration) : 'VpcConfiguration must be a object',
        VpcConfiguration: VpcConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::S3Outposts::AccessPoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy', d.T.object)]),
    withPolicy(Policy): {
      assert std.isObject(Policy) : 'Policy must be a object',
      Properties+::: { Policy: Policy },
    },
  },
  Bucket: {
    '#': d.pkg(
      name='Bucket',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3Outposts.libsonnet',
      help='Resource Type Definition for AWS::S3Outposts::Bucket',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3Outposts::Bucket Resource
        * BucketName A name for the bucket.
        * OutpostId The id of the customer outpost on which the bucket resides.
      |||,
      args=[
        d.arg('BucketName', 'd.T.string'),
        d.arg('OutpostId', 'd.T.string'),
      ]
    ),
    new(
      BucketName,
      OutpostId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BucketName) : 'BucketName must be a string',
        BucketName: BucketName,
        assert std.isString(OutpostId) : 'OutpostId must be a string',
        OutpostId: OutpostId,
      },
      DependsOn:: [],
      Type: 'AWS::S3Outposts::Bucket',
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
    '#withLifecycleConfiguration': d.fn('`withLifecycleConfiguration` LifecycleConfiguration ', [d.arg('LifecycleConfiguration', d.T.object)]),
    withLifecycleConfiguration(LifecycleConfiguration): {
      assert std.isObject(LifecycleConfiguration) : 'LifecycleConfiguration must be a object',
      Properties+::: { LifecycleConfiguration: LifecycleConfiguration },
    },
  },
  BucketPolicy: {
    '#': d.pkg(
      name='BucketPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3Outposts.libsonnet',
      help='Resource Type Definition for AWS::S3Outposts::BucketPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3Outposts::BucketPolicy Resource
        * Bucket The Amazon Resource Name (ARN) of the specified bucket.
        * PolicyDocument A policy document containing permissions to add to the specified bucket.
      |||,
      args=[
        d.arg('Bucket', 'd.T.string'),
        d.arg('PolicyDocument', 'd.T.object'),
      ]
    ),
    new(
      Bucket,
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Bucket) : 'Bucket must be a string',
        Bucket: Bucket,
        assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::S3Outposts::BucketPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Endpoint: {
    '#': d.pkg(
      name='Endpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3Outposts.libsonnet',
      help='Resource Type Definition for AWS::S3Outposts::Endpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3Outposts::Endpoint Resource
        * OutpostId The id of the customer outpost on which the bucket resides.
        * SecurityGroupId The ID of the security group to use with the endpoint.
        * SubnetId The ID of the subnet in the selected VPC. The subnet must belong to the Outpost.
      |||,
      args=[
        d.arg('OutpostId', 'd.T.string'),
        d.arg('SecurityGroupId', 'd.T.string'),
        d.arg('SubnetId', 'd.T.string'),
      ]
    ),
    new(
      OutpostId,
      SecurityGroupId,
      SubnetId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(OutpostId) : 'OutpostId must be a string',
        OutpostId: OutpostId,
        assert std.isString(SecurityGroupId) : 'SecurityGroupId must be a string',
        SecurityGroupId: SecurityGroupId,
        assert std.isString(SubnetId) : 'SubnetId must be a string',
        SubnetId: SubnetId,
      },
      DependsOn:: [],
      Type: 'AWS::S3Outposts::Endpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCidrBlock': d.fn('`withCidrBlock` CidrBlock ', [d.arg('CidrBlock', d.T.string)]),
    withCidrBlock(CidrBlock): {
      assert std.isString(CidrBlock) : 'CidrBlock must be a string',
      Properties+::: { CidrBlock: CidrBlock },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withNetworkInterfaces': d.fn('`withNetworkInterfaces` NetworkInterfaces ', [d.arg('NetworkInterfaces', d.T.array)]),
    withNetworkInterfaces(NetworkInterfaces): {
      assert std.isArray(NetworkInterfaces) : 'NetworkInterfaces must be a array',
      Properties+::: { NetworkInterfaces: NetworkInterfaces },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'Available' || Status == 'Pending' || Status == 'Deleting' || Status == 'Create_Failed' || Status == 'Delete_Failed' : "Status must be either 'Available' or 'Pending' or 'Deleting' or 'Create_Failed' or 'Delete_Failed'",
      Properties+::: { Status: Status },
    },
    '#withAccessType': d.fn('`withAccessType` AccessType ', [d.arg('AccessType', d.T.string)]),
    withAccessType(AccessType): {
      assert std.isString(AccessType) : 'AccessType must be a string',
      assert AccessType == 'CustomerOwnedIp' || AccessType == 'Private' : "AccessType must be either 'CustomerOwnedIp' or 'Private'",
      Properties+::: { AccessType: AccessType },
    },
    '#withCustomerOwnedIpv4Pool': d.fn('`withCustomerOwnedIpv4Pool` CustomerOwnedIpv4Pool ', [d.arg('CustomerOwnedIpv4Pool', d.T.string)]),
    withCustomerOwnedIpv4Pool(CustomerOwnedIpv4Pool): {
      assert std.isString(CustomerOwnedIpv4Pool) : 'CustomerOwnedIpv4Pool must be a string',
      Properties+::: { CustomerOwnedIpv4Pool: CustomerOwnedIpv4Pool },
    },
    '#withFailedReason': d.fn('`withFailedReason` FailedReason ', [d.arg('FailedReason', d.T.object)]),
    withFailedReason(FailedReason): {
      assert std.isObject(FailedReason) : 'FailedReason must be a object',
      Properties+::: { FailedReason: FailedReason },
    },
  },
}
