{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::LogGroup',
  },
  setLogGroupName(LogGroupName): {
    Properties+::: {
      LogGroupName:
        if !std.isString(LogGroupName) then (error 'LogGroupName must be a string')
        else if std.isEmpty(LogGroupName) then (error 'LogGroupName must be not empty')
        else if std.length(LogGroupName) < 1 then error ('LogGroupName should have at least 1 characters')
        else if std.length(LogGroupName) > 512 then error ('LogGroupName should have not more than 512 characters')
        else LogGroupName,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else if std.length(KmsKeyId) > 256 then error ('KmsKeyId should have not more than 256 characters')
        else KmsKeyId,
    },
  },
  setDataProtectionPolicy(DataProtectionPolicy): {
    Properties+::: {
      DataProtectionPolicy:
        if !std.isObject(DataProtectionPolicy) then (error 'DataProtectionPolicy must be an object')
        else DataProtectionPolicy,
    },
  },
  setLogGroupClass(LogGroupClass): {
    Properties+::: {
      LogGroupClass:
        if !std.isString(LogGroupClass) then (error 'LogGroupClass must be a string')
        else if std.isEmpty(LogGroupClass) then (error 'LogGroupClass must be not empty')
        else if LogGroupClass != 'STANDARD' && LogGroupClass != 'INFREQUENT_ACCESS' then (error "LogGroupClass should be 'STANDARD' or 'INFREQUENT_ACCESS'")
        else LogGroupClass,
    },
  },
  setRetentionInDays(RetentionInDays): {
    Properties+::: {
      RetentionInDays:
        if !std.isNumber(RetentionInDays) then (error 'RetentionInDays must be an number')
        else if RetentionInDays != 1 && RetentionInDays != 3 && RetentionInDays != 5 && RetentionInDays != 7 && RetentionInDays != 14 && RetentionInDays != 30 && RetentionInDays != 60 && RetentionInDays != 90 && RetentionInDays != 120 && RetentionInDays != 150 && RetentionInDays != 180 && RetentionInDays != 365 && RetentionInDays != 400 && RetentionInDays != 545 && RetentionInDays != 731 && RetentionInDays != 1096 && RetentionInDays != 1827 && RetentionInDays != 2192 && RetentionInDays != 2557 && RetentionInDays != 2922 && RetentionInDays != 3288 && RetentionInDays != 3653 then error ('RetentionInDays should be 1 or 3 or 5 or 7 or 14 or 30 or 60 or 90 or 120 or 150 or 180 or 365 or 400 or 545 or 731 or 1096 or 1827 or 2192 or 2557 or 2922 or 3288 or 3653')
        else RetentionInDays,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
