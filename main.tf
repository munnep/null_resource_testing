# This resource will destroy (potentially immediately) after null_resource.next
resource "null_resource" "previous5" {}

resource "time_sleep" "wait_300_seconds5" {
  depends_on = [null_resource.previous5]

  create_duration = "300s"
}

# This resource will create (at least) 300 seconds after null_resource.previous
resource "null_resource" "next5" {
  depends_on = [time_sleep.wait_300_seconds5]
}
