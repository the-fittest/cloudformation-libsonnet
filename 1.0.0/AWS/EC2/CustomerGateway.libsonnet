{
  new(
    IpAddress,
    Type,
  ): {
    local base = self,
    Properties: {
      IpAddress:
        if !std.isString(IpAddress) then (error 'IpAddress must be a string')
        else if std.isEmpty(IpAddress) then (error 'IpAddress must be not empty')
        else IpAddress,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::CustomerGateway',
  },
  setCustomerGatewayId(CustomerGatewayId): {
    Properties+::: {
      CustomerGatewayId:
        if !std.isString(CustomerGatewayId) then (error 'CustomerGatewayId must be a string')
        else if std.isEmpty(CustomerGatewayId) then (error 'CustomerGatewayId must be not empty')
        else CustomerGatewayId,
    },
  },
  setBgpAsnExtended(BgpAsnExtended): {
    Properties+::: {
      BgpAsnExtended:
        if !std.isNumber(BgpAsnExtended) then (error 'BgpAsnExtended must be an number')
        else if BgpAsnExtended < 2147483648 then error ('BgpAsnExtended should be at least 2147483648')
        else if BgpAsnExtended > 4294967294 then error ('BgpAsnExtended should be not more than 4294967294')
        else BgpAsnExtended,
    },
  },
  setBgpAsn(BgpAsn): {
    Properties+::: {
      BgpAsn:
        if !std.isNumber(BgpAsn) then (error 'BgpAsn must be an number')
        else BgpAsn,
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
  setCertificateArn(CertificateArn): {
    Properties+::: {
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else CertificateArn,
    },
  },
  setDeviceName(DeviceName): {
    Properties+::: {
      DeviceName:
        if !std.isString(DeviceName) then (error 'DeviceName must be a string')
        else if std.isEmpty(DeviceName) then (error 'DeviceName must be not empty')
        else DeviceName,
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
