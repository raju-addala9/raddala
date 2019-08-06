#!/usr/bin/env bash
#Enter Your Tenancy OCID
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaa2ps3chzjosolav3xdpkconxxsypwmztpxidle5pwqhrynz42fhhq"
#Enter Your User OCID
export TF_VAR_user_ocid="ocid1.user.oc1..aaaaaaaataag7idpdf7nfamppg5peeycrevfayucibfx5pnqrmq63yie3jyq"
#Enter Your Fingerprint
export TF_VAR_fingerprint="dd:fc:ba:1c:b4:b9:41:c3:7a:88:4d:75:e6:1b:76:22"
#Enter Your Region (Example: us-ashburn-1)
export TF_VAR_region="us-ashburn-1"
#Enter the Image OCID
export TF_VAR_image_ocid="ocid1.image.oc1.iad.aaaaaaaa5m7pxvywx2isnwon3o3kixkk6gq4tmdtfgvctj7xbl3wgo56uppa"
#Enter Shape for Instance (Example: VM.Standard2.1)
export TF_VAR_instance_shape="VM.Standard2.1"
#Enter Path to Your Private API Key
export TF_VAR_private_key_path="%HOME/.oci/oci_api_key.pem"
#Enter Path to Your Public SSH Key
export TF_VAR_ssh_public_key=$(cat $HOME/.ssh/id_rsa.pub)
#Enter Path to Your Private SSH Key
export TF_VAR_ssh_authorized_private_key=$(cat $HOME/.ssh/id_rsa)