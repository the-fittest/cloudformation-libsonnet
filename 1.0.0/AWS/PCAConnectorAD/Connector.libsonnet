{
  new(
    CertificateAuthorityArn,
    DirectoryId,
    VpcInformation,
  ): {
    local base = self,
    Properties: {
      CertificateAuthorityArn:
        if !std.isString(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be a string')
        else if std.isEmpty(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be not empty')
        else if std.length(CertificateAuthorityArn) < 5 then error ('CertificateAuthorityArn should have at least 5 characters')
        else if std.length(CertificateAuthorityArn) > 200 then error ('CertificateAuthorityArn should have not more than 200 characters')
        else CertificateAuthorityArn,
      DirectoryId:
        if !std.isString(DirectoryId) then (error 'DirectoryId must be a string')
        else if std.isEmpty(DirectoryId) then (error 'DirectoryId must be not empty')
        else DirectoryId,
      VpcInformation:
        if !std.isObject(VpcInformation) then (error 'VpcInformation must be an object')
        else if !std.objectHas(VpcInformation, 'SecurityGroupIds') then (error ' have attribute SecurityGroupIds')
        else VpcInformation,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::PCAConnectorAD::Connector',
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
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
