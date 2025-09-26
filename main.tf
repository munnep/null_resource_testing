# This resource will destroy (potentially immediately) after null_resource.next
resource "null_resource5" "previous" {}

resource "time_sleep5" "wait_300_seconds" {
  depends_on = [null_resource5.previous]

  create_duration = "300s"
}

# This resource will create (at least) 300 seconds after null_resource.previous
resource "null_resource5" "next" {
  depends_on = [time_sleep5.wait_300_seconds]
}
