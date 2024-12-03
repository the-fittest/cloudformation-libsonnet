local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alias: {
    '#': d.pkg(
      name='Alias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KMS.libsonnet',
      help='The AWS::KMS::Alias resource specifies a display name for a [KMS key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys). You can use an alias to identify a KMS key in the KMS console, in the [DescribeKey](https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html) operation, and in [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations), such as [Decrypt](https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html) and [GenerateDataKey](https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKey.html).Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see [ABAC for](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in the *Developer Guide*.Using an alias to refer to a KMS key can help you simplify key management. For example, an alias in your code can be associated with different KMS keys in different AWS-Regions. For more information, see [Using aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html) in the *Developer Guide*. When specifying an alias, observe the following rules.+Each alias is associated with one KMS key, but multiple aliases can be associated with the same KMS key.+The alias and its associated KMS key must be in the same AWS-account and Region.+The alias name must be unique in the AWS-account and Region. However, you can create aliases with the same name in different AWS-Regions. For example, you can have an alias/projectKey in multiple Regions, each of which is associated with a KMS key in its Region.+Each alias name must begin with alias/ followed by a name, such as alias/exampleKey. The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with alias/aws/. That alias name prefix is reserved for [](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).*Regions* KMS CloudFormation resources are available in all AWS-Regions in which KMS and CFN are supported.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KMS::Alias Resource
        * AliasName Specifies the alias name. This value must begin with alias/ followed by a name, such as alias/ExampleAlias. If you change the value of the AliasName property, the existing alias is deleted and a new alias is created for the specified KMS key. This change can disrupt applications that use the alias. It can also allow or deny access to a KMS key affected by attribute-based access control (ABAC).The alias must be string of 1-256 characters. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with alias/aws/. The alias/aws/ prefix is reserved for [](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
        * TargetKeyId Associates the alias with the specified [](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk). The KMS key must be in the same AWS-account and Region. A valid key ID is required. If you supply a null or empty string value, this operation returns an error. For help finding the key ID and ARN, see [Finding the key ID and ARN](https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn) in the *Developer Guide*. Specify the key ID or the key ARN of the KMS key. For example:+Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab +Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab  To get the key ID and key ARN for a KMS key, use [ListKeys](https://docs.aws.amazon.com/kms/latest/APIReference/API_ListKeys.html) or [DescribeKey](https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html).
      |||,
      args=[
        d.arg('AliasName', 'd.T.string'),
        d.arg('TargetKeyId', 'd.T.string'),
      ]
    ),
    new(
      AliasName,
      TargetKeyId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AliasName) : 'AliasName must be a string',
        AliasName: AliasName,
        assert std.isString(TargetKeyId) : 'TargetKeyId must be a string',
        TargetKeyId: TargetKeyId,
      },
      DependsOn:: [],
      Type: 'AWS::KMS::Alias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Key: {
    '#': d.pkg(
      name='Key',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KMS.libsonnet',
      help='The AWS::KMS::Key resource specifies an [KMS key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys) in KMSlong. You can use this resource to create symmetric encryption KMS keys, asymmetric KMS keys for encryption or signing, and symmetric HMAC KMS keys. You can use AWS::KMS::Key to create [multi-Region primary keys](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-primary-key) of all supported types. To replicate a multi-Region key, use the AWS::KMS::ReplicaKey resource.If you change the value of the KeySpec, KeyUsage, Origin, or MultiRegion properties of an existing KMS key, the update request fails, regardless of the value of the [UpdateReplacePolicy attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatereplacepolicy.html). This prevents you from accidentally deleting a KMS key by changing any of its immutable property values.KMS replaced the term *customer master key (CMK)* with ** and *KMS key*. The concept has not changed. To prevent breaking changes, KMS is keeping some variations of this term.You can use symmetric encryption KMS keys to encrypt and decrypt small amounts of data, but they are more commonly used to generate data keys and data key pairs. You can also use a symmetric encryption KMS key to encrypt data stored in AWS services that are [integrated with](https://docs.aws.amazon.com//kms/features/#AWS_Service_Integration). For more information, see [Symmetric encryption KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks) in the *Developer Guide*. You can use asymmetric KMS keys to encrypt and decrypt data or sign messages and verify signatures. To create an asymmetric key, you must specify an asymmetric KeySpec value and a KeyUsage value. For details, see [Asymmetric keys in](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html) in the *Developer Guide*. You can use HMAC KMS keys (which are also symmetric keys) to generate and verify hash-based message authentication codes. To create an HMAC key, you must specify an HMAC KeySpec value and a KeyUsage value of GENERATE_VERIFY_MAC. For details, see [HMAC keys in](https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html) in the *Developer Guide*. You can also create symmetric encryption, asymmetric, and HMAC multi-Region primary keys. To create a multi-Region primary key, set the MultiRegion property to true. For information about multi-Region keys, see [Multi-Region keys in](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html) in the *Developer Guide*. You cannot use the AWS::KMS::Key resource to specify a KMS key with [imported key material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html) or a KMS key in a [custom key store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).*Regions* KMS CloudFormation resources are available in all Regions in which KMS and CFN are supported. You can use the AWS::KMS::Key resource to create and manage all KMS key types that are supported in a Region.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KMS::Key Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::KMS::Key',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withEnableKeyRotation': d.fn('`withEnableKeyRotation` EnableKeyRotation ', [d.arg('EnableKeyRotation', d.T.boolean)]),
    withEnableKeyRotation(EnableKeyRotation): {
      assert std.isBoolean(EnableKeyRotation) : 'EnableKeyRotation must be a boolean',
      Properties+::: { EnableKeyRotation: EnableKeyRotation },
    },
    '#withKeyPolicy': d.fn('`withKeyPolicy` KeyPolicy ', [d.arg('KeyPolicy')]),
    withKeyPolicy(KeyPolicy): {
      // Type: object,string
      Properties+::: { KeyPolicy: KeyPolicy },
    },
    '#withKeyUsage': d.fn('`withKeyUsage` KeyUsage ', [d.arg('KeyUsage', d.T.string)]),
    withKeyUsage(KeyUsage): {
      assert std.isString(KeyUsage) : 'KeyUsage must be a string',
      assert KeyUsage == 'ENCRYPT_DECRYPT' || KeyUsage == 'SIGN_VERIFY' || KeyUsage == 'GENERATE_VERIFY_MAC' || KeyUsage == 'KEY_AGREEMENT' : "KeyUsage must be either 'ENCRYPT_DECRYPT' or 'SIGN_VERIFY' or 'GENERATE_VERIFY_MAC' or 'KEY_AGREEMENT'",
      Properties+::: { KeyUsage: KeyUsage },
    },
    '#withOrigin': d.fn('`withOrigin` Origin ', [d.arg('Origin', d.T.string)]),
    withOrigin(Origin): {
      assert std.isString(Origin) : 'Origin must be a string',
      assert Origin == 'AWS_KMS' || Origin == 'EXTERNAL' : "Origin must be either 'AWS_KMS' or 'EXTERNAL'",
      Properties+::: { Origin: Origin },
    },
    '#withKeySpec': d.fn('`withKeySpec` KeySpec ', [d.arg('KeySpec', d.T.string)]),
    withKeySpec(KeySpec): {
      assert std.isString(KeySpec) : 'KeySpec must be a string',
      assert KeySpec == 'SYMMETRIC_DEFAULT' || KeySpec == 'RSA_2048' || KeySpec == 'RSA_3072' || KeySpec == 'RSA_4096' || KeySpec == 'ECC_NIST_P256' || KeySpec == 'ECC_NIST_P384' || KeySpec == 'ECC_NIST_P521' || KeySpec == 'ECC_SECG_P256K1' || KeySpec == 'HMAC_224' || KeySpec == 'HMAC_256' || KeySpec == 'HMAC_384' || KeySpec == 'HMAC_512' || KeySpec == 'SM2' : "KeySpec must be either 'SYMMETRIC_DEFAULT' or 'RSA_2048' or 'RSA_3072' or 'RSA_4096' or 'ECC_NIST_P256' or 'ECC_NIST_P384' or 'ECC_NIST_P521' or 'ECC_SECG_P256K1' or 'HMAC_224' or 'HMAC_256' or 'HMAC_384' or 'HMAC_512' or 'SM2'",
      Properties+::: { KeySpec: KeySpec },
    },
    '#withMultiRegion': d.fn('`withMultiRegion` MultiRegion ', [d.arg('MultiRegion', d.T.boolean)]),
    withMultiRegion(MultiRegion): {
      assert std.isBoolean(MultiRegion) : 'MultiRegion must be a boolean',
      Properties+::: { MultiRegion: MultiRegion },
    },
    '#withPendingWindowInDays': d.fn('`withPendingWindowInDays` PendingWindowInDays ', [d.arg('PendingWindowInDays', d.T.integer)]),
    withPendingWindowInDays(PendingWindowInDays): {
      assert std.isNumber(PendingWindowInDays) : 'PendingWindowInDays must be a integer',
      Properties+::: { PendingWindowInDays: PendingWindowInDays },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withKeyId': d.fn('`withKeyId` KeyId ', [d.arg('KeyId', d.T.string)]),
    withKeyId(KeyId): {
      assert std.isString(KeyId) : 'KeyId must be a string',
      Properties+::: { KeyId: KeyId },
    },
    '#withBypassPolicyLockoutSafetyCheck': d.fn('`withBypassPolicyLockoutSafetyCheck` BypassPolicyLockoutSafetyCheck ', [d.arg('BypassPolicyLockoutSafetyCheck', d.T.boolean)]),
    withBypassPolicyLockoutSafetyCheck(BypassPolicyLockoutSafetyCheck): {
      assert std.isBoolean(BypassPolicyLockoutSafetyCheck) : 'BypassPolicyLockoutSafetyCheck must be a boolean',
      Properties+::: { BypassPolicyLockoutSafetyCheck: BypassPolicyLockoutSafetyCheck },
    },
    '#withRotationPeriodInDays': d.fn('`withRotationPeriodInDays` RotationPeriodInDays ', [d.arg('RotationPeriodInDays', d.T.integer)]),
    withRotationPeriodInDays(RotationPeriodInDays): {
      assert std.isNumber(RotationPeriodInDays) : 'RotationPeriodInDays must be a integer',
      Properties+::: { RotationPeriodInDays: RotationPeriodInDays },
    },
  },
  ReplicaKey: {
    '#': d.pkg(
      name='ReplicaKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KMS.libsonnet',
      help='The AWS::KMS::ReplicaKey resource specifies a multi-region replica AWS KMS key in AWS Key Management Service (AWS KMS).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KMS::ReplicaKey Resource
        * PrimaryKeyArn Identifies the primary AWS KMS key to create a replica of. Specify the Amazon Resource Name (ARN) of the AWS KMS key. You cannot specify an alias or key ID. For help finding the ARN, see Finding the Key ID and ARN in the AWS Key Management Service Developer Guide.
        * KeyPolicy The key policy that authorizes use of the AWS KMS key. The key policy must observe the following rules.
      |||,
      args=[
        d.arg('PrimaryKeyArn', 'd.T.string'),
        d.arg('KeyPolicy', ''),
      ]
    ),
    new(
      PrimaryKeyArn,
      KeyPolicy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PrimaryKeyArn) : 'PrimaryKeyArn must be a string',
        PrimaryKeyArn: PrimaryKeyArn,
        // Type: object,string
        KeyPolicy: KeyPolicy,
      },
      DependsOn:: [],
      Type: 'AWS::KMS::ReplicaKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withPendingWindowInDays': d.fn('`withPendingWindowInDays` PendingWindowInDays ', [d.arg('PendingWindowInDays', d.T.integer)]),
    withPendingWindowInDays(PendingWindowInDays): {
      assert std.isNumber(PendingWindowInDays) : 'PendingWindowInDays must be a integer',
      Properties+::: { PendingWindowInDays: PendingWindowInDays },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withKeyId': d.fn('`withKeyId` KeyId ', [d.arg('KeyId', d.T.string)]),
    withKeyId(KeyId): {
      assert std.isString(KeyId) : 'KeyId must be a string',
      Properties+::: { KeyId: KeyId },
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
