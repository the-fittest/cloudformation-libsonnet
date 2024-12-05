{
  new(
    ApplicationName,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      ApplicationName:
        if !std.isString(ApplicationName) then (error 'ApplicationName must be a string')
        else if std.isEmpty(ApplicationName) then (error 'ApplicationName must be not empty')
        else if std.length(ApplicationName) < 1 then error ('ApplicationName should have at least 1 characters')
        else if std.length(ApplicationName) > 256 then error ('ApplicationName should have not more than 256 characters')
        else ApplicationName,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 1600 then error ('RoleArn should have not more than 1600 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTFleetHub::Application',
  },
  setApplicationId(ApplicationId): {
    Properties+::: {
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else if std.length(ApplicationId) < 36 then error ('ApplicationId should have at least 36 characters')
        else if std.length(ApplicationId) > 36 then error ('ApplicationId should have not more than 36 characters')
        else ApplicationId,
    },
  },
  setApplicationArn(ApplicationArn): {
    Properties+::: {
      ApplicationArn:
        if !std.isString(ApplicationArn) then (error 'ApplicationArn must be a string')
        else if std.isEmpty(ApplicationArn) then (error 'ApplicationArn must be not empty')
        else if std.length(ApplicationArn) < 1 then error ('ApplicationArn should have at least 1 characters')
        else if std.length(ApplicationArn) > 1600 then error ('ApplicationArn should have not more than 1600 characters')
        else ApplicationArn,
    },
  },
  setApplicationDescription(ApplicationDescription): {
    Properties+::: {
      ApplicationDescription:
        if !std.isString(ApplicationDescription) then (error 'ApplicationDescription must be a string')
        else if std.isEmpty(ApplicationDescription) then (error 'ApplicationDescription must be not empty')
        else if std.length(ApplicationDescription) < 1 then error ('ApplicationDescription should have at least 1 characters')
        else if std.length(ApplicationDescription) > 2048 then error ('ApplicationDescription should have not more than 2048 characters')
        else ApplicationDescription,
    },
  },
  setApplicationUrl(ApplicationUrl): {
    Properties+::: {
      ApplicationUrl:
        if !std.isString(ApplicationUrl) then (error 'ApplicationUrl must be a string')
        else if std.isEmpty(ApplicationUrl) then (error 'ApplicationUrl must be not empty')
        else ApplicationUrl,
    },
  },
  setApplicationState(ApplicationState): {
    Properties+::: {
      ApplicationState:
        if !std.isString(ApplicationState) then (error 'ApplicationState must be a string')
        else if std.isEmpty(ApplicationState) then (error 'ApplicationState must be not empty')
        else ApplicationState,
    },
  },
  setApplicationCreationDate(ApplicationCreationDate): {
    Properties+::: {
      ApplicationCreationDate:
        if !std.isNumber(ApplicationCreationDate) then (error 'ApplicationCreationDate must be an number')
        else ApplicationCreationDate,
    },
  },
  setApplicationLastUpdateDate(ApplicationLastUpdateDate): {
    Properties+::: {
      ApplicationLastUpdateDate:
        if !std.isNumber(ApplicationLastUpdateDate) then (error 'ApplicationLastUpdateDate must be an number')
        else ApplicationLastUpdateDate,
    },
  },
  setSsoClientId(SsoClientId): {
    Properties+::: {
      SsoClientId:
        if !std.isString(SsoClientId) then (error 'SsoClientId must be a string')
        else if std.isEmpty(SsoClientId) then (error 'SsoClientId must be not empty')
        else SsoClientId,
    },
  },
  setErrorMessage(ErrorMessage): {
    Properties+::: {
      ErrorMessage:
        if !std.isString(ErrorMessage) then (error 'ErrorMessage must be a string')
        else if std.isEmpty(ErrorMessage) then (error 'ErrorMessage must be not empty')
        else ErrorMessage,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
