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
    Type: 'AWS::PCAConnectorAD::ServicePrincipalName',
  },
  setConnectorArn(ConnectorArn): {
    Properties+::: {
      ConnectorArn:
        if !std.isString(ConnectorArn) then (error 'ConnectorArn must be a string')
        else if std.isEmpty(ConnectorArn) then (error 'ConnectorArn must be not empty')
        else if std.length(ConnectorArn) < 5 then error ('ConnectorArn should have at least 5 characters')
        else if std.length(ConnectorArn) > 200 then error ('ConnectorArn should have not more than 200 characters')
        else ConnectorArn,
    },
  },
  setDirectoryRegistrationArn(DirectoryRegistrationArn): {
    Properties+::: {
      DirectoryRegistrationArn:
        if !std.isString(DirectoryRegistrationArn) then (error 'DirectoryRegistrationArn must be a string')
        else if std.isEmpty(DirectoryRegistrationArn) then (error 'DirectoryRegistrationArn must be not empty')
        else if std.length(DirectoryRegistrationArn) < 5 then error ('DirectoryRegistrationArn should have at least 5 characters')
        else if std.length(DirectoryRegistrationArn) > 200 then error ('DirectoryRegistrationArn should have not more than 200 characters')
        else DirectoryRegistrationArn,
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
