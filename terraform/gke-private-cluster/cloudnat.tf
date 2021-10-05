module "cloud-nat" {
  source     = "terraform-google-modules/cloud-nat/google"
  version    = "~> 1.2"
  project_id = "dimzrio-326915"
  region     = "asia-southeast2"
  name       = "dimzrio-k8s-id-cloutnat-1"
  router     = "dimzrio-k8s-id-router-1"
  create_router = true
  network    = "dimzrio-vpc-1"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  depends_on = [ module.gke ]
}