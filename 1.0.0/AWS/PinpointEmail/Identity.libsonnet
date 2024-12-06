{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PinpointEmail::Identity',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setIdentityDNSRecordName3(IdentityDNSRecordName3): {
    Properties+::: {
      IdentityDNSRecordName3:
        if !std.isString(IdentityDNSRecordName3) then (error 'IdentityDNSRecordName3 must be a string')
        else if std.isEmpty(IdentityDNSRecordName3) then (error 'IdentityDNSRecordName3 must be not empty')
        else IdentityDNSRecordName3,
    },
  },
  setIdentityDNSRecordName1(IdentityDNSRecordName1): {
    Properties+::: {
      IdentityDNSRecordName1:
        if !std.isString(IdentityDNSRecordName1) then (error 'IdentityDNSRecordName1 must be a string')
        else if std.isEmpty(IdentityDNSRecordName1) then (error 'IdentityDNSRecordName1 must be not empty')
        else IdentityDNSRecordName1,
    },
  },
  setIdentityDNSRecordName2(IdentityDNSRecordName2): {
    Properties+::: {
      IdentityDNSRecordName2:
        if !std.isString(IdentityDNSRecordName2) then (error 'IdentityDNSRecordName2 must be a string')
        else if std.isEmpty(IdentityDNSRecordName2) then (error 'IdentityDNSRecordName2 must be not empty')
        else IdentityDNSRecordName2,
    },
  },
  setIdentityDNSRecordValue3(IdentityDNSRecordValue3): {
    Properties+::: {
      IdentityDNSRecordValue3:
        if !std.isString(IdentityDNSRecordValue3) then (error 'IdentityDNSRecordValue3 must be a string')
        else if std.isEmpty(IdentityDNSRecordValue3) then (error 'IdentityDNSRecordValue3 must be not empty')
        else IdentityDNSRecordValue3,
    },
  },
  setIdentityDNSRecordValue2(IdentityDNSRecordValue2): {
    Properties+::: {
      IdentityDNSRecordValue2:
        if !std.isString(IdentityDNSRecordValue2) then (error 'IdentityDNSRecordValue2 must be a string')
        else if std.isEmpty(IdentityDNSRecordValue2) then (error 'IdentityDNSRecordValue2 must be not empty')
        else IdentityDNSRecordValue2,
    },
  },
  setIdentityDNSRecordValue1(IdentityDNSRecordValue1): {
    Properties+::: {
      IdentityDNSRecordValue1:
        if !std.isString(IdentityDNSRecordValue1) then (error 'IdentityDNSRecordValue1 must be a string')
        else if std.isEmpty(IdentityDNSRecordValue1) then (error 'IdentityDNSRecordValue1 must be not empty')
        else IdentityDNSRecordValue1,
    },
  },
  setFeedbackForwardingEnabled(FeedbackForwardingEnabled): {
    Properties+::: {
      FeedbackForwardingEnabled:
        if !std.isBoolean(FeedbackForwardingEnabled) then (error 'FeedbackForwardingEnabled must be a boolean') else FeedbackForwardingEnabled,
    },
  },
  setDkimSigningEnabled(DkimSigningEnabled): {
    Properties+::: {
      DkimSigningEnabled:
        if !std.isBoolean(DkimSigningEnabled) then (error 'DkimSigningEnabled must be a boolean') else DkimSigningEnabled,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setMailFromAttributes(MailFromAttributes): {
    Properties+::: {
      MailFromAttributes:
        if !std.isObject(MailFromAttributes) then (error 'MailFromAttributes must be an object')
        else MailFromAttributes,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
