module "s3_bucket" {
  source = "../"

  # Comomon variables
  stage   = "test"
  owner   = "wanda"
  purpose = "lele"

  # Custom variables
  versioning     = false
  public         = true
  force_destroy  = true
  static_website = true
}