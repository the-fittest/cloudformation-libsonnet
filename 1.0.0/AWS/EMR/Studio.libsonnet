{
  new(
    AuthMode,
    EngineSecurityGroupId,
    Name,
    ServiceRole,
    SubnetIds,
    VpcId,
    WorkspaceSecurityGroupId,
    DefaultS3Location,
  ): {
    local base = self,
    Properties: {
      AuthMode:
        if !std.isString(AuthMode) then (error 'AuthMode must be a string')
        else if std.isEmpty(AuthMode) then (error 'AuthMode must be not empty')
        else if AuthMode != 'SSO' && AuthMode != 'IAM' then (error "AuthMode should be 'SSO' or 'IAM'")
        else AuthMode,
      EngineSecurityGroupId:
        if !std.isString(EngineSecurityGroupId) then (error 'EngineSecurityGroupId must be a string')
        else if std.isEmpty(EngineSecurityGroupId) then (error 'EngineSecurityGroupId must be not empty')
        else if std.length(EngineSecurityGroupId) < 4 then error ('EngineSecurityGroupId should have at least 4 characters')
        else if std.length(EngineSecurityGroupId) > 256 then error ('EngineSecurityGroupId should have not more than 256 characters')
        else EngineSecurityGroupId,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
      ServiceRole:
        if !std.isString(ServiceRole) then (error 'ServiceRole must be a string')
        else if std.isEmpty(ServiceRole) then (error 'ServiceRole must be not empty')
        else ServiceRole,
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else if std.length(SubnetIds) < 1 then error ('SubnetIds cannot have less than 1 items')
        else SubnetIds,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
      WorkspaceSecurityGroupId:
        if !std.isString(WorkspaceSecurityGroupId) then (error 'WorkspaceSecurityGroupId must be a string')
        else if std.isEmpty(WorkspaceSecurityGroupId) then (error 'WorkspaceSecurityGroupId must be not empty')
        else WorkspaceSecurityGroupId,
      DefaultS3Location:
        if !std.isString(DefaultS3Location) then (error 'DefaultS3Location must be a string')
        else if std.isEmpty(DefaultS3Location) then (error 'DefaultS3Location must be not empty')
        else if std.length(DefaultS3Location) < 6 then error ('DefaultS3Location should have at least 6 characters')
        else if std.length(DefaultS3Location) > 10280 then error ('DefaultS3Location should have not more than 10280 characters')
        else DefaultS3Location,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::Studio',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setStudioId(StudioId): {
    Properties+::: {
      StudioId:
        if !std.isString(StudioId) then (error 'StudioId must be a string')
        else if std.isEmpty(StudioId) then (error 'StudioId must be not empty')
        else if std.length(StudioId) < 4 then error ('StudioId should have at least 4 characters')
        else if std.length(StudioId) > 256 then error ('StudioId should have not more than 256 characters')
        else StudioId,
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
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else if std.length(Url) > 4096 then error ('Url should have not more than 4096 characters')
        else Url,
    },
  },
  setUserRole(UserRole): {
    Properties+::: {
      UserRole:
        if !std.isString(UserRole) then (error 'UserRole must be a string')
        else if std.isEmpty(UserRole) then (error 'UserRole must be not empty')
        else UserRole,
    },
  },
  setIdpAuthUrl(IdpAuthUrl): {
    Properties+::: {
      IdpAuthUrl:
        if !std.isString(IdpAuthUrl) then (error 'IdpAuthUrl must be a string')
        else if std.isEmpty(IdpAuthUrl) then (error 'IdpAuthUrl must be not empty')
        else if std.length(IdpAuthUrl) > 4096 then error ('IdpAuthUrl should have not more than 4096 characters')
        else IdpAuthUrl,
    },
  },
  setIdpRelayStateParameterName(IdpRelayStateParameterName): {
    Properties+::: {
      IdpRelayStateParameterName:
        if !std.isString(IdpRelayStateParameterName) then (error 'IdpRelayStateParameterName must be a string')
        else if std.isEmpty(IdpRelayStateParameterName) then (error 'IdpRelayStateParameterName must be not empty')
        else if std.length(IdpRelayStateParameterName) > 256 then error ('IdpRelayStateParameterName should have not more than 256 characters')
        else IdpRelayStateParameterName,
    },
  },
  setTrustedIdentityPropagationEnabled(TrustedIdentityPropagationEnabled): {
    Properties+::: {
      TrustedIdentityPropagationEnabled:
        if !std.isBoolean(TrustedIdentityPropagationEnabled) then (error 'TrustedIdentityPropagationEnabled must be a boolean') else TrustedIdentityPropagationEnabled,
    },
  },
  setIdcUserAssignment(IdcUserAssignment): {
    Properties+::: {
      IdcUserAssignment:
        if !std.isString(IdcUserAssignment) then (error 'IdcUserAssignment must be a string')
        else if std.isEmpty(IdcUserAssignment) then (error 'IdcUserAssignment must be not empty')
        else if IdcUserAssignment != 'REQUIRED' && IdcUserAssignment != 'OPTIONAL' then (error "IdcUserAssignment should be 'REQUIRED' or 'OPTIONAL'")
        else IdcUserAssignment,
    },
  },
  setIdcInstanceArn(IdcInstanceArn): {
    Properties+::: {
      IdcInstanceArn:
        if !std.isString(IdcInstanceArn) then (error 'IdcInstanceArn must be a string')
        else if std.isEmpty(IdcInstanceArn) then (error 'IdcInstanceArn must be not empty')
        else if std.length(IdcInstanceArn) < 20 then error ('IdcInstanceArn should have at least 20 characters')
        else if std.length(IdcInstanceArn) > 2048 then error ('IdcInstanceArn should have not more than 2048 characters')
        else IdcInstanceArn,
    },
  },
  setEncryptionKeyArn(EncryptionKeyArn): {
    Properties+::: {
      EncryptionKeyArn:
        if !std.isString(EncryptionKeyArn) then (error 'EncryptionKeyArn must be a string')
        else if std.isEmpty(EncryptionKeyArn) then (error 'EncryptionKeyArn must be not empty')
        else EncryptionKeyArn,
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
