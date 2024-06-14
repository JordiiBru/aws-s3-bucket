locals {
  bucket_naming     = (var.force_name == "") ? "${var.stage}-${var.owner}-${var.purpose}" : var.force_name
  bucket_visibility = !(var.public || var.static_website)
}
