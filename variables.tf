#
# Environment Variables
#
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

#
# Other Variables
#
variable "vcenter" {
  type = map
  default = {
    dc = "sof2-01-vc08"
    cluster = "sof2-01-vc08c01"
    datastore = "sof2-01-vc08c01-vsan"
    resource_pool = "sof2-01-vc08c01/Resources"
    network = "vxw-dvs-34-virtualwire-3-sid-1080002-sof2-01-vc08-avi-mgmt"
  }
}

variable "ubuntu" {
  default = {
    name = "ubuntuHost"
    cpu = 4
    memory = 8192
    disk = 80
    public_key_path = "~/.ssh/cloudKey.pub"
    private_key_path = "~/.ssh/cloudKey"
    wait_for_guest_net_routable = "false"
    template_name = "ubuntu-bionic-18.04-cloudimg-template"
    username = "ubuntu"
    netplanFile = "/etc/netplan/50-cloud-init.yaml"
    ipCidrMgmt = ["10.41.134.121/22", "10.41.134.122/22", "10.41.134.123/22"]
    defaultGw = "10.41.132.1"
    dns = "10.23.108.1, 10.16.142.111"
  }
}