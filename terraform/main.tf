provider "digitalocean" {
    token = "${var.do_token}"
}

terraform {
    required_version = "~>0.11"
    backend "s3" {
        skip_requesting_account_id = true
        skip_credentials_validation = true
        skip_get_ec2_platforms = true
        skip_metadata_api_check = true
        //access_key = ${var.spaces_key}"
        //secret_key = ${var.spaces_secret_key}"
        //endpoint = ${var.endpoint}"
        region = "us-east-1" //this has to be set to an AWS region :()
        //bucket = ${var.space_name}" // name of your space
        //key = ${var.key}"
    }
}
