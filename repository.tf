resource "artifactory_local_repository" "bar" {
  key = "bar"
  package_type = "docker"
}

resource "artifactory_local_repository" "baz" {
  key = "baz"
  package_type = "docker"
}

resource "artifactory_virtual_repository" "foo" {
  key          = "foo"
  package_type = "docker"
  repositories = [
    artifactory_local_repository.bar.key, 
    artifactory_local_repository.baz.key
  ]
}