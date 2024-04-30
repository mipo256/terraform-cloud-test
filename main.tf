resource "yandex_container_registry" "name" {
  name = "new-container-registry-from-cloud"
}

resource "yandex_container_repository" "name" {
    name = "${yandex_container_registry.name.id}/test-repository"

  lifecycle {
    create_before_destroy = true 
  }
}