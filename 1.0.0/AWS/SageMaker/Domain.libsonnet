{
  new(
    AuthMode,
    DefaultUserSettings,
    DomainName,
    SubnetIds,
    VpcId,
  ): {
    local base = self,
    Properties: {
      AuthMode:
        if !std.isString(AuthMode) then (error 'AuthMode must be a string')
        else if std.isEmpty(AuthMode) then (error 'AuthMode must be not empty')
        else if AuthMode != 'SSO' && AuthMode != 'IAM' then (error "AuthMode should be 'SSO' or 'IAM'")
        else AuthMode,
      DefaultUserSettings:
        if !std.isObject(DefaultUserSettings) then (error 'DefaultUserSettings must be an object')
        else if !std.objectHas(DefaultUserSettings, 'ExecutionRole') then (error ' have attribute ExecutionRole')
        else DefaultUserSettings,
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) > 63 then error ('DomainName should have not more than 63 characters')
        else DomainName,
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else if std.length(SubnetIds) < 1 then error ('SubnetIds cannot have less than 1 items')
        else if std.length(SubnetIds) > 16 then error ('SubnetIds cannot have more than 16 items')
        else SubnetIds,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) > 32 then error ('VpcId should have not more than 32 characters')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Domain',
  },
  setDomainArn(DomainArn): {
    Properties+::: {
      DomainArn:
        if !std.isString(DomainArn) then (error 'DomainArn must be a string')
        else if std.isEmpty(DomainArn) then (error 'DomainArn must be not empty')
        else if std.length(DomainArn) > 256 then error ('DomainArn should have not more than 256 characters')
        else DomainArn,
    },
  },
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else if std.length(Url) > 1024 then error ('Url should have not more than 1024 characters')
        else Url,
    },
  },
  setAppNetworkAccessType(AppNetworkAccessType): {
    Properties+::: {
      AppNetworkAccessType:
        if !std.isString(AppNetworkAccessType) then (error 'AppNetworkAccessType must be a string')
        else if std.isEmpty(AppNetworkAccessType) then (error 'AppNetworkAccessType must be not empty')
        else if AppNetworkAccessType != 'PublicInternetOnly' && AppNetworkAccessType != 'VpcOnly' then (error "AppNetworkAccessType should be 'PublicInternetOnly' or 'VpcOnly'")
        else AppNetworkAccessType,
    },
  },
  setDefaultSpaceSettings(DefaultSpaceSettings): {
    Properties+::: {
      DefaultSpaceSettings:
        if !std.isObject(DefaultSpaceSettings) then (error 'DefaultSpaceSettings must be an object')
        else if !std.objectHas(DefaultSpaceSettings, 'ExecutionRole') then (error ' have attribute ExecutionRole')
        else DefaultSpaceSettings,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else if std.length(KmsKeyId) > 2048 then error ('KmsKeyId should have not more than 2048 characters')
        else KmsKeyId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDomainId(DomainId): {
    Properties+::: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else if std.length(DomainId) > 63 then error ('DomainId should have not more than 63 characters')
        else DomainId,
    },
  },
  setHomeEfsFileSystemId(HomeEfsFileSystemId): {
    Properties+::: {
      HomeEfsFileSystemId:
        if !std.isString(HomeEfsFileSystemId) then (error 'HomeEfsFileSystemId must be a string')
        else if std.isEmpty(HomeEfsFileSystemId) then (error 'HomeEfsFileSystemId must be not empty')
        else if std.length(HomeEfsFileSystemId) > 32 then error ('HomeEfsFileSystemId should have not more than 32 characters')
        else HomeEfsFileSystemId,
    },
  },
  setSingleSignOnManagedApplicationInstanceId(SingleSignOnManagedApplicationInstanceId): {
    Properties+::: {
      SingleSignOnManagedApplicationInstanceId:
        if !std.isString(SingleSignOnManagedApplicationInstanceId) then (error 'SingleSignOnManagedApplicationInstanceId must be a string')
        else if std.isEmpty(SingleSignOnManagedApplicationInstanceId) then (error 'SingleSignOnManagedApplicationInstanceId must be not empty')
        else if std.length(SingleSignOnManagedApplicationInstanceId) > 256 then error ('SingleSignOnManagedApplicationInstanceId should have not more than 256 characters')
        else SingleSignOnManagedApplicationInstanceId,
    },
  },
  setSingleSignOnApplicationArn(SingleSignOnApplicationArn): {
    Properties+::: {
      SingleSignOnApplicationArn:
        if !std.isString(SingleSignOnApplicationArn) then (error 'SingleSignOnApplicationArn must be a string')
        else if std.isEmpty(SingleSignOnApplicationArn) then (error 'SingleSignOnApplicationArn must be not empty')
        else SingleSignOnApplicationArn,
    },
  },
  setDomainSettings(DomainSettings): {
    Properties+::: {
      DomainSettings:
        if !std.isObject(DomainSettings) then (error 'DomainSettings must be an object')
        else DomainSettings,
    },
  },
  setAppSecurityGroupManagement(AppSecurityGroupManagement): {
    Properties+::: {
      AppSecurityGroupManagement:
        if !std.isString(AppSecurityGroupManagement) then (error 'AppSecurityGroupManagement must be a string')
        else if std.isEmpty(AppSecurityGroupManagement) then (error 'AppSecurityGroupManagement must be not empty')
        else if AppSecurityGroupManagement != 'Service' && AppSecurityGroupManagement != 'Customer' then (error "AppSecurityGroupManagement should be 'Service' or 'Customer'")
        else AppSecurityGroupManagement,
    },
  },
  setSecurityGroupIdForDomainBoundary(SecurityGroupIdForDomainBoundary): {
    Properties+::: {
      SecurityGroupIdForDomainBoundary:
        if !std.isString(SecurityGroupIdForDomainBoundary) then (error 'SecurityGroupIdForDomainBoundary must be a string')
        else if std.isEmpty(SecurityGroupIdForDomainBoundary) then (error 'SecurityGroupIdForDomainBoundary must be not empty')
        else if std.length(SecurityGroupIdForDomainBoundary) > 32 then error ('SecurityGroupIdForDomainBoundary should have not more than 32 characters')
        else SecurityGroupIdForDomainBoundary,
    },
  },
  setTagPropagation(TagPropagation): {
    Properties+::: {
      TagPropagation:
        if !std.isString(TagPropagation) then (error 'TagPropagation must be a string')
        else if std.isEmpty(TagPropagation) then (error 'TagPropagation must be not empty')
        else if TagPropagation != 'ENABLED' && TagPropagation != 'DISABLED' then (error "TagPropagation should be 'ENABLED' or 'DISABLED'")
        else TagPropagation,
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
