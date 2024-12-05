{
  new(
    DeliverySourceName,
    DeliveryDestinationArn,
  ): {
    local base = self,
    Properties: {
      DeliverySourceName:
        if !std.isString(DeliverySourceName) then (error 'DeliverySourceName must be a string')
        else if std.isEmpty(DeliverySourceName) then (error 'DeliverySourceName must be not empty')
        else if std.length(DeliverySourceName) < 1 then error ('DeliverySourceName should have at least 1 characters')
        else if std.length(DeliverySourceName) > 60 then error ('DeliverySourceName should have not more than 60 characters')
        else DeliverySourceName,
      DeliveryDestinationArn:
        if !std.isString(DeliveryDestinationArn) then (error 'DeliveryDestinationArn must be a string')
        else if std.isEmpty(DeliveryDestinationArn) then (error 'DeliveryDestinationArn must be not empty')
        else if std.length(DeliveryDestinationArn) < 16 then error ('DeliveryDestinationArn should have at least 16 characters')
        else if std.length(DeliveryDestinationArn) > 2048 then error ('DeliveryDestinationArn should have not more than 2048 characters')
        else DeliveryDestinationArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::Delivery',
  },
  setDeliveryId(DeliveryId): {
    Properties+::: {
      DeliveryId:
        if !std.isString(DeliveryId) then (error 'DeliveryId must be a string')
        else if std.isEmpty(DeliveryId) then (error 'DeliveryId must be not empty')
        else if std.length(DeliveryId) < 1 then error ('DeliveryId should have at least 1 characters')
        else if std.length(DeliveryId) > 64 then error ('DeliveryId should have not more than 64 characters')
        else DeliveryId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 16 then error ('Arn should have at least 16 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setDeliveryDestinationType(DeliveryDestinationType): {
    Properties+::: {
      DeliveryDestinationType:
        if !std.isString(DeliveryDestinationType) then (error 'DeliveryDestinationType must be a string')
        else if std.isEmpty(DeliveryDestinationType) then (error 'DeliveryDestinationType must be not empty')
        else if std.length(DeliveryDestinationType) < 1 then error ('DeliveryDestinationType should have at least 1 characters')
        else if std.length(DeliveryDestinationType) > 12 then error ('DeliveryDestinationType should have not more than 12 characters')
        else DeliveryDestinationType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setRecordFields(RecordFields): {
    Properties+::: {
      RecordFields:
        if !std.isArray(RecordFields) then (error 'RecordFields must be an array')
        else RecordFields,
    },
  },
  setRecordFieldsMixin(RecordFields): {
    Properties+::: {
      RecordFields+: RecordFields,
    },
  },
  setFieldDelimiter(FieldDelimiter): {
    Properties+::: {
      FieldDelimiter:
        if !std.isString(FieldDelimiter) then (error 'FieldDelimiter must be a string')
        else if std.isEmpty(FieldDelimiter) then (error 'FieldDelimiter must be not empty')
        else if std.length(FieldDelimiter) < 1 then error ('FieldDelimiter should have at least 1 characters')
        else if std.length(FieldDelimiter) > 5 then error ('FieldDelimiter should have not more than 5 characters')
        else FieldDelimiter,
    },
  },
  setS3SuffixPath(S3SuffixPath): {
    Properties+::: {
      S3SuffixPath:
        if !std.isString(S3SuffixPath) then (error 'S3SuffixPath must be a string')
        else if std.isEmpty(S3SuffixPath) then (error 'S3SuffixPath must be not empty')
        else if std.length(S3SuffixPath) > 256 then error ('S3SuffixPath should have not more than 256 characters')
        else S3SuffixPath,
    },
  },
  setS3EnableHiveCompatiblePath(S3EnableHiveCompatiblePath): {
    Properties+::: {
      S3EnableHiveCompatiblePath:
        if !std.isBoolean(S3EnableHiveCompatiblePath) then (error 'S3EnableHiveCompatiblePath must be a boolean') else S3EnableHiveCompatiblePath,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
