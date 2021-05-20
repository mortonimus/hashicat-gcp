module "network" {
  source  = "app.terraform.io/ALIMORTON-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "ali-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "ali-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}