# This resource will destroy (potentially immediately) after null_resource.next
resource "null_resource2" "previous" {}

resource "time_sleep2" "wait_300_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "300s"
}

# This resource will create (at least) 300 seconds after null_resource.previous
resource "null_resource2" "next" {
  depends_on = [time_sleep2.wait_300_seconds]
}
