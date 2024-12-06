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
    Type: 'AWS::Deadline::MeteredProduct',
  },
  setLicenseEndpointId(LicenseEndpointId): {
    Properties+::: {
      LicenseEndpointId:
        if !std.isString(LicenseEndpointId) then (error 'LicenseEndpointId must be a string')
        else if std.isEmpty(LicenseEndpointId) then (error 'LicenseEndpointId must be not empty')
        else LicenseEndpointId,
    },
  },
  setProductId(ProductId): {
    Properties+::: {
      ProductId:
        if !std.isString(ProductId) then (error 'ProductId must be a string')
        else if std.isEmpty(ProductId) then (error 'ProductId must be not empty')
        else ProductId,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else if Port < 1024 then error ('Port should be at least 1024')
        else if Port > 65535 then error ('Port should be not more than 65535')
        else Port,
    },
  },
  setFamily(Family): {
    Properties+::: {
      Family:
        if !std.isString(Family) then (error 'Family must be a string')
        else if std.isEmpty(Family) then (error 'Family must be not empty')
        else if std.length(Family) < 1 then error ('Family should have at least 1 characters')
        else if std.length(Family) > 64 then error ('Family should have not more than 64 characters')
        else Family,
    },
  },
  setVendor(Vendor): {
    Properties+::: {
      Vendor:
        if !std.isString(Vendor) then (error 'Vendor must be a string')
        else if std.isEmpty(Vendor) then (error 'Vendor must be not empty')
        else if std.length(Vendor) < 1 then error ('Vendor should have at least 1 characters')
        else if std.length(Vendor) > 64 then error ('Vendor should have not more than 64 characters')
        else Vendor,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
