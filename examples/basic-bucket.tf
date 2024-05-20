module "s3_bucket" {
  source = "../"

  # Required variables
  stage   = "test"
  owner   = "wanda"
  purpose = "tfg"

  # Optional variables
  versioning     = true
  public         = true
  force_destroy  = false
  static_website = true
}