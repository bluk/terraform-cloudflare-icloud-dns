variable "zone_id" {
  type        = string
  description = "The zone id to setup DNS records for"
}

variable "domain_name" {
  type        = string
  description = "The domain name zone id to setup DNS records for like `example.com`"
}

variable "root_domain_apple_domain_txt_value" {
  type        = string
  description = "Verification value: apple-domain=<some value>"
}

variable "sig1_domain_key_cname_value" {
  type        = string
  description = "CNAME value for sig1 domain: sig1.dkim.example.com.at.icloudmailadmin.com."
}

variable "ttl" {
  type        = number
  description = "The TTL to use for the DNS records."
  default     = 3600
}
