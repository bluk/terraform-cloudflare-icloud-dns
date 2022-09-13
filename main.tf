resource "cloudflare_record" "mx_domain1" {
  zone_id  = var.zone_id
  name     = var.domain_name
  type     = "MX"
  ttl      = var.ttl
  value    = "mx01.mail.icloud.com."
  priority = 10
}

resource "cloudflare_record" "mx_domain2" {
  zone_id  = var.zone_id
  name     = var.domain_name
  type     = "MX"
  ttl      = var.ttl
  value    = "mx02.mail.icloud.com."
  priority = 10
}

resource "cloudflare_record" "root_domain_txt" {
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "TXT"
  ttl     = var.ttl
  value   = "v=spf1 include:icloud.com ~all"
}

resource "cloudflare_record" "root_domain_apple_domain_txt" {
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "TXT"
  ttl     = var.ttl
  value   = var.root_domain_apple_domain_txt_value
}

resource "cloudflare_record" "sig1_domain_key" {
  zone_id = var.zone_id
  name    = "sig1._domainkey"
  type    = "CNAME"
  ttl     = var.ttl
  value   = var.sig1_domain_key_cname_value
}
