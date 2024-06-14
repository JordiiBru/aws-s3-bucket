module "s3_bucket" {
  source = "../"

  # Comomon variables
  stage   = "test"
  owner   = "wanda"
  purpose = "tfg"

  # Custom variables
  versioning     = false
  public         = false
  force_destroy  = false
  static_website = false
}