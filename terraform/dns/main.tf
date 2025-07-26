terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.7.1"
    }
  }
}

# Configured via environment variables.
provider "cloudflare" {}
