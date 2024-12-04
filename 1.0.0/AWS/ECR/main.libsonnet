{
  RepositoryCreationTemplate: (import 'ECR/RepositoryCreationTemplate.libsonnet'),
  Repository: (import 'ECR/Repository.libsonnet'),
  ReplicationConfiguration: (import 'ECR/ReplicationConfiguration.libsonnet'),
  RegistryPolicy: (import 'ECR/RegistryPolicy.libsonnet'),
  PullThroughCacheRule: (import 'ECR/PullThroughCacheRule.libsonnet'),
}
