{
  UserGroup: (import 'ElastiCache/UserGroup.libsonnet'),
  User: (import 'ElastiCache/User.libsonnet'),
  SubnetGroup: (import 'ElastiCache/SubnetGroup.libsonnet'),
  ServerlessCache: (import 'ElastiCache/ServerlessCache.libsonnet'),
  SecurityGroupIngress: (import 'ElastiCache/SecurityGroupIngress.libsonnet'),
  SecurityGroup: (import 'ElastiCache/SecurityGroup.libsonnet'),
  ReplicationGroup: (import 'ElastiCache/ReplicationGroup.libsonnet'),
  ParameterGroup: (import 'ElastiCache/ParameterGroup.libsonnet'),
  GlobalReplicationGroup: (import 'ElastiCache/GlobalReplicationGroup.libsonnet'),
  CacheCluster: (import 'ElastiCache/CacheCluster.libsonnet'),
}
