# aws-s3-bucket
Terraform module to create an AWS S3 Bucket with optional configurations.

## Required Variables

| Name     | Description                          | Type    | Default | Validation                                                  |
|----------|--------------------------------------|---------|---------|-------------------------------------------------------------|
| `stage`  | Stage of development                 | string  | N/A     | Must be one of `test`, `dev`, `staging`, or `prod`          |
| `purpose`| Short description about the resource | string  | null    | Must match the regex `^([a-zA-Z0-9-_]*)$`                   |
| `owner`  | Owner of the deployed infrastructure | string  | null    | Must have more than three characters                        |

## Optional Variables

| Name            | Description                         | Type   | Default | Validation                                  |
|-----------------|-------------------------------------|--------|---------|---------------------------------------------|
| `versioning`    | Enable versioning on the bucket     | bool   | false   | N/A                                         |
| `public`        | Make the bucket public              | bool   | false   | N/A                                         |
| `force_destroy` | Allow destroying a bucket with objects inside | bool | false | N/A                                         |
| `static_website`| Make the bucket host a static website| bool  | N/A     | Versioning must be enabled                  |

## Usage

```hcl
module "s3_bucket" {
  source = "path/to/module"

  # Required variables
  stage           = "test"
  owner           = "wanda"
  purpose         = "tfg"

  # Optional variables
  versioning      = true
  public          = true
  force_destroy   = false
  static_website  = true
}
```