data "cloudflare_zone" "matthewsanabria_dev" {
  zone_id = "92040175fb0287b5af9129a410275e5c"
}

resource "cloudflare_dns_record" "matthewsanabria_dev_a" {
  zone_id = data.cloudflare_zone.matthewsanabria_dev.zone_id
  type    = "A"
  name    = "@"
  content = var.public_ipv4
  proxied = true
  ttl     = 1 # Automatic TTL.
}

resource "cloudflare_dns_record" "www_matthewsanabria_dev_cname" {
  zone_id = data.cloudflare_zone.matthewsanabria_dev.zone_id
  type    = "CNAME"
  name    = "www"
  content = data.cloudflare_zone.matthewsanabria_dev.name
  proxied = true
  ttl     = 1 # Automatic TTL.
}
