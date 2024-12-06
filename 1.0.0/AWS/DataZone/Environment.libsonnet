{
  new(
    Name,
    ProjectIdentifier,
    DomainIdentifier,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
      ProjectIdentifier:
        if !std.isString(ProjectIdentifier) then (error 'ProjectIdentifier must be a string')
        else if std.isEmpty(ProjectIdentifier) then (error 'ProjectIdentifier must be not empty')
        else ProjectIdentifier,
      DomainIdentifier:
        if !std.isString(DomainIdentifier) then (error 'DomainIdentifier must be a string')
        else if std.isEmpty(DomainIdentifier) then (error 'DomainIdentifier must be not empty')
        else DomainIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::Environment',
  },
  setAwsAccountId(AwsAccountId): {
    Properties+::: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else AwsAccountId,
    },
  },
  setAwsAccountRegion(AwsAccountRegion): {
    Properties+::: {
      AwsAccountRegion:
        if !std.isString(AwsAccountRegion) then (error 'AwsAccountRegion must be a string')
        else if std.isEmpty(AwsAccountRegion) then (error 'AwsAccountRegion must be not empty')
        else AwsAccountRegion,
    },
  },
  setEnvironmentAccountIdentifier(EnvironmentAccountIdentifier): {
    Properties+::: {
      EnvironmentAccountIdentifier:
        if !std.isString(EnvironmentAccountIdentifier) then (error 'EnvironmentAccountIdentifier must be a string')
        else if std.isEmpty(EnvironmentAccountIdentifier) then (error 'EnvironmentAccountIdentifier must be not empty')
        else EnvironmentAccountIdentifier,
    },
  },
  setEnvironmentAccountRegion(EnvironmentAccountRegion): {
    Properties+::: {
      EnvironmentAccountRegion:
        if !std.isString(EnvironmentAccountRegion) then (error 'EnvironmentAccountRegion must be a string')
        else if std.isEmpty(EnvironmentAccountRegion) then (error 'EnvironmentAccountRegion must be not empty')
        else EnvironmentAccountRegion,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setCreatedBy(CreatedBy): {
    Properties+::: {
      CreatedBy:
        if !std.isString(CreatedBy) then (error 'CreatedBy must be a string')
        else if std.isEmpty(CreatedBy) then (error 'CreatedBy must be not empty')
        else CreatedBy,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setDomainId(DomainId): {
    Properties+::: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else DomainId,
    },
  },
  setEnvironmentBlueprintId(EnvironmentBlueprintId): {
    Properties+::: {
      EnvironmentBlueprintId:
        if !std.isString(EnvironmentBlueprintId) then (error 'EnvironmentBlueprintId must be a string')
        else if std.isEmpty(EnvironmentBlueprintId) then (error 'EnvironmentBlueprintId must be not empty')
        else EnvironmentBlueprintId,
    },
  },
  setEnvironmentProfileId(EnvironmentProfileId): {
    Properties+::: {
      EnvironmentProfileId:
        if !std.isString(EnvironmentProfileId) then (error 'EnvironmentProfileId must be a string')
        else if std.isEmpty(EnvironmentProfileId) then (error 'EnvironmentProfileId must be not empty')
        else EnvironmentProfileId,
    },
  },
  setEnvironmentProfileIdentifier(EnvironmentProfileIdentifier): {
    Properties+::: {
      EnvironmentProfileIdentifier:
        if !std.isString(EnvironmentProfileIdentifier) then (error 'EnvironmentProfileIdentifier must be a string')
        else if std.isEmpty(EnvironmentProfileIdentifier) then (error 'EnvironmentProfileIdentifier must be not empty')
        else EnvironmentProfileIdentifier,
    },
  },
  setGlossaryTerms(GlossaryTerms): {
    Properties+::: {
      GlossaryTerms:
        if !std.isArray(GlossaryTerms) then (error 'GlossaryTerms must be an array')
        else if std.length(GlossaryTerms) < 1 then error ('GlossaryTerms cannot have less than 1 items')
        else if std.length(GlossaryTerms) > 20 then error ('GlossaryTerms cannot have more than 20 items')
        else GlossaryTerms,
    },
  },
  pushGlossaryTerms(GlossaryTerms): {
    Properties+::: {
      GlossaryTerms+: GlossaryTerms,
    },
  },
  setEnvironmentRoleArn(EnvironmentRoleArn): {
    Properties+::: {
      EnvironmentRoleArn:
        if !std.isString(EnvironmentRoleArn) then (error 'EnvironmentRoleArn must be a string')
        else if std.isEmpty(EnvironmentRoleArn) then (error 'EnvironmentRoleArn must be not empty')
        else EnvironmentRoleArn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setProjectId(ProjectId): {
    Properties+::: {
      ProjectId:
        if !std.isString(ProjectId) then (error 'ProjectId must be a string')
        else if std.isEmpty(ProjectId) then (error 'ProjectId must be not empty')
        else ProjectId,
    },
  },
  setProvider(Provider): {
    Properties+::: {
      Provider:
        if !std.isString(Provider) then (error 'Provider must be a string')
        else if std.isEmpty(Provider) then (error 'Provider must be not empty')
        else Provider,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'CREATING' && Status != 'UPDATING' && Status != 'DELETING' && Status != 'CREATE_FAILED' && Status != 'UPDATE_FAILED' && Status != 'DELETE_FAILED' && Status != 'VALIDATION_FAILED' && Status != 'SUSPENDED' && Status != 'DISABLED' && Status != 'EXPIRED' && Status != 'DELETED' && Status != 'INACCESSIBLE' then (error "Status should be 'ACTIVE' or 'CREATING' or 'UPDATING' or 'DELETING' or 'CREATE_FAILED' or 'UPDATE_FAILED' or 'DELETE_FAILED' or 'VALIDATION_FAILED' or 'SUSPENDED' or 'DISABLED' or 'EXPIRED' or 'DELETED' or 'INACCESSIBLE'")
        else Status,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setUserParameters(UserParameters): {
    Properties+::: {
      UserParameters:
        if !std.isArray(UserParameters) then (error 'UserParameters must be an array')
        else UserParameters,
    },
  },
  pushUserParameters(UserParameters): {
    Properties+::: {
      UserParameters+: UserParameters,
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
