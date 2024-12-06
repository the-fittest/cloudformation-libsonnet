{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::PatchBaseline',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 20 then error ('Id should have at least 20 characters')
        else if std.length(Id) > 128 then error ('Id should have not more than 128 characters')
        else Id,
    },
  },
  setDefaultBaseline(DefaultBaseline): {
    Properties+::: {
      DefaultBaseline:
        if !std.isBoolean(DefaultBaseline) then (error 'DefaultBaseline must be a boolean') else DefaultBaseline,
    },
  },
  setOperatingSystem(OperatingSystem): {
    Properties+::: {
      OperatingSystem:
        if !std.isString(OperatingSystem) then (error 'OperatingSystem must be a string')
        else if std.isEmpty(OperatingSystem) then (error 'OperatingSystem must be not empty')
        else if OperatingSystem != 'WINDOWS' && OperatingSystem != 'AMAZON_LINUX' && OperatingSystem != 'AMAZON_LINUX_2' && OperatingSystem != 'AMAZON_LINUX_2022' && OperatingSystem != 'AMAZON_LINUX_2023' && OperatingSystem != 'UBUNTU' && OperatingSystem != 'REDHAT_ENTERPRISE_LINUX' && OperatingSystem != 'SUSE' && OperatingSystem != 'CENTOS' && OperatingSystem != 'ORACLE_LINUX' && OperatingSystem != 'DEBIAN' && OperatingSystem != 'MACOS' && OperatingSystem != 'RASPBIAN' && OperatingSystem != 'ROCKY_LINUX' && OperatingSystem != 'ALMA_LINUX' then (error "OperatingSystem should be 'WINDOWS' or 'AMAZON_LINUX' or 'AMAZON_LINUX_2' or 'AMAZON_LINUX_2022' or 'AMAZON_LINUX_2023' or 'UBUNTU' or 'REDHAT_ENTERPRISE_LINUX' or 'SUSE' or 'CENTOS' or 'ORACLE_LINUX' or 'DEBIAN' or 'MACOS' or 'RASPBIAN' or 'ROCKY_LINUX' or 'ALMA_LINUX'")
        else OperatingSystem,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setApprovalRules(ApprovalRules): {
    Properties+::: {
      ApprovalRules:
        if !std.isObject(ApprovalRules) then (error 'ApprovalRules must be an object')
        else ApprovalRules,
    },
  },
  setSources(Sources): {
    Properties+::: {
      Sources:
        if !std.isArray(Sources) then (error 'Sources must be an array')
        else if std.length(Sources) > 20 then error ('Sources cannot have more than 20 items')
        else Sources,
    },
  },
  pushSources(Sources): {
    Properties+::: {
      Sources+: Sources,
    },
  },
  setRejectedPatches(RejectedPatches): {
    Properties+::: {
      RejectedPatches:
        if !std.isArray(RejectedPatches) then (error 'RejectedPatches must be an array')
        else if std.length(RejectedPatches) > 50 then error ('RejectedPatches cannot have more than 50 items')
        else RejectedPatches,
    },
  },
  pushRejectedPatches(RejectedPatches): {
    Properties+::: {
      RejectedPatches+: RejectedPatches,
    },
  },
  setApprovedPatches(ApprovedPatches): {
    Properties+::: {
      ApprovedPatches:
        if !std.isArray(ApprovedPatches) then (error 'ApprovedPatches must be an array')
        else if std.length(ApprovedPatches) > 50 then error ('ApprovedPatches cannot have more than 50 items')
        else ApprovedPatches,
    },
  },
  pushApprovedPatches(ApprovedPatches): {
    Properties+::: {
      ApprovedPatches+: ApprovedPatches,
    },
  },
  setRejectedPatchesAction(RejectedPatchesAction): {
    Properties+::: {
      RejectedPatchesAction:
        if !std.isString(RejectedPatchesAction) then (error 'RejectedPatchesAction must be a string')
        else if std.isEmpty(RejectedPatchesAction) then (error 'RejectedPatchesAction must be not empty')
        else if RejectedPatchesAction != 'ALLOW_AS_DEPENDENCY' && RejectedPatchesAction != 'BLOCK' then (error "RejectedPatchesAction should be 'ALLOW_AS_DEPENDENCY' or 'BLOCK'")
        else RejectedPatchesAction,
    },
  },
  setPatchGroups(PatchGroups): {
    Properties+::: {
      PatchGroups:
        if !std.isArray(PatchGroups) then (error 'PatchGroups must be an array')
        else PatchGroups,
    },
  },
  pushPatchGroups(PatchGroups): {
    Properties+::: {
      PatchGroups+: PatchGroups,
    },
  },
  setApprovedPatchesComplianceLevel(ApprovedPatchesComplianceLevel): {
    Properties+::: {
      ApprovedPatchesComplianceLevel:
        if !std.isString(ApprovedPatchesComplianceLevel) then (error 'ApprovedPatchesComplianceLevel must be a string')
        else if std.isEmpty(ApprovedPatchesComplianceLevel) then (error 'ApprovedPatchesComplianceLevel must be not empty')
        else if ApprovedPatchesComplianceLevel != 'CRITICAL' && ApprovedPatchesComplianceLevel != 'HIGH' && ApprovedPatchesComplianceLevel != 'MEDIUM' && ApprovedPatchesComplianceLevel != 'LOW' && ApprovedPatchesComplianceLevel != 'INFORMATIONAL' && ApprovedPatchesComplianceLevel != 'UNSPECIFIED' then (error "ApprovedPatchesComplianceLevel should be 'CRITICAL' or 'HIGH' or 'MEDIUM' or 'LOW' or 'INFORMATIONAL' or 'UNSPECIFIED'")
        else ApprovedPatchesComplianceLevel,
    },
  },
  setApprovedPatchesEnableNonSecurity(ApprovedPatchesEnableNonSecurity): {
    Properties+::: {
      ApprovedPatchesEnableNonSecurity:
        if !std.isBoolean(ApprovedPatchesEnableNonSecurity) then (error 'ApprovedPatchesEnableNonSecurity must be a boolean') else ApprovedPatchesEnableNonSecurity,
    },
  },
  setGlobalFilters(GlobalFilters): {
    Properties+::: {
      GlobalFilters:
        if !std.isObject(GlobalFilters) then (error 'GlobalFilters must be an object')
        else GlobalFilters,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 1000 then error ('Tags cannot have more than 1000 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
