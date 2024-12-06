{
  new(
    Grantee,
    Permission,
    AccessGrantsLocationId,
  ): {
    local base = self,
    Properties: {
      Grantee:
        if !std.isObject(Grantee) then (error 'Grantee must be an object')
        else if !std.objectHas(Grantee, 'GranteeType') then (error ' have attribute GranteeType')
        else if !std.objectHas(Grantee, 'GranteeIdentifier') then (error ' have attribute GranteeIdentifier')
        else Grantee,
      Permission:
        if !std.isString(Permission) then (error 'Permission must be a string')
        else if std.isEmpty(Permission) then (error 'Permission must be not empty')
        else if Permission != 'READ' && Permission != 'WRITE' && Permission != 'READWRITE' then (error "Permission should be 'READ' or 'WRITE' or 'READWRITE'")
        else Permission,
      AccessGrantsLocationId:
        if !std.isString(AccessGrantsLocationId) then (error 'AccessGrantsLocationId must be a string')
        else if std.isEmpty(AccessGrantsLocationId) then (error 'AccessGrantsLocationId must be not empty')
        else AccessGrantsLocationId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3::AccessGrant',
  },
  setAccessGrantId(AccessGrantId): {
    Properties+::: {
      AccessGrantId:
        if !std.isString(AccessGrantId) then (error 'AccessGrantId must be a string')
        else if std.isEmpty(AccessGrantId) then (error 'AccessGrantId must be not empty')
        else AccessGrantId,
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
  setApplicationArn(ApplicationArn): {
    Properties+::: {
      ApplicationArn:
        if !std.isString(ApplicationArn) then (error 'ApplicationArn must be a string')
        else if std.isEmpty(ApplicationArn) then (error 'ApplicationArn must be not empty')
        else ApplicationArn,
    },
  },
  setS3PrefixType(S3PrefixType): {
    Properties+::: {
      S3PrefixType:
        if !std.isString(S3PrefixType) then (error 'S3PrefixType must be a string')
        else if std.isEmpty(S3PrefixType) then (error 'S3PrefixType must be not empty')
        else if S3PrefixType != 'Object' then (error "S3PrefixType should be 'Object'")
        else S3PrefixType,
    },
  },
  setGrantScope(GrantScope): {
    Properties+::: {
      GrantScope:
        if !std.isString(GrantScope) then (error 'GrantScope must be a string')
        else if std.isEmpty(GrantScope) then (error 'GrantScope must be not empty')
        else GrantScope,
    },
  },
  setAccessGrantArn(AccessGrantArn): {
    Properties+::: {
      AccessGrantArn:
        if !std.isString(AccessGrantArn) then (error 'AccessGrantArn must be a string')
        else if std.isEmpty(AccessGrantArn) then (error 'AccessGrantArn must be not empty')
        else AccessGrantArn,
    },
  },
  setAccessGrantsLocationConfiguration(AccessGrantsLocationConfiguration): {
    Properties+::: {
      AccessGrantsLocationConfiguration:
        if !std.isObject(AccessGrantsLocationConfiguration) then (error 'AccessGrantsLocationConfiguration must be an object')
        else if !std.objectHas(AccessGrantsLocationConfiguration, 'S3SubPrefix') then (error ' have attribute S3SubPrefix')
        else AccessGrantsLocationConfiguration,
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
