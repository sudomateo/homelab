data "cloudflare_zone" "matthewsanabria_dev" {
  filter {
    name = "matthewsanabria.dev"
  }
}

import {
  id = "${data.cloudflare_zone.matthewsanabria_dev}/bc69d83426d3f1e3c354337368ef97c1"
  to = cloudflare_dns_record.matthewsanabria_dev_a
}

resource "cloudflare_dns_record" "matthewsanabria_dev_a" {
  zone_id = data.cloudflare_zone.matthewsanabria_dev
  type    = "A"
  name    = "@"
  content = var.public_ipv4
  proxied = true
  ttl     = 1 # Automatic TTL.
}
