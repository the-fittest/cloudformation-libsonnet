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
    Type: 'AWS::LicenseManager::Grant',
  },
  setGrantArn(GrantArn): {
    Properties+::: {
      GrantArn:
        if !std.isString(GrantArn) then (error 'GrantArn must be a string')
        else if std.isEmpty(GrantArn) then (error 'GrantArn must be not empty')
        else if std.length(GrantArn) > 2048 then error ('GrantArn should have not more than 2048 characters')
        else GrantArn,
    },
  },
  setGrantName(GrantName): {
    Properties+::: {
      GrantName:
        if !std.isString(GrantName) then (error 'GrantName must be a string')
        else if std.isEmpty(GrantName) then (error 'GrantName must be not empty')
        else GrantName,
    },
  },
  setLicenseArn(LicenseArn): {
    Properties+::: {
      LicenseArn:
        if !std.isString(LicenseArn) then (error 'LicenseArn must be a string')
        else if std.isEmpty(LicenseArn) then (error 'LicenseArn must be not empty')
        else if std.length(LicenseArn) > 2048 then error ('LicenseArn should have not more than 2048 characters')
        else LicenseArn,
    },
  },
  setHomeRegion(HomeRegion): {
    Properties+::: {
      HomeRegion:
        if !std.isString(HomeRegion) then (error 'HomeRegion must be a string')
        else if std.isEmpty(HomeRegion) then (error 'HomeRegion must be not empty')
        else HomeRegion,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setAllowedOperations(AllowedOperations): {
    Properties+::: {
      AllowedOperations:
        if !std.isArray(AllowedOperations) then (error 'AllowedOperations must be an array')
        else AllowedOperations,
    },
  },
  setAllowedOperationsMixin(AllowedOperations): {
    Properties+::: {
      AllowedOperations+: AllowedOperations,
    },
  },
  setPrincipals(Principals): {
    Properties+::: {
      Principals:
        if !std.isArray(Principals) then (error 'Principals must be an array')
        else Principals,
    },
  },
  setPrincipalsMixin(Principals): {
    Properties+::: {
      Principals+: Principals,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
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
