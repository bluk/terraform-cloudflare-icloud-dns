# terraform-cloudflare-icloud-dns

This is an unofficial [Terraform][terraform] module which creates
[Cloudflare DNS][cloudflare] records to setup a domain with
[iCloud+][icloud] custom domains.

Since this is not an official provider and does not have
guarantees about backwards compatibility, it is recommended that
you fork this repository or copy the code into your own repository
after reviewing the code.

## Example Usage

In your Terraform file:

```
module "example_icloud_dns" {
  source  = "bluk/icloud-dns/cloudflare"
  version = "0.1.1"

  zone_id = "1abcd"
  domain_name = "example.com"

  root_domain_apple_domain_txt_value = "apple-domain=abcd1234"
  sig1_domain_key_cname_value = "sig1.dkim.example.com.at.icloudmailadmin.com."

  ttl = 3600

  providers = {
    cloudflare = "cloudflare"
  }
}
```

[terraform]: https://www.terraform.io
[cloudflare]: https://www.cloudflare.com
[icloud]: https://support.apple.com/en-us/HT212514
